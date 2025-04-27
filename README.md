# z/OS JCL Job Repository

This repository contains a collection of JCL (Job Control Language) jobs for z/OS.  
These jobs cover a wide range of tasks, including compiling programs, managing datasets, and interacting with subsystems like Db2, MQ, and CICS.

## Table of Contents

- [Usage](#usage)  
- [Job Descriptions](#job-descriptions)  
- [Contributing](#contributing)  
- [Contact](#contact)

## Usage

To use a JCL job from this repository:

1. Download or copy the JCL file you need into your z/OS environment.
2. Update any required parameters, dataset names, or user IDs to match your setup.
3. Submit the job through your preferred method (such as TSO, SDSF, or your site’s job scheduler).

## Job Descriptions

Below is a brief description of each JCL job available in this repository:

- `$$DOCJCL` - JCL header documentation block
- `$SDSF` - Issue SDSF commands
- `$VS` - Issue CONSOLE commands
- `ACBJBARD` - Generate dataset report from DCOLLECT data
- `AMAPDUPL` - IBM Problem Documentation Upload Utility
- `AMBLIST` - Information on load and object modules
- `AVZGNSTF` - DVM: Create sample VSAM file
- `AVZIVVS1` - DVM: Installation Verification Procedure (IVP)
- `BFGTRCRS` - MQ FTE: Create file transfer
- `BPXBATCH` - Submit OMVS (UNIX System Services) commands
- `BPXCLEAN` - Delete files from ZFS older than a set number of days
- `BPXPARM` - Standard parameters for BPXBATCH jobs
- `BZUDUMP` - VTP Playback Dump Utility
- `BZUPLAY` - Play recording of batch/file I/O calls
- `BZUREC` - Record batch/file I/O calls
- `CCBERIS` - COBOL compile and bind with Db2 ERIS
- `CICSCSD` - Define base CICS application (CSD entry)
- `COBC` - COBOL compile
- `COBCB` - COBOL compile and bind
- `COBCBDB` - COBOL compile and bind with Db2
- `COBCBG` - COBOL compile, bind, and run
- `COBCBGDB` - COBOL compile, bind, and run with Db2
- `COBCBMQ` - COBOL compile and bind with MQ
- `COBRUN` - Run COBOL program
- `COBRUNDB` - Run COBOL program with Db2
- `COBSORT` - COBOL with DFSORT
- `CONVERTV` - SMS CONVERTV operation
- `CRDB2ARC` - COBOL run program accessing DB2ARCH
- `CSFTKD2` - Create and initialize TKDS VSAM dataset
- `CSQ4BCLR` - MQ sample program: Print queue messages
- `CSQ4BVJR` - MQ sample programs: PUT/GET operations
- `CSQLOGP1` - MQ log print
- `CSQLOGP2` - MQ log print (committed messages and specific selections)
- `CSQUTIL` - MQ CSQ Utility
- `DCOLLECT` - Collect dataset, volume, and policy information
- `DFH$ECAT` - Copy from CICS sample library SDFHINST
- `DFH$ECNF` - Copy from CICS sample library SDFHINST
- `DFSORT` - DFSORT Utility
- `DSNBIND` - Db2 Bind
- `DSNREST` - Create and enable Db2 native REST services
- `DSNTIJAI` - SQL Data Insights (SQLDI) Pseudo Catalog
- `DSNTIJAV` - SQL Data Insights (SQLDI) IVP
- `DSNTIJRS` - Enable Db2 REST services
- `DSNTIJR2` - Enable Db2 REST service versioning
- `DSNTIJTC` - Activate Db2 function level (new catalog level)
- `DSSCOPY` - Copy datasets
- `DSSDFRAG` - Defragment a volume
- `DSSDIAG` - Diagnose VVRs and catalog entries
- `DSSDUMPF` - Volume-level backup
- `DSSDUMPL` - Dataset-level backup
- `DSSMOVE` - Move datasets
- `DSSREST` - Restore datasets
- `DVMSQL` - Create sample DB and table for DVM
- `EREP` - Generate EREP reports from LOGREC data
- `HBOJBCOL` - Collect SMF data for CDP z/Batch
- `HBOJBDCO` - Process DCOLLECT for CDP z/Batch
- `HBOJBDC2` - Send DCOLLECT data to Data Streamer
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
- `IEBCOPY` - Copy PDS members
- `IEBDG` - Generate test data
- `IEFBR14` - Allocate and delete datasets
- `IFASMFDL` - Dump SMF logstreams
- `IFASMFDP` - Validate SMF signature records
- `ISCJCL86` - Generate SCRT report
- `IXCMIAPU` - Define SMF logstream
- `IZUNASEC` - zERT RACF extraction
- `IZUDUUID` - z/OS UUID services
- `JAVA` - Batch Java IVP
- `JES2CKPT` - Create JES2 checkpoint datasets
- `JES2VFY` - Verify JES2 parameter datasets
- `JVMJCL17` - JZOS batch Java job (version 17)
- `KMQCBVJ1` - Ansible z/Forum COBOL GET compile
- `KMQCBVK1` - Ansible z/Forum COBOL PUT compile
- `KMQGBVJ1` - Ansible z/Forum COBOL GET sample
- `KMQPBVK1` - Ansible z/Forum COBOL PUT sample
- `LIKECOPY` - Create dataset from existing attributes
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
- `RACFCERT` - Create signed personal certificate
- `RACFHLQ` - Implement HLQ dataset profiles
- `RACFJCLX` - Implement JCL Expert security rules
- `RACFSTC` - Create started task profiles
- `RACFZCX` - RACF setup for zCX
- `REXX` - Submit REXX execs in batch
- `RFNJOBH` - Pull and RECEIVE service from IBM
- `RMFCPU` - CPU usage post-processor report
- `SMFZERT` - Dump SMF Type 119 records for zERT
- `SMPACCPT` - SMP/E Accept processing
- `SMPAPPLY` - SMP/E Apply processing
- `SMPCRZNA` - SMP/E: Create Global Zone
- `SMPCRZNB` - SMP/E: Allocate datasets and DDDEFs
- `SMPHOLD` - SMP/E list held elements
- `SMPLIST` - SMP/E list DDDEF definitions
- `SMPREC` - SMP/E Receive (Shopz download)
- `SMPREJTA` - SMP/E Reject after Accept
- `SMPREJTG` - SMP/E Reject received-only elements
- `SMPRPT` - SMP/E Target system report
- `SYSLOG` - Dump SYSLOG to a dataset
- `TERSE` - Pack and unpack datasets (AMATERSE)
- `UJ04501` - Install UJ04501 for zSecure Admin V2.4
- `VSAM` - Create VSAM files
- `VSAMAIX` - Create alternate index for VSAM
- `VTAMUSSN` - Assemble and link VTAM USSN table
- `XMITPACK` - XMIT and TERSE a load library
- `XMITREST` - TERSE and RECEIVE a load library

---

## Jobs by Category

| Category          | Examples                                  | Description                                        |
|-------------------|-------------------------------------------|----------------------------------------------------|
| **Compilation**   | `COBC`, `PLIC`, `HLASM`, `JAVA`, `PYTHON`  | Compile COBOL, PL/I, Assembler, Java, and Python programs |
| **Database (Db2)** | `DSNBIND`, `DSNREST`, `COBCBDB`, `COBRUNDB` | Work with Db2 programs, binds, and REST services   |
| **Dataset Management** | `IEBCOPY`, `DSSCOPY`, `IDCAMS`, `LIKECOPY` | Copy, move, define, and manage datasets            |
| **MQ Operations** | `CSQUTIL`, `CSQLOGP1`, `BFGTRCRS`          | Work with IBM MQ queues and logs                  |
| **Security (RACF & Certificates)** | `RACFCERT`, `RACFHLQ`, `MAKECER2`, `MFAUSER` | Manage certificates, RACF profiles, and MFA       |
| **System Utilities** | `BPXBATCH`, `ICEGENER`, `TERSE`, `SYSLOG` | Submit UNIX commands, copy datasets, manage logs  |
| **SMP/E Operations** | `SMPACCPT`, `SMPAPPLY`, `SMPRPT`, `SMPREC` | SMP/E software installation and maintenance tasks |
| **Backup and Restore** | `DSSDUMPF`, `DSSREST`, `SMFZERT`       | Backup and restore datasets and logs              |
| **CICS Setup**    | `CICSCSD`, `DFH$ECAT`, `DFH$ECNF`          | Define and configure CICS environments            |
| **OMEGAMON Setup** | `OMEGCRT`, `OMEGDIS`, `OMEGGEN`           | Setup for OMEGAMON monitoring tools                |
| **VSAM Management** | `VSAM`, `VSAMAIX`, `IDCAMCPY`             | Create and manage VSAM datasets                   |
| **Other Special Tasks** | `EREP`, `RMFCPU`, `RFNJOBH`             | SMF reporting, performance monitoring, and maintenance |

---

## Contributing

We welcome contributions!  
If you have useful JCL jobs or improvements, feel free to open a pull request.

## Contact

If you have any questions, issues, or suggestions, please open an issue on this repository.

