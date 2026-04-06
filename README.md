# z/OS JCL Job Repository

This repository contains a personal collection of JCL (Job Control Language) jobs for z/OS.
These jobs cover a wide range of tasks including compiling programs, managing datasets, and
working with subsystems like Db2, MQ, CICS, and USS.

## Usage

1. Copy the JCL member you need into your z/OS environment.
2. Update dataset names, HLQs, and user IDs to match your setup.
3. Submit via TSO, SDSF, or your site's job scheduler.

## Job Descriptions

- `$$DOCJCL` - JCL header documentation block
- `$SDSF` - Issue SDSF commands in batch
- `$VS` - Issue z/OS console commands
- `ACBJBARD` - Generate dataset report from DCOLLECT data
- `AMAPDUPL` - IBM Problem Documentation Upload Utility
- `AMBLIST` - Display information on load and object modules
- `AVZBINDD` - Bind AVZ Server Db2 packages for DRDA connections
- `AVZGNSTF` - DVM: Create sample VSAM file
- `AVZIVVS1` - DVM: Installation Verification Procedure
- `AVZRADB2` - RACF permissions for DVM access to Db2 resources
- `BPXBATCH` - Submit OMVS (UNIX System Services) commands in batch
- `BPXCLEAN` - Delete files from ZFS older than a set number of days
- `BPXPARM` - Standard parameters DD for BPXBATCH jobs
- `BZUDUMP` - VTP Playback Dump Utility
- `BZUPLAY` - Play recording of batch/file I/O calls
- `BZUREC` - Record batch/file I/O calls
- `CICSCSD` - Define base CICS application (CSD entry)
- `COBC` - COBOL compile
- `COBCB` - COBOL compile and bind
- `COBCBDB` - COBOL compile and bind with Db2
- `COBCBG` - COBOL compile, bind, and run
- `COBCBGDB` - COBOL compile, bind, and run with Db2
- `COBCBMQ` - COBOL compile and bind with MQ
- `COBRUN` - Run COBOL program
- `COBRUNDB` - Run COBOL program with Db2
- `COBRUNGH` - Run COBOL program (alternate execution template)
- `COBSORT` - COBOL program execution with DFSORT
- `CONVERTV` - SMS CONVERTV operation
- `CRDB2ARC` - COBOL run program accessing DB2ARCH
- `CSFTKDS` - Initialize TKDS and recreate ICSF key datasets
- `CSQ4BCLR` - MQ sample program: print messages from queue
- `CSQ4BVJR` - MQ sample programs: PUT/GET operations
- `CSQLOGP1` - MQ log print
- `CSQLOGP2` - MQ log print (committed messages and specific selections)
- `CSQUTIL` - MQ CSQ Utility
- `CXPS0200` - JCL Expert: scan a single JCL member
- `CXPS0201` - JCL Expert: scan an entire JCL library
- `DCATTEST` - Create a temporary dataset and verify catalog access using DCAT
- `DCOLLECT` - Collect dataset, volume, and policy information
- `DFH$ECAT` - Copy from CICS sample library SDFHINST
- `DFH$ECNF` - Copy from CICS sample library SDFHINST
- `DFHAUX` - Format CICS auxiliary temporary storage datasets
- `DFSORT` - DFSORT Utility
- `DSNBIND` - Db2 Bind
- `DSNREST` - Create and enable Db2 native REST services
- `DSNTIJAI` - SQL Data Insights (SQLDI) Pseudo Catalog
- `DSNTIJAV` - SQL Data Insights (SQLDI) IVP
- `DSNTIJR2` - Enable Db2 REST service versioning
- `DSNTIJRS` - Enable Db2 REST services
- `DSNTIJTC` - Activate Db2 function level (new catalog level)
- `DSSBCKUP` - DSS incremental VSAM backup
- `DSSCOPY` - Copy datasets
- `DSSDFRAG` - Defragment a volume
- `DSSDIAG` - Diagnose VVRs and catalog entries
- `DSSDUMPF` - Volume-level backup
- `DSSDUMPL` - Dataset-level backup
- `DSSMOVE` - Move datasets
- `DSSREST` - Restore datasets
- `DVMSQL` - Create sample database and table for DVM
- `EQAPRFSU` - z/OS Debugger: configure Debug Profile Service
- `EQARMTSU` - z/OS Debugger: configure Remote Debug Service
- `EQAWCCSD` - z/OS Debugger: define CICS programs and transactions
- `EQAWCRVS` - z/OS Debugger: create VSAM file for DTCN debug profiles
- `EQAWISVC` - z/OS Debugger: install SVCs in running z/OS
- `EQAWIVCT` - z/OS Debugger: Dynamic Debug and COBOL TEST CICS IVP
- `EQAWIVPT` - z/OS Debugger: Dynamic Debug and COBOL TEST batch IVP
- `EREP` - Generate EREP reports from LOGREC data
- `GBQALTRC` - DFSMS Cloud Data Manager: define trace datasets
- `GBQSEND` - DFSMS Cloud Data Manager: send datasets to the cloud
- `GDKUTIL` - Upload, list, and download z/OS datasets to S3 storage
- `HBOJBCOL` - Collect SMF data for CDP z/Batch
- `HBOJBDC2` - Send DCOLLECT data to Data Streamer
- `HBOJBDCO` - Process DCOLLECT for CDP z/Batch
- `HBOMKFS` - Create and mount IBM Z Common Data Provider file system
- `HBOMKWK` - Create IBM Z Common Data Provider working directories
- `HBORACF` - RACF setup for IBM Z Common Data Provider
- `HLASM` - Assemble and link using HLASM
- `ICEGENER` - IEBGENER replacement for VSAM and sequential files
- `ICETOOL` - Advanced DFSORT operations
- `ICKDSF01` - Initialize 3390 DASD volume
- `IDCAMCPY` - Copy VSAM datasets
- `IDCAMDIA` - Diagnose VTOC and catalogs
- `IDCAMGDG` - Create GDG base
- `IDCAMS` - List and define aliases
- `IDCAMSMS` - Define backup SCDS for SMS
- `IDCAMSVS` - Define VSAM with alternate index
- `IDCAMZFS` - Define and mount ZFS datasets
- `IEBCOPY` - Copy PDS/PDSE members
- `IEBDG` - Generate test data
- `IEBUPDTE` - Copy members from source PDS/PDSE to new library
- `IEFBR14` - Allocate and delete datasets
- `IFASMFDL` - Dump SMF logstreams
- `IFASMFDP` - Validate SMF signature records
- `IPCS` - Interactive Problem Control System
- `IPCSVSAM` - IPCS for VSAM analysis
- `ISCJCL86` - Generate SCRT report
- `IXCMIAPU` - Define SMF logstream
- `IZUDUUID` - z/OS UUID services
- `IZUNASEC` - zERT RACF extraction
- `JES2CKPT` - Create JES2 checkpoint datasets
- `JES2VFY` - Verify JES2 parameter datasets
- `JVMJCL17` - JZOS batch Java job (version 17)
- `KMQCBVJ1` - Ansible z/Forum COBOL GET compile
- `KMQCBVK1` - Ansible z/Forum COBOL PUT compile
- `KMQGBVJ1` - Ansible z/Forum COBOL GET sample
- `KMQPBVK1` - Ansible z/Forum COBOL PUT sample
- `LIKECOPY` - Create dataset using attributes of an existing dataset
- `LOGREC` - Clear and initialize hardware event logs
- `MAKECER2` - Create and manage digital certificates
- `MFAENB` - Enable MFA users
- `MFARACF` - Create MFA definitions in RACF
- `MFAUSER` - Create MFA-enabled TSO users
- `OMEGCRT` - OMEGAMON create - Step 1
- `OMEGDIS` - OMEGAMON discover - Step 3
- `OMEGGEN` - OMEGAMON generate - Step 4
- `PICSCALC` - PL/I bit offsets for DVM DFAT exit
- `PLIC` - PL/I compile
- `PYTHON` - Batch Python IVP
- `QWTRACF` - RACF setup for QWT (groups, users, STCs, and certificates)
- `RACFCERT` - Create signed personal certificate on keyring
- `RACFHLQ` - Implement HLQ dataset profiles in RACF
- `RACFJCLX` - Implement JCL Expert security rules
- `RACFSTC` - Create started task profiles
- `RACFZCX` - RACF setup for zCX
- `RESCOPYX` - Clone GOLDEN images to IPL RESVOL volumes using DFSMSdss
- `RESCOPYY` - Clone GOLDEN images to IPL RESVOL volumes using DFSMSdss
- `REXX` - Submit REXX execs in batch
- `REXXC` - Run compiled REXX exec in batch
- `REXXCOMP` - Compile REXX exec using the REXX compiler
- `RFNJOBH` - Pull and RECEIVE service from IBM
- `RMFCPU` - CPU usage post-processor report
- `SMFZERT` - Dump SMF Type 119 records for zERT
- `SMPACCPT` - SMP/E Accept processing
- `SMPAPPLY` - SMP/E Apply processing
- `SMPCOMP` - SMP/E Compare Target and Distribution Zones
- `SMPCRZNA` - SMP/E: Create Global Zone
- `SMPCRZNB` - SMP/E: Allocate datasets and DDDEFs
- `SMPHOLD` - SMP/E list held elements
- `SMPLIST` - SMP/E list DDDEF definitions
- `SMPREC` - SMP/E Receive (Shopz download)
- `SMPREJTA` - SMP/E Reject after Accept
- `SMPREJTG` - SMP/E Reject received-only elements
- `SMPREST` - SMP/E Restore
- `SMPRPT` - SMP/E Target system report
- `SYSLOG` - Dump SYSLOG to a dataset
- `TERSE` - Pack and unpack datasets (AMATERSE)
- `UJ04501` - Install UJ04501 for zSecure Admin V2.4
- `VSAM` - Create VSAM files
- `VSAMAIX` - Create alternate index for VSAM
- `VTAMUSSN` - Assemble and link VTAM USSN table
- `XMITPACK` - XMIT and TERSE a load library
- `XMITREST` - TERSE unpack and RECEIVE a load library

---

## Jobs by Category

| Category | Members |
|---|---|
| **Compilation** | `COBC`, `COBCB`, `COBCBG`, `PLIC`, `HLASM`, `REXX`, `REXXC`, `REXXCOMP`, `JVMJCL17`, `PYTHON` |
| **Database (Db2 & DVM)** | `DSNBIND`, `DSNREST`, `COBCBDB`, `COBRUNDB`, `AVZBINDD`, `AVZRADB2`, `DVMSQL` |
| **Dataset Management** | `IEBCOPY`, `DSSCOPY`, `DSSBCKUP`, `IDCAMS`, `LIKECOPY`, `RESCOPYX`, `RESCOPYY`, `DCATTEST` |
| **MQ Operations** | `CSQUTIL`, `CSQ4BCLR`, `CSQ4BVJR`, `CSQLOGP1`, `CSQLOGP2` |
| **Security (RACF & Certs)** | `RACFCERT`, `RACFHLQ`, `RACFSTC`, `MAKECER2`, `MFAUSER`, `QWTRACF`, `CSFTKDS` |
| **SMP/E** | `SMPACCPT`, `SMPAPPLY`, `SMPCOMP`, `SMPREC`, `SMPRPT`, `SMPREST` |
| **Backup & Restore** | `DSSDUMPF`, `DSSDUMPL`, `DSSBCKUP`, `DSSREST`, `SMFZERT` |
| **System & Monitoring** | `SYSLOG`, `RMFCPU`, `EREP`, `IPCS`, `IFASMFDL`, `OMEGCRT`, `OMEGDIS`, `OMEGGEN` |
| **CICS** | `CICSCSD`, `DFH$ECAT`, `DFH$ECNF`, `DFHAUX` |
| **z/OS Debugger** | `EQAPRFSU`, `EQARMTSU`, `EQAWCCSD`, `EQAWCRVS`, `EQAWISVC`, `EQAWIVCT`, `EQAWIVPT` |
| **USS** | `BPXBATCH`, `BPXCLEAN`, `BPXPARM` |
| **Utilities** | `DFSORT`, `ICETOOL`, `ICEGENER`, `TERSE`, `XMITPACK`, `XMITREST` |
| **Cloud & Storage** | `GBQALTRC`, `GBQSEND`, `GDKUTIL` |
