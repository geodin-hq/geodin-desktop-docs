#!/usr/bin/env bash
# check-editorial-policy.sh
# Informational checks for editorial-policy rules that are mechanically
# greppable (2026-07-23): canonical product names, pricing claims, competitor
# blocklist. Judgment cases exist for each, so this runs informational, not
# required - findings are reviewed, not auto-blocked.
#
#   1. Canonical names: "GeoDin Desktop" / "GeoDin Core" must not appear in
#      prose (canonical name is "GeoDin"). Frozen pages are exempt and listed
#      in scripts/editorial-frozen-paths.txt.
#   2. Pricing: no prices, discount numbers, or inclusion/cost claims.
#   3. Competitors: Bordiem, Bentley, OpenGround never; gINT only in files
#      listed in scripts/competitor-allowlist.txt (RX-gint: the gINT
#      Converter feature and migration-from-gINT contexts).
#
# Usage: scripts/check-editorial-policy.sh [content-root]   (default public/en)

set -uo pipefail

ROOT="${1:-public/en}"
DIR="$(dirname "$0")"
findings=0

report() { echo "$1"; findings=$((findings + 1)); }

is_listed() { # $1=file $2=listfile
  [ -f "$2" ] && grep -Fxq "$1" "$2"
}

while IFS= read -r -d '' f; do
  # 1. canonical names (skip frozen paths)
  if ! is_listed "$f" "$DIR/editorial-frozen-paths.txt"; then
    hits=$(grep -nE "GeoDin (Desktop|Core)" "$f" || true)
    [ -n "$hits" ] && report "CANONICAL-NAME $f: $(echo "$hits" | head -3 | tr '\n' ' ')"
  fi
  # 2. pricing claims
  hits=$(grep -inE "no additional cost|free of charge|discount(ed)? price|per (seat|user|device) per (month|year)|(EUR|USD) ?[0-9]" "$f" || true)
  [ -n "$hits" ] && report "PRICING $f: $(echo "$hits" | head -3 | tr '\n' ' ')"
  # 3. competitors
  hits=$(grep -nE "Bordiem|Bentley|OpenGround" "$f" || true)
  [ -n "$hits" ] && report "COMPETITOR $f: $(echo "$hits" | head -3 | tr '\n' ' ')"
  if ! is_listed "$f" "$DIR/competitor-allowlist.txt"; then
    hits=$(grep -n "gINT" "$f" || true)
    [ -n "$hits" ] && report "COMPETITOR(gINT outside allowlist) $f: $(echo "$hits" | head -3 | tr '\n' ' ')"
  fi
done < <(find "$ROOT" -name '*.md' -print0)

if [ "$findings" -gt 0 ]; then
  echo
  echo "$findings editorial-policy finding(s). Judgment applies - review against"
  echo "the internal editorial policy (canonical names, no pricing, RX-gint)."
  exit 1
fi
echo "OK: no editorial-policy findings under $ROOT."
