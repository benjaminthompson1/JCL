# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository overview

A personal collection of 157 JCL (Job Control Language) templates for z/OS batch jobs. There are no build, test, or lint commands — this is a reference library. Members are copied into a z/OS environment, customised for local dataset names and HLQs, and submitted as batch jobs after removing `TYPRUN=HOLD`.

## File conventions

All members live in `CNTL/` with no file extension (z/OS naming: max 8 characters, uppercase). Two index members serve as documentation:
- `$$DOCJCL` — authoritative style reference (job card format, header block, step separators)
- `$$README` — categorised index of all 157 members

## Documentation standard

Every member must follow this header structure exactly:

```jcl
//IUxxxxx JOB (FB3),'Short title',CLASS=A,MSGCLASS=H,
//        NOTIFY=&SYSUID,REGION=0M,TIME=1440
//*       TYPRUN=HOLD
//*--------------------------------------------------------------------*
//* JOB:   IUxxxxx
//* DESC:  Purpose in sentence case (single-step jobs)
//*        One continuation line per step (multi-step jobs)
//* STEPS: 1-STEP1, 2-STEP2  (multi-step jobs only; omit otherwise)
//* AUTH:  Name               DATE: YYYY-MM-DD
//* NOTE:  Key prerequisite or caution in sentence case
//*--------------------------------------------------------------------*
```

Multi-step jobs use step separator comments between steps. Trailing dashes align the closing `*` to column 72:

```jcl
//*-- 1: STEP DESCRIPTION ------------------------------------*
```

All jobs end with:

```jcl
//*--------------------------------------------------------------------*
//* End of Job
//*--------------------------------------------------------------------*
```

**Step-level block comments (`//*-- N: ...`) are read-only authored documentation — never alter them.**

## Member naming prefixes

Prefixes indicate the functional area:

| Prefix | Area |
|---|---|
| `COBC*`, `COBRUN*`, `COBSORT` | COBOL compilation / execution |
| `DSN*` | Db2 / SQL Data Insights |
| `CSQ*`, `KMQ*` | MQ (CICS Message Queue) |
| `DFH*`, `CICS*` | CICS |
| `EQA*` | z/OS Debugger |
| `IDCAM*`, `VSAM*` | VSAM / catalog management (IDCAMS) |
| `DSS*`, `RESSCOPY*`, `CONVERTV` | DFSMSdss backup and restore |
| `SMP*`, `RFNJOBH` | SMP/E software maintenance |
| `RACF*`, `MAKECER2`, `MFA*` | RACF security and certificates |
| `HB*`, `AVZ*` | IBM Z Common Data Provider / DVM |
| `BPX*` | USS / BPXBATCH |

## Tooling

The repository uses **IBM Z Open Editor** (VS Code extension) configured via `zapp.yaml`. This provides JCL syntax highlighting and validation against the library search paths defined in that file.
