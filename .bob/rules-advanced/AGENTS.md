# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Advanced Mode Rules (Non-Obvious Only)

- **Members have NO file extensions** — z/OS naming: max 8 chars, uppercase only (e.g., `CNTL/COBC`, not `COBC.jcl`)
- **Step separator comments are read-only** — Never modify `//*-- N: STEP DESCRIPTION` lines; they're authored documentation
- **Column 72 alignment is mandatory** — Step separator trailing dashes must align closing `*` to column 72 exactly
- **TYPRUN=HOLD stays commented** — Jobs ship with `//*       TYPRUN=HOLD`; never uncomment (users do this when ready)
- **DESC field format depends on step count** — Single-step: one line. Multi-step: one continuation line per step
- **STEPS field only for multi-step jobs** — Omit entirely for single-step jobs (not "STEPS: 1-STEPNAME")
- **Job names must use IU prefix** — All job cards start `//IUxxxxx JOB` (not generic names like `//MYJOB`)
- **GOPGM symbolic parameter pattern** — COBOL jobs use `GOPGM=` in EXEC statement; referenced in DD statements as `&GOPGM`
- **End-of-job footer is mandatory** — All jobs must end with 3-line footer block (see `CNTL/$$DOCJCL`)
- **No subdirectories in CNTL/** — Flat structure only; all 157+ members at top level
- **Dataset names are placeholders** — All `IBMUSER.*` and `DSND10.*` references are site-specific examples
- **DB2 subsystem is hardcoded** — `DSN SYSTEM(DBDG)` must match target environment
- **REGION=0M is standard** — Use unlimited region size unless specific constraints apply
- **Multi-step jobs use EXEC procname** — e.g., `EXEC IGYQCB`, not inline `PGM=` statements
- **Access to MCP and Browser tools** — Use when researching z/OS documentation or testing web interfaces