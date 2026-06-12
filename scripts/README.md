# Docs Lint Scripts

Hygiene checks for the docs repo. Run locally before opening a PR; CI runs them on every PR.

## `check-duplication.sh`

Fails if the same `<!-- src: transcript/... -->` attribution appears in more than one `.md` file.

Each transcript section is a single source of truth. Duplicates mean auto-assembled content was copy-pasted into multiple destinations — the bug that produced the original `data-collection/import/` mess.

```bash
./scripts/check-duplication.sh           # defaults to public/
./scripts/check-duplication.sh public/en # narrow scope
```

## `check-stubs.sh`

Fails if any `.md` page has fewer than 10 lines of real content (frontmatter, blank lines, and HTML comments excluded). Intentional landing pages can be allowlisted in `stub-allowlist.txt`.

```bash
./scripts/check-stubs.sh
MIN_LINES=20 ./scripts/check-stubs.sh   # raise the bar
```

## `check-asset-integrity.sh`

Fails if an existing `.gitbook/assets/` image's **content** changes, or a pinned asset disappears — the silent-swap failure mode. GitBook keeps every image in one flat folder with generic names (`image (N).png`, `N_Screen.jpg`); a GitBook→git sync can re-point an existing filename at different bytes while leaving the page markdown untouched (commit `ce308ef` / "GITBOOK-86" did exactly this to 20 screenshots, unnoticed for ~2 months). Every asset is pinned by sha256 in `asset-manifest.sha256`. New uploads are allowed and only reported; mutating an existing file is what fails.

```bash
./scripts/check-asset-integrity.sh           # verify against the manifest (CI)
./scripts/check-asset-integrity.sh --update   # regenerate after an intended change
ROOT=public/en ./scripts/check-asset-integrity.sh   # narrow scope
```

On a legitimate change (new screenshot for a step, GitBook re-export): review the flagged files, then run `--update` and commit the refreshed `asset-manifest.sha256` in the same PR. Because GitBook syncs *into* this repo, the `push: main` trigger (no path filter) is what surfaces a sync-introduced swap — it can't block an already-pushed commit, but it turns a months-long silent corruption into a red check within minutes.

## `check-text-similarity.py`

Informational audit: finds **near-duplicate pages** and **repeated paragraph blocks** that don't share a `<!-- src: -->` marker (so the marker-based linter can't catch them). 5-word word-shingles + Jaccard, page-level AND block-level, with `difflib.SequenceMatcher.ratio()` as a secondary verify on top candidates. Stdlib only.

Writes a markdown report — defaults to stdout, point `--output` at a path to capture it (the convention is `~/GitHub/geodin-docs-internal/AUDIT-text-similarity.md`, alongside the existing `AUDIT-import-duplication.md`).

```bash
python3 scripts/check-text-similarity.py public/en
python3 scripts/check-text-similarity.py public/en --output ~/GitHub/geodin-docs-internal/AUDIT-text-similarity.md
python3 scripts/check-text-similarity.py public/en --page-threshold 0.70 --block-threshold 0.85 --quiet
```

Defaults: page Jaccard ≥ 0.55, block Jaccard ≥ 0.75 with ≥ 40 normalized tokens. Skips pages with fewer than 60 normalized tokens (those are stubs — `check-stubs.sh`'s job).

**Not wired into CI** — text similarity isn't a binary defect; a 0.62 page-level score isn't *wrong*, it's a candidate for human review. Run on-demand when you suspect duplication has crept in, or after a bulk content addition.

## CI

`check-asset-integrity.sh`, `check-duplication.sh`, and `check-stubs.sh` run via `.github/workflows/docs-lint.yml`. `check-asset-integrity.sh` and `check-duplication.sh` are required; `check-stubs.sh` is informational. The asset check also runs on every push to `main` (no path filter) so GitBook sync commits are caught. `check-text-similarity.py` is not in CI — it's a local audit tool.
