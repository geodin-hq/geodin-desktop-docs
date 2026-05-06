# Audit — Duplicated Auto-Assembled Content in `geodin-desktop-docs`

**Date:** 2026-05-06
**Scope:** `public/en/` — focus on `data-collection/import/`, but pattern is repo-wide.
**Status:** For review. No files changed.

---

## 1. What is happening

A single transcript, `transcript/data-import-migration`, has had its sections copied verbatim across multiple destination pages. Same paragraphs, same `src:` attribution, different filenames.

### Concrete evidence — `data-import-migration` sections

| Source section | Pages it appears in (count) |
|---|---|
| `cpt-data-sequence-import-gef-ascii-custom-filters` | 4 — `import.md`, `ags-import.md`, `csv-and-excel-import.md`, `geodin-ml-import.md` |
| `gint-migration-layer-data-import-gap` | 4 — same 4 pages |
| `csv-excel-import` | 3 — `import.md`, `csv-and-excel-import.md`, `geodin-ml-import.md` (also in `ags-import.md`) |
| `batch-import-workflow-general-samples-measurements` | 3 — same set |
| `excel-export-as-import-template-source` | 3 — same set |

Result: `geodin-ml-import.md` (titled "GeoDinML Import") contains 7 sections, only 2 of which are about GeoDinML. The other 5 are general import topics that are **also** present in 2-3 sibling pages.

`csv-and-excel-import.md` is **entirely** duplicated content — it has no page-specific section at all.

### Topic pages that overlap (heading map)

```
                    Batch  CSV/Excel  CPT  Excel-tpl  gINT-gap  AGS-fmt  GeoDin-ML
ags-import.md         ✓       ✓       ✓      ✓         ✓         ✓         —
csv-and-excel.md      ✓       ✓       ✓      ✓         ✓         —         —
cpt-data-seq.md       —       —       ✓      —         ✓         —         ✓ (misfiled)
geodin-ml-import.md   ✓       ✓       ✓      ✓         ✓         —         ✓
```

### Other empty stubs (2-line files, no real content)

`general-data.md`, `measurement-data.md`, `sample-data.md`, `special-imports.md`, `special-imports/README.md`, `special-imports/ags.md`.

### Repo-wide signal

The duplication is not confined to the import folder. Same pattern detected via `src:` tag frequency:

- `transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml` — referenced **72 times** across the repo
- `transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters` — **55**
- `transcript/data-model-architecture#layer-stratigraphy-model` — **54**
- `transcript/user-management-permissions#multi-user-collaboration-on-shared-databases` — **30**

Pages with ≥3 sections drawn from a single transcript exist in `reporting/`, `user-management/`, `data-visualization/layouts/`, `navigating-the-geodin-workspace/concepts/`, and elsewhere. The import folder is the most concentrated case but not the only one.

### Pages **not** affected (curated, not auto-assembled)

- `import/data-sequences.md` — has its own structure, no `src:` tags
- `import/sep3-exchange-database.md` — clean tutorial
- `import/cross-database-object-copying.md` — mostly clean, 1-2 transcript refs
- `import/special-imports/import-geodinml.md` — clean step-by-step (Round 3 commit)

---

## 2. Why it happened

Per `git log`, the duplicated content entered the repo in commit `a484fc7 "Copied from geodin-docs with help of Nuno"`, sourced from snapshot `4359fca` of `fugro/geodin-desktop`. **This predates the current `/geodin-source-to-docs` skill.** It is bootstrap content from an earlier pipeline (likely the retired `/geodin-transcript-to-docs` or hand-driven LLM generation against the docs scaffold).

The mechanical cause is clear from the structure:

1. **Topic-by-page generation, no global view.** The pipeline generated each destination page independently (`ags-import.md`, `csv-and-excel-import.md`, `geodin-ml-import.md`). Each prompt was given the same transcript as input and asked to produce a topic page. Each invocation included the same general sections because they're "relevant background" — but no invocation knew what the others had produced.

2. **No canonical-home rule.** There was no upfront map saying "section *X* of transcript *Y* lives in exactly one destination page." So the same atomic fact got placed in 3-4 pages.

3. **No dedup post-pass.** After bulk generation, nothing checked whether the same `src:` reference appeared in multiple files. The `src:` comments are explicitly machine-readable — they would have caught this in seconds.

4. **Title/scope mismatch was not validated.** A page named "GeoDinML Import" containing 5 non-GeoDinML sections would have been flagged by even a minimal review pass. None happened.

5. **Empty stubs went uncaught.** Six 2-line stub files were committed alongside the over-stuffed pages — a sign that bulk generation succeeded for some scaffolded pages and silently failed for others.

In short: the bootstrap was a fire-and-forget LLM run with no global plan and no audit step.

---

## 3. How to prevent it in future augmentation

These rules apply to **any** future bulk content generation against the docs repos, including the current `/geodin-source-to-docs` skill.

### Hard rules

1. **One `src:` reference → one canonical page.** Each `transcript/<name>#<section>` may appear in exactly one `.md` file in the repo. Cross-references to it use links, not duplication.
2. **Canonical-home registry before generation.** Before any bulk run, produce a registry: `transcript/<name>#<section> → public/en/<path>`. Generation reads from the registry; nothing gets placed without an entry.
3. **Page-title-vs-content scope check.** Every generated page must have ≥80% of its sections topically aligned with the page title. Pages failing this gate are rejected, not committed.
4. **No silent stubs.** A generated page with <50 lines of content is flagged. Either fill it from the source or don't create it.

### Mechanical checks (cheap to automate)

5. **Duplication linter.** A script (or pre-commit hook) that fails if any `src: ` token appears in more than one file:
   ```bash
   grep -rh 'src: ' public/en/ | grep -oE 'src: [^ ]+' | sort | uniq -c | awk '$1>1 {print; exit 1}'
   ```
6. **Stub linter.** Any `.md` under `public/en/` with `<10` non-empty content lines must either be in an allowlist (intentional landing pages) or be deleted.
7. **Orphan-section linter.** Every transcript section reachable from `~/GeoDin AI Knowledge/...transcript-knowledge/` should have at least one `src:` tag pointing to it somewhere in the docs repo. Surfaces gaps, not just duplicates.

### Process rules for `/geodin-source-to-docs`

8. **Pre-flight: dump current `src:` map.** Before proposing edits, the skill loads the current dedup-checked map and refuses to add a `src:` reference that already exists elsewhere — instead it links to the existing location.
9. **Per-product PR plan must show "where each fact lands."** The current per-product gap analysis already maps source excerpt → target page. Add a column: "is this fact already documented elsewhere?" If yes, the action is "link" not "add."
10. **Post-flight diff audit.** After applying changes on a branch, run rules 5-7 on the diff. Block PR creation if any rule fires.

### Editorial / content rules

11. **Auto-assembled content carries an explicit banner.** The current pages have `<!-- Content status: Auto-assembled -->` HTML comments. Promote this to a visible front-matter flag (`status: draft-auto-assembled`) so it's surfaced in build output and reviewers can't miss it.
12. **Editorial sweep is a release gate, not a backlog item.** Auto-assembled content does not ship to GitBook live until reviewed. Currently these pages are live.

---

## 4. Recommended remediation for the import folder

Out of scope for this audit, but to give shape to the fix:

- **Delete or merge:** `csv-and-excel-import.md` (entirely duplicate), `cpt-data-sequences.md` (mostly off-topic), the 6 empty stubs.
- **Shrink:** `geodin-ml-import.md` to its 2 GeoDinML-specific sections only; redirect or delete the rest.
- **Promote:** `special-imports/import-geodinml.md` (clean tutorial) to be the primary GeoDinML page; the reference content sits above it as a short "About GeoDinML" intro, single page.
- **Keep as-is:** `data-sequences.md`, `sep3-exchange-database.md`, `cross-database-object-copying.md`.
- **Move:** the misfiled "GeoDin ML field-to-office" section in `cpt-data-sequences.md` → `geodin-ml-import.md`.

This would shrink the `import/` folder from 13 files to ~6, with no information loss.

---

## 5. Severity

This is a credibility issue, not a data issue. Every fact in these pages is sourced from real transcripts and is technically accurate. The problem is **organisation, not correctness**: a reader visiting "GeoDinML Import" gets a wall of unrelated import content; a reader visiting "CSV and Excel Import" gets the exact same wall. That looks unprofessional and undermines trust before the reader gets to the parts that are actually good (the curated tutorials).

The fix is not a rewrite — it's a redistribution + dedup pass, plus the rules above to prevent recurrence.
