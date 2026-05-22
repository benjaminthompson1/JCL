# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Ask Mode Rules (Non-Obvious Only)

- **This is a reference library, not executable code** — No build/test/lint commands; members are copied to z/OS and customized
- **Two index members are authoritative** — `CNTL/$$DOCJCL` (style reference), `CNTL/$$README` (categorized index of 157 members)
- **Members have NO file extensions** — z/OS naming convention: max 8 chars, uppercase only (e.g., `CNTL/COBC`)
- **CNTL/ is flat structure** — No subdirectories; all 157+ members at top level
- **Dataset names are site-specific placeholders** — All `IBMUSER.*` and `DSND10.*` references must be customized for target environment
- **Member naming prefixes indicate functional area** — `COBC*`=COBOL, `DSN*`=DB2, `CSQ*/KMQ*`=MQ, `DFH*/CICS*`=CICS, `SMP*`=SMP/E, etc.
- **TYPRUN=HOLD prevents accidental submission** — All jobs ship with `//*       TYPRUN=HOLD` commented; users remove when ready
- **Step separators are authored documentation** — `//*-- N: STEP DESCRIPTION` lines are read-only, not generated
- **Column 72 alignment is mandatory** — Step separator trailing dashes must align closing `*` to column 72 exactly
- **Header format varies by step count** — Single-step: DESC is one line. Multi-step: DESC has continuation lines, STEPS field present
- **GOPGM symbolic parameter is COBOL-specific** — Used in EXEC and DD statements to reference program name
- **DB2 subsystem names are hardcoded** — `DSN SYSTEM(DBDG)` appears throughout; must match target environment
- **IBM Z Open Editor provides validation** — `zapp.yaml` configures syntax highlighting but searches all folders (inefficient)