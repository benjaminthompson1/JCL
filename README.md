# z/OS JCL Job Repository

A personal collection of JCL (Job Control Language) jobs for z/OS, covering
compilation, dataset management, DB2, MQ, CICS, SMP/E, security, and USS.

## Usage

1. Copy the member you need into your z/OS environment.
2. Review the `NOTE:` field in the header block for prerequisites.
3. Update dataset names, HLQs, and symbolic parameters to match your site.
4. Remove `TYPRUN=HOLD` from the JOB card comment when ready to submit.

## Documentation standard

Each member follows a consistent header block format:

```
//IUxxxxx JOB (FB3),'Short title',CLASS=A,MSGCLASS=H,
//        NOTIFY=&SYSUID,REGION=0M,TIME=1440
//*       TYPRUN=HOLD
//*--------------------------------------------------------------------*
//* JOB:   IUxxxxx
//* DESC:  Purpose in sentence case
//* STEPS: 1-STEP1, 2-STEP2  (multi-step jobs only)
//* AUTH:  Name               DATE: YYYY-MM-DD
//* NOTE:  Key prerequisite or caution
//*--------------------------------------------------------------------*
```

See `$$DOCJCL` for the full style reference.

---

## Job Descriptions

- `$$DOCJCL` - JCL documentation standard — header block and style reference
- `$SDSF` - Browse and search the JES spool using SDSF in batch
- `$VS` - Issue z/OS console commands
- `ACBJBARD` - Generate a dataset capacity report from DCOLLECT data
- `AMAPDUPL` - Upload problem documentation to IBM using AMAPDUPL
- `AMBLIST` - List load module attributes and cross-references
- `AVZBINDD` - Bind IBM Z Common Data Provider DB2 packages for DRDA access
- `AVZGNSTF` - Create the DVM sample staff VSAM dataset
- `AVZIVVS1` - Run the IBM Z Common Data Provider IVP
- `AVZRADB2` - Grant RACF access to DB2 resources for IBM Z Common Data Provider
- `BPXBATCH` - Run USS shell commands in batch via BPXBATCH
- `BPXCLEAN` - Delete ZFS files older than 4 days to free space
- `BPXPARM` - Standard STDPARM parameters for BPXBATCH jobs
- `BZUDUMP` - Dump a Visual Test Platform recording to a dataset
- `BZUPLAY` - Play back a Visual Test Platform recording in batch
- `BZUREC` - Record batch file I/O using Visual Test Platform
- `CICSCSD` - Define a CICS application program entry in the CSD
- `COBC` - Compile a COBOL source program
- `COBCB` - Compile a COBOL program and link-edit the load module
- `COBCBDB` - Compile a COBOL/DB2 program and bind the package and plan
- `COBCBG` - Compile, link-edit, and run a COBOL program in one step
- `COBCBGDB` - Compile a COBOL/DB2 program, bind the plan, and run it
- `COBCBMQ` - Compile a COBOL program and link-edit with MQ libraries
- `COBRUN` - Run a compiled COBOL load module
- `COBRUNDB` - Run a compiled COBOL program under DB2
- `COBRUNGH` - Run a COBOL load module (alternate template)
- `COBSORT` - Sort input data then compile and run a COBOL program
- `CONVERTV` - Convert a volume to or from SMS management using ADRDSSU
- `CRDB2ARC` - Run the DB2 archive log utility in TSO batch
- `CSFTKDS` - Define and initialise the ICSF TKDS, PKDS, and CKDS datasets
- `CSQ4BCLR` - Read and clear messages from an MQ queue using CSQ4BCL1
- `CSQ4BVJR` - Put sample messages to an MQ queue using CSQ4BVK1
- `CSQLOGP1` - Print the MQ active log using CSQ1LOGP
- `CSQLOGP2` - Print and sort committed messages from the MQ active log
- `CSQUTIL` - Run MQ utility commands against a queue manager
- `CXPS0200` - Scan a single JCL member for errors using JCL Expert
- `CXPS0201` - Scan an entire JCL library for errors using JCL Expert
- `DCATTEST` - Create a test dataset and verify distributed catalog access
- `DCOLLECT` - Collect dataset and volume data using IDCAMS DCOLLECT
- `DFH$ECAT` - Define and populate the CICS extended catalog VSAM dataset
- `DFH$ECNF` - Define and populate the CICS extended configuration VSAM dataset
- `DFHAUX` - Format CICS auxiliary temporary storage datasets
- `DFSORT` - Sort or merge datasets using DFSORT
- `DSNBIND` - Bind a DB2 package and plan, then grant execute authority
- `DSNREST` - Enable DB2 native REST services
- `DSNTIJAI` - Create the SQL Data Insights pseudo-catalog database
- `DSNTIJAV` - Run the SQL Data Insights IVP
- `DSNTIJR2` - Enable DB2 REST service versioning
- `DSNTIJRS` - Enable DB2 native REST services (initial setup)
- `DSNTIJTC` - Activate a new DB2 function level
- `DSSBCKUP` - Incremental VSAM backup using DFSMSdss
- `DSSCOPY` - Copy datasets to a target volume using DFSMSdss
- `DSSDFRAG` - Defragment a DASD volume using DFSMSdss
- `DSSDIAG` - Diagnose VTOC and catalog entries using DFSMSdss
- `DSSDUMPF` - Full DASD volume backup using DFSMSdss
- `DSSDUMPL` - Logical dataset backup using DFSMSdss
- `DSSMOVE` - Move datasets to a target volume using DFSMSdss
- `DSSREST` - Restore a DFSMSdss backup
- `DVMSQL` - Create DVM sample DB2 tables, views, and bind plans
- `EQAPRFSU` - Configure the z/OS Debugger debug profile service
- `EQARMTSU` - Configure the z/OS Debugger remote debug service
- `EQAWCCSD` - Define z/OS Debugger programs in the CICS CSD
- `EQAWCRVS` - Create the VSAM file for z/OS Debugger DTCN debug profiles
- `EQAWISVC` - Install z/OS Debugger SVCs into a running z/OS system
- `EQAWIVCT` - z/OS Debugger COBOL TEST CICS IVP (compile and bind)
- `EQAWIVPT` - z/OS Debugger COBOL TEST batch IVP (compile, bind, and run)
- `EREP` - Print hardware error event records using IFCEREP1
- `GBQALTRC` - Allocate IBM Z DFSMS Cloud Data Manager trace datasets
- `GBQSEND` - Send datasets to cloud storage via IBM Z DFSMS CDM
- `GDKUTIL` - Upload, list, and download z/OS datasets to S3 storage
- `HBOJBCOL` - Collect SMF data using the IBM Z Common Data Provider
- `HBOJBDC2` - Process DCOLLECT data and stream to the CDP Z receiver
- `HBOJBDCO` - Process DCOLLECT records using the CDP Z batch processor
- `HBOMKFS` - Create and mount the IBM Z Common Data Provider filesystem
- `HBOMKWK` - Create IBM Z Common Data Provider working directories
- `HBORACF` - Define RACF profiles for IBM Z Common Data Provider
- `HLASM` - Assemble and link-edit an HLASM source program
- `ICEGENER` - Copy a dataset or PDS member using ICEGENER
- `ICETOOL` - Sort, merge, or transform datasets using ICETOOL
- `ICKDSF01` - Initialize a DASD volume using ICKDSF
- `IDCAMCPY` - Copy a dataset using IDCAMS REPRO
- `IDCAMDIA` - Diagnose VTOC and catalog entries using IDCAMS
- `IDCAMGDG` - Define or delete a GDG base entry using IDCAMS
- `IDCAMS` - Manage VSAM datasets and catalogs using IDCAMS
- `IDCAMSMS` - Define or alter SMS constructs using IDCAMS
- `IDCAMSVS` - Define a VSAM cluster with an alternate index
- `IDCAMZFS` - Create, format, and mount a zFS dataset
- `IEBCOPY` - Copy or compress a PDS or PDSE using IEBCOPY
- `IEBDG` - Generate structured test data using IEBDG
- `IEBUPDTE` - Create or update PDS members using IEBUPDTE
- `IEFBR14` - Allocate or delete datasets using IEFBR14
- `IFASMFDL` - Define an SMF logstream using IFASMFDL
- `IFASMFDP` - Dump SMF records from a logstream to a flat dataset
- `IPCS` - Analyse a system dump using IPCS in TSO batch
- `IPCSVSAM` - Allocate VSAM datasets required for IPCS dump analysis
- `ISCJCL86` - Generate a Sub-Capacity Reporting Tool (SCRT) report
- `IXCMIAPU` - Define a sysplex couple dataset using IXCMIAPU
- `IZUDUUID` - Apply SMP/E usermod to enable z/OSMF UUID support
- `IZUNASEC` - Define RACF security profiles for z/OSMF
- `JES2CKPT` - Create JES2 checkpoint datasets
- `JES2VFY` - Verify JES2 parm syntax in test mode
- `JVMJCL17` - Run a Java application using JZOS JVM launcher (v17)
- `KMQCBVJ1` - Compile and link the MQ CSQ4BVJ1 get-messages sample
- `KMQCBVK1` - Compile and link the MQ CSQ4BVK1 put-messages sample
- `KMQGBVJ1` - Get and print messages from an MQ queue using CSQ4BVJ1
- `KMQPBVK1` - Put sample messages to an MQ queue using CSQ4BVK1
- `LIKECOPY` - Allocate a dataset using attributes from an existing one
- `LOGREC` - Print and clear the hardware event recorder (LOGREC)
- `MAKECER2` - Create and manage RACF digital certificates and keyrings
- `MFAENB` - Enable MFA authentication for existing RACF users
- `MFARACF` - Create RACF definitions for the MFA server STC
- `MFAUSER` - Create and configure MFA-enabled RACF users
- `OMEGCRT` - Create an OMEGAMON configuration
- `OMEGDIS` - Discover OMEGAMON resources
- `OMEGGEN` - Generate OMEGAMON configuration members
- `PICSCALC` - Calculate PIC S field sizes using a REXX exec
- `PLIC` - Compile a PL/I source program
- `PYTHON` - Run a Python script in batch using TSO
- `QWTRACF` - Define RACF profiles for QWT performance monitoring
- `RACFCERT` - Create and manage digital certificates using RACF
- `RACFHLQ` - Define RACF dataset profiles for high-level qualifiers
- `RACFJCLX` - Define RACF profiles and permissions for JCL Expert
- `RACFSTC` - Define a RACF userid and started task security profile
- `RACFZCX` - Define RACF permissions for IBM Z Container Extensions
- `RESCOPYX` - Restore a DFSMSdss backup to the original volume
- `RESCOPYY` - Restore a DFSMSdss backup to an alternate volume
- `REXX` - Run an interpreted REXX exec from a PDS in batch
- `REXXC` - Run a compiled REXX exec in batch
- `REXXCOMP` - Compile a REXX exec and save to the CEXEC library
- `RFNJOBH` - Pull an SMP/E service package from IBM and receive it
- `RMFCPU` - Post-process RMF CPU utilisation data
- `SMFZERT` - Dump SMF type 119 records for zERT analysis
- `SMPACCPT` - SMP/E ACCEPT SYSMODs into the distribution zone
- `SMPAPPLY` - SMP/E APPLY SYSMODs to the target system
- `SMPCOMP` - SMP/E compare target and distribution zones
- `SMPCRZNA` - SMP/E: create the global zone CSI
- `SMPCRZNB` - SMP/E: allocate datasets and define DDDEFs
- `SMPHOLD` - SMP/E report on held elements
- `SMPLIST` - SMP/E list DDDEF definitions
- `SMPREC` - SMP/E RECEIVE SYSMODs from a ShopZ download
- `SMPREJTA` - SMP/E REJECT accepted SYSMODs from the distribution zone
- `SMPREJTG` - SMP/E REJECT received-only SYSMODs from the global zone
- `SMPREST` - SMP/E RESTORE applied SYSMODs from the target system
- `SMPRPT` - SMP/E target system report
- `SYSLOG` - Dump the JES syslog to a sequential dataset
- `TERSE` - Pack or unpack a dataset using AMATERSE
- `UJ04501` - Allocate zSecure customisation datasets and define DDDEFs
- `VSAM` - Create a VSAM KSDS cluster using IDCAMS
- `VSAMAIX` - Create a VSAM KSDS cluster with an alternate index
- `VTAMUSSN` - Assemble and link-edit a VTAM USS message table
- `XMITPACK` - Pack and transmit a PDS using AMATERSE and TSO XMIT
- `XMITREST` - Unpack and receive a transmitted PDS

