# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Critical Non-Obvious Rules

- **Members have NO file extensions** — z/OS naming: max 8 chars, uppercase only (e.g., `CNTL/COBC`, not `COBC.jcl`)
- **Step separator comments are read-only documentation** — Never alter `//*-- N: STEP DESCRIPTION` lines; they're authored content, not generated
- **Column 72 alignment is mandatory** — Trailing dashes in step separators must align closing `*` to column 72 exactly
- **TYPRUN=HOLD is commented by default** — Jobs ship with `//*       TYPRUN=HOLD` to prevent accidental submission; users remove comment when ready
- **Header DESC field has two formats** — Single-step jobs: one line. Multi-step jobs: one continuation line per step description
- **STEPS field only for multi-step jobs** — Omit entirely for single-step jobs (not "STEPS: 1-STEPNAME")
- **Job names use IU prefix** — All job cards start `//IUxxxxx JOB` (not generic names)
- **CNTL/ directory contains all members** — No subdirectories; flat structure with 157+ members
- **Two index members serve as documentation** — `$$DOCJCL` (style reference), `$$README` (categorized index)
- **IBM Z Open Editor validation** — `zapp.yaml` configures syntax highlighting; searches all local folders (inefficient but functional)
- **No build/test/lint commands** — This is a reference library; members are copied to z/OS, customized, and submitted
- **Dataset names are site-specific** — All `IBMUSER.*` and `DSND10.*` references must be updated for target environment
- **REGION=0M is standard** — All jobs use `REGION=0M` (unlimited region size) unless specific constraints apply
- **Multi-step jobs use EXEC procname** — e.g., `EXEC IGYQCB` (compile+bind), not inline PGM= statements
- **DB2 subsystem names are hardcoded** — `DSN SYSTEM(DBDG)` appears in DB2 jobs; must match target subsystem
- **GOPGM symbolic parameter pattern** — COBOL jobs use `GOPGM=` to specify program name; appears in EXEC and DD statements
- **End-of-job footer is mandatory** — All jobs must end with the 3-line footer block (see `$$DOCJCL`)