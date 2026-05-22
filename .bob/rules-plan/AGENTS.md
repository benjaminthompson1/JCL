# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Plan Mode Rules (Non-Obvious Only)

- **This is a reference library, not a development project** — No build pipeline, testing framework, or deployment process
- **Members are templates, not production code** — All dataset names (`IBMUSER.*`, `DSND10.*`) are placeholders requiring site customization
- **Flat structure is intentional** — CNTL/ contains 157+ members with no subdirectories; z/OS PDS convention
- **Two documentation members are authoritative** — `$$DOCJCL` (style guide), `$$README` (categorized index)
- **Member naming follows z/OS conventions** — Max 8 chars, uppercase, no extensions (e.g., `COBC` not `COBC.jcl`)
- **Functional prefixes indicate job category** — `COBC*`=COBOL, `DSN*`=DB2, `CSQ*/KMQ*`=MQ, `DFH*`=CICS, `SMP*`=SMP/E, `RACF*`=security
- **Step separators are authored documentation** — `//*-- N: STEP DESCRIPTION` lines must never be auto-generated or modified
- **Header format depends on job complexity** — Single-step: DESC one line, no STEPS field. Multi-step: DESC continuation lines, STEPS field required
- **TYPRUN=HOLD is safety mechanism** — All jobs ship commented to prevent accidental submission; users uncomment when ready
- **Column 72 alignment is mandatory** — Step separator trailing dashes must align closing `*` to column 72 exactly
- **GOPGM symbolic parameter is COBOL pattern** — Used in EXEC and DD statements to reference program name dynamically
- **DB2 subsystem names are environment-specific** — `DSN SYSTEM(DBDG)` hardcoded throughout; must match target subsystem
- **REGION=0M is standard** — All jobs use unlimited region size unless specific constraints apply
- **Multi-step jobs use cataloged procedures** — e.g., `EXEC IGYQCB` (compile+bind), not inline `PGM=` statements
- **End-of-job footer is mandatory** — All jobs must end with 3-line footer block (see `$$DOCJCL`)