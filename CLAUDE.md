# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository overview

A personal z/OS JCL library with ~156 job members in `CNTL/`. All members are plain-text JCL stored as fixed-block 80-column records (FB 80). There are no build scripts, linters, or test runners — changes are validated by review against the documented standards.

## Editing JCL members

### Header block (mandatory, fixed format)

Every member must open with this exact structure — field order and capitalisation are enforced:

```
//IUxxxxx JOB (FB3),'Short title',CLASS=A,MSGCLASS=H,
//        NOTIFY=&SYSUID,REGION=0M,TIME=1440
//*       TYPRUN=HOLD
//*--------------------------------------------------------------------*
//* JOB:   IUxxxxx
//* DESC:  Purpose in sentence case
//* STEPS: 1-STEP1, 2-STEP2          (multi-step jobs only — omit otherwise)
//* AUTH:  Name               DATE: YYYY-MM-DD
//* NOTE:  Key prerequisite or caution
//*--------------------------------------------------------------------*
```

- `TYPRUN=HOLD` stays commented out — never remove the comment marker.
- `STEPS:` line is omitted for single-step jobs.
- `DESC:` continuation lines are allowed; each starts with `//*        ` (9 spaces after `//*`).

### Column 72 rule

All separator lines — both the header block borders and step separators — must end with `*` at **column 72** exactly. Count from 1.

Separator with no label (72 chars total):
```
//*--------------------------------------------------------------------*
```
That is `//*` (3) + 68 dashes + `*` = 72.

Step separator (fill dashes to reach col 72):
```
//*-- 1: STEP DESCRIPTION ----------------------------------------*
```

### Step-level block comments

`//* STEP N: description` block comments are authored documentation — treat them as read-only. Do not alter wording, capitalisation, or punctuation unless the user explicitly asks to change a step comment.

### Footer (mandatory)

Every member ends with:
```
//*--------------------------------------------------------------------*
//* End of Job
//*--------------------------------------------------------------------*
```

### Symbolic parameters

- `#prefix` — placeholders the user must replace before submitting (e.g., `#globalzone`, `#hlq`).
- `&variable` — JCL symbolic variables resolved at execution time (e.g., `&SYSUID`, `&CSI`).

Do not convert `#` placeholders to `&` variables or vice versa.

## Key conventions

- Job names: `IU` prefix + up to 6 uppercase characters (8-char JCL limit).
- Standard JOB card parameters: `CLASS=A,MSGCLASS=H,REGION=0M,TIME=1440`. Deviations exist for specific utilities (e.g., `REGION=1024K` for HLASM, `REGION=4M` for BPXBATCH) — match the existing value in the member being edited.
- Dataset naming: hierarchical qualifiers with meaningful suffixes (`.SOURCE`, `.LOAD`, `.OBJECT`, `.DBRMLIB`, etc.).
- DISP patterns: `SHR` for existing datasets, `(NEW,CATLG,DELETE)` for new allocations, `(MOD,DELETE)` for cleanup.

## Style reference

`CNTL/$$DOCJCL` is the authoritative style reference for header blocks and separators. When in doubt, open it and follow exactly.