---

## Jobs by Category

| Category | Members |
|---|---|
| **COBOL compilation** | `COBC`, `COBCB`, `COBCBG`, `COBCBDB`, `COBCBGDB`, `COBCBMQ` |
| **COBOL execution** | `COBRUN`, `COBRUNDB`, `COBRUNGH`, `COBSORT` |
| **Other compilation** | `PLIC`, `HLASM`, `REXXCOMP` |
| **REXX, Java & Python** | `REXX`, `REXXC`, `JVMJCL17`, `PYTHON` |
| **Db2 & SQL Data Insights** | `DSNBIND`, `DSNREST`, `DSNTIJRS`, `DSNTIJR2`, `DSNTIJAI`, `DSNTIJAV`, `DSNTIJTC`, `CRDB2ARC` |
| **DVM** | `AVZBINDD`, `AVZIVVS1`, `AVZGNSTF`, `AVZRADB2`, `DVMSQL` |
| **MQ** | `CSQUTIL`, `CSQ4BCLR`, `CSQ4BVJR`, `CSQLOGP1`, `CSQLOGP2`, `KMQCBVJ1`, `KMQCBVK1`, `KMQGBVJ1`, `KMQPBVK1` |
| **CICS** | `CICSCSD`, `DFH$ECAT`, `DFH$ECNF`, `DFHAUX` |
| **z/OS Debugger** | `EQAPRFSU`, `EQARMTSU`, `EQAWCCSD`, `EQAWCRVS`, `EQAWISVC`, `EQAWIVCT`, `EQAWIVPT` |
| **Dataset management** | `IDCAMS`, `IDCAMCPY`, `IDCAMGDG`, `IDCAMSVS`, `IDCAMZFS`, `IDCAMSMS`, `IDCAMDIA`, `VSAM`, `VSAMAIX`, `IEBCOPY`, `IEBDG`, `IEBUPDTE`, `IEFBR14`, `LIKECOPY`, `DCOLLECT`, `DCATTEST` |
| **Dataset utilities** | `DFSORT`, `ICEGENER`, `ICETOOL`, `TERSE`, `XMITPACK`, `XMITREST`, `AMBLIST` |
| **DFSMSdss** | `DSSCOPY`, `DSSBCKUP`, `DSSDUMPF`, `DSSDUMPL`, `DSSDFRAG`, `DSSDIAG`, `DSSMOVE`, `DSSREST`, `RESCOPYX`, `RESCOPYY`, `CONVERTV` |
| **SMF & logging** | `IFASMFDL`, `IFASMFDP`, `IXCMIAPU`, `SYSLOG`, `SMFZERT` |
| **RACF & certificates** | `RACFCERT`, `RACFHLQ`, `RACFJCLX`, `RACFSTC`, `RACFZCX`, `MAKECER2`, `QWTRACF`, `CSFTKDS`, `IZUNASEC` |
| **MFA** | `MFAENB`, `MFARACF`, `MFAUSER` |
| **SMP/E** | `SMPCRZNA`, `SMPCRZNB`, `SMPACCPT`, `SMPAPPLY`, `SMPREC`, `SMPHOLD`, `SMPLIST`, `SMPCOMP`, `SMPREJTA`, `SMPREJTG`, `SMPREST`, `SMPRPT`, `RFNJOBH`, `IZUDUUID` |
| **System & monitoring** | `RMFCPU`, `EREP`, `LOGREC`, `IPCS`, `IPCSVSAM`, `OMEGCRT`, `OMEGDIS`, `OMEGGEN` |
| **IBM Z CDP** | `HBOJBCOL`, `HBOJBDC2`, `HBOJBDCO`, `HBOMKFS`, `HBOMKWK`, `HBORACF` |
| **Cloud & S3** | `GDKUTIL`, `GBQALTRC`, `GBQSEND` |
| **JES2** | `JES2CKPT`, `JES2VFY` |
| **USS** | `BPXBATCH`, `BPXCLEAN` |
| **VTP** | `BZUDUMP`, `BZUPLAY`, `BZUREC` |
| **JCL Expert** | `CXPS0200`, `CXPS0201` |
| **Miscellaneous** | `AMAPDUPL`, `ICKDSF01`, `ISCJCL86`, `PICSCALC`, `VTAMUSSN`, `UJ04501`, `ACBJBARD` |
