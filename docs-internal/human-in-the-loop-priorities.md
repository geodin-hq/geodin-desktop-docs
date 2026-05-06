# Human-in-the-Loop Priorities

Working list of docs items that the dedup PR could not resolve because they need human input — a Loom recording, an editorial decision, or original content. Ordered by priority.

Owner: Nuno (with Rik as reviewer / merger).

---

## Priority 1 — Topics we deleted that still need a home

### Leapfrog export

- **Status:** `data-collection/export/leapfrog.md` was a 1-line stub. Deleted in the dedup PR.
- **Why deleted:** no Leapfrog content exists in transcripts, help, or any source the auto-assembler reached.
- **Real action:** record a Loom walking through the Leapfrog export workflow in GeoDin (project setup → export trigger → format options → file landing in Leapfrog Geo). Once recorded, we transcribe, polish, and re-create the page at `data-collection/export/leapfrog-export.md` (consistent with the new naming pattern from the export folder cleanup), and add a new SUMMARY entry under **Exporting Data**.

---

## Priority 2 — Empty stubs still live in SUMMARY

These 1-line files are referenced in `public/en/SUMMARY.md`, so they render as empty pages on docs.geodin.com. Each needs either content (Loom + write-up) or removal from SUMMARY + file delete. The stub linter currently runs as informational; once these are addressed, promote it to required.

| File | Current state | Suggested action |
|---|---|---|
| `filtering-data/create-queries.md` | 1 line | Loom: building a query in the Object Manager, then write |
| `filtering-data/create-groups.md` | 1 line | Loom: groups vs. queries, drag-and-drop into a group |
| `filtering-data/create-system-queries.md` | 1 line | Editorial: clarify if "system query" is still a thing or merge into create-queries |
| `data-visualization/cross-section.md` | 1 line | Editorial: this is a duplicate landing — consider removing in favour of `data-visualization/cross-sections/creating-cross-sections.md` |
| `data-visualization/maps.md` | 1 line | Editorial: same as above — likely supersede with `maps-and-site-plans.md` |
| `plug-ins-and-tools/installing-plug-ins.md` | 1 line | Loom: installing a plug-in, then write |
| `support/troubleshooting.md` | 1 line | Convert to landing: short intro + index of the troubleshooting subpages that already exist |
| `support/changelog.md` | 2 lines | Either fill (recent versions) or remove from SUMMARY |
| `support/updating-and-upgrading/page-1.md` | 1 line | Suspicious filename — likely orphaned. Remove from SUMMARY + delete |
| `navigating-the-geodin-workspace/object-types/g1-location.md` | 1 line | Loom: G1 object type tour, then write |
| `support/updating-and-upgrading/README.md` | 1 line | Remove (redundant with `support/updating-and-upgrading.md`) |
| `support/troubleshooting/README.md` | 1 line | Remove (redundant with `support/troubleshooting.md`) |

---

## Priority 3 — Auto-bullet pages that work but read as bullet dumps

These pages are functional and unambiguous — the dedup linter is clean, the SUMMARY links work — but the content is still in raw "auto-assembled bullet" style. A polish pass (intro sentence, prose flow, hint blocks where appropriate) would meaningfully lift them.

- `user-management/database-visibility.md`
- `user-management/data-privacy-and-ownership.md`
- `user-management/groups-and-permissions.md`
- `data-collection/import/ags-import.md` (touched in dedup PR but still bullet-style)
- `data-collection/import/csv-and-excel-import.md` (touched in dedup PR but still bullet-style)

These four are also currently allowlisted in `scripts/stub-allowlist.txt` because they're under the 10-line stub threshold. Polish would clear them off the allowlist.

---

## Priority 4 — Loom-friendly procedural topics

Pages where the docs are correct but a screencast would improve user comprehension significantly. Each is a step-by-step procedure that benefits from showing rather than telling.

| Page | Suggested Loom |
|---|---|
| `data-collection/export/ags-export.md` | AGS 4.x export end-to-end — Publish & Export → AGS-format → TRAN fields → Execute |
| `reporting/cross-section-reports.md` | Cross-section workflow — selecting boreholes → defining line of section → scenarios |
| `data-collection/import/data-sequences.md` | CPT import — free-format vs. GEF, reduce factor in action, batch import at Objects level |
| `reporting/bulk-print-and-pdf-export.md` | Multi-borehole PDF export with the three export modes side-by-side |

(*GeoDinML Import already has a YouTube embed — no Loom needed.*)

---

## What this list is not

- Not a backlog of features. Only items where docs need human input.
- Not a backlog of bugs. The dedup linter prevents reintroduction of the original problem; it does not fix product issues.
- Not a delivery plan. Priority order is editorial impact, not effort or sequencing — Nuno picks the order.
