# z/OS JCL Job Repository

This repository contains a collection of JCL (Job Control Language) jobs for z/OS. These jobs can be used for various tasks such as compiling and executing programs, managing datasets, and interacting with subsystems like Db2, MQ, and CICS.

## Table of Contents

- [Usage](#usage)
- [Job Descriptions](#job-descriptions)
- [Contributing](#contributing)
- [Contact](#contact)

## Usage

To use a JCL job from this repository, download or copy the desired JCL file to your z/OS environment. Update any required parameters or dataset names to match your environment and submit the job using your preferred method (e.g., TSO, SDSF, or a job scheduler).

## Job Descriptions

Here is a brief description of each JCL job in this repository:

- `$SDSF`: Issue SDFS commands
- `$VS`: Issue CONSOLE commands
- `ACBJBARD`: Generating data set report from DCOLLECT data
- `AMAPDUPL`: IBM Problem Documentation Upload Utility
- `AMBLIST`: Service aid program to list program objects and load modules
- `ARCSTRST`: DFSMShsm starter set - job #1
- `ARCTOOLS`: DFSMShsm starter set - job #2
- `AVZGNSTF`: DVM Create the sample VSAM file
- `AVZIVVS1`: DVM IVP
- `BFGTRCRS`: MQ FTE fteCreateTransfer
- `BPXBATCH`: BPXBATCH issue omvs commands
- `BPXCLEAN`: Delete a file from ZFS older than 4 number of days
- `BPXPARM`: STDPARM DD for BPXBATCH
- `BZUDUMP`: VTP Playback Dump Utility
- `BZUPLAY`: VTP Play recording from batch/file I/O calls
- `BZUREC`: VTP Record collecting batch/file I/O calls
- `CCBERIS`: COBOL compile and bind with Db2 ERIS
- `CICSCSD`: Define EGUI CICS CSD entry
- `CICSCSDM`: Define CICS CSD entries for multiple applications
- `COBC`: COBOL compile
- `COBCB`: COBOL compile and bind
- `COBCBDB`: COBOL compile and bind with Db2
- `COBCBG`: COBOL compile, bind and go (run)
- `COBCBGDB`: COBOL compile, bind and go (run) with Db2
- `COBCBMQ`: COBOL compile and bind with MQ
- `COBRUN`: COBOL run program
- `COBRUNDB`: COBOL run program with Db2
- `COBSORT`: COBOL with DFSORT
- `CONVERTV`: SMS CONVERTV
- `CRDB2ARC`: COBOL RUN DB2ARCH
- `CRERIS`: COBOL run ERIS utilities
- `CSQLOGP1`: CSQ LOG PRINT
- `CSQLOGP2`: CSQ LOG PRINT commited messages and select specific data
- `CSQUTIL`: MQ CSQ Utility
- `CSQ4BCLR`: GET sample program CSQ4BCL1
- `CSQ4BVJR`: PUT/GET sample programs, CSQ4BCK1/CSQ4BCJ1
- `DCOLLECT`: DCOLLECT collects stored dataset, volume and policy values
- `DFH$ECAT`: copy from DFH540.CICS.SDFHINST
- `DFH$ECNF`: copy from DFH540.CICS.SDFHINST
- `DFSORT`: DFSORT Utility
- `DSNBIND`: Db2 bind utilities for applications
- `DSNREST`: Creating and enabling Db2 native REST services for ZCEE
- `DSNTIJAI`: SQLDI Pseudo Catalog
- `DSNTIJAV`: Db2 authorization validation
- `DSNTIJR2`: Db2 REST services setup - part 2
- `DSNTIJRS`: Enabling Db2 REST services
- `DSNTIJTC`: Db2 trusted context setup
- `DSSCOPY`: Copy dataset(s)
- `DSSDFRAG`: Defrag a volume
- `DSSDIAG`: Check VVR's and Catalog entries for datsets on a volume
- `DSSDUMPF`: DSS Backup at volume level
- `DSSDUMPL`: DSS Backup at logical dataset name
- `DSSMOVE`: Move dataset(s) from volume
- `DSSREST`: DSS Backup restore
- `DVMSQL`: Create sample DB and TB for DVM
- `EREP`: EREP processes logrec data set into reports
- `ERISDBIC`: Db2 full Image Copy on ERIS TS
- `ERISPGM`: COBOL RUN ERIS
- `ERISVSAM`: Create and load PERSON VSAM for ERIS project
- `HBOJBCOL`: CDP z Batch collector
- `HBOJBDC2`: CDP z Batch DCOLLECT processor sending to DATA STREAMER
- `HBOJBDCO`: CDP z Batch DCOLLECT processor
- `HLASM`: Compile and link HLASM
- `ICEGENER`: IEBGENER replacement for VSAM and sequential files
- `ICETOOL`: ZSORT new feature in z15 hardware
- `ICKDSF01`: 3390 Initialize Volume
- `IDCAMCPY`: Copy VSAM data
- `IDCAMDIA`: IDCAMS DIAGNOSE for VSAM diagnostics
- `IDCAMGDG`: Create GDG base
- `IDCAMS`: LISTCAT / DEFINE ALIAS
- `IDCAMSMS`: Define backup SCDS for SMS
- `IDCAMSVS`: Define VSAM dataset with alternate index
- `IDCAMZFS`: Define ZFS dataset and mount on specified directory
- `IEBCOPY`: Copy PDS members
- `IEBDG`: Generate test data
- `IEFBR14`: IEFBR14 testing allocations
- `IFASMFDL`: SMF logstream dump program
- `IFASMFDP`: SMF dataset dump program
- `ISCJCL86`: SCRT Report
- `IXCMIAPU`: Define LOGSTREAM name(IFASMF.SMFALL.S0W1)
- `IZUDUUID`: z/OSMF unique ID generation
- `IZUNASEC`: ZERT RACF
- `JAVA`: IVP Batch Java
- `JES2CKPT`: Create JES2 checkpoint data sets
- `JES2VFY`: Verify JES2 parm
- `JVMJCL17`: Java Virtual Machine JCL for Java 17
- `KMQCBVJ1`: Ansible zForum COBOL GET compile CSQ4BVJ1
- `KMQCBVK1`: Ansible zForum COBOL PUT compile CSQ4BVK1
- `KMQGBVJ1`: Ansible zForum COBOL GET
- `KMQPBVK1`: Ansible zForum COBOL PUT
- `LIKECOPY`: Create a dataset using the attributes for a base dataset
- `LOGREC`: Clear and initialize hardware event recorder dataset
- `MAEKCER2`: Create key ring, CA as default, a personal certificate singed with CA
- `MFAENB`: Multi-Factor Authentication enablement job
- `MFARACF`: Multi-Factor Authentication RACF setup
- `MFAUSER`: Multi-Factor Authentication user setup
- `MORTBIND`: MortgageApplication Db2 BIND
- `MORTCICS`: MortgageApplication CICS CSD
- `OMEGCRT`: OMEGAMON create - STEP 1
- `OMEGDIS`: OMEGAMON discover - STEP 3
- `OMEGGEN`: OMEGAMON generate - STEP 4
- `PICSCALC`: PL/I bit offsets for DVM DFAT EXIT
- `PLIC`: PL/I compile
- `PYTHON`: IVP Batch python
- `RACFCERT`: Create signed personal cert that is attached to a keyring
- `RACFHLQ`: RACF high-level qualifier setup
- `RACFJCLX`: RACF comprehensive security setup
- `RACFSTC`: STC Create USER ID and STARTED profile
- `RACFZCX`: RACF used to implment zCX
- `REXX`: Submit REXX in batch
- `RFNJOBH`: Pull service from IBM and RECEIVE to the GLOBAL ZONE
- `RMFCPU`: RMF post processor CPU utilization
- `SMFZERT`: SMF dump TYPE 119 for zERT reporting
- `SMPACCPT`: SMP/E Accept
- `SMPAPPLY`: SMP/E Apply
- `SMPCRZNA`: SMP/E Create Global Zone
- `SMPCRZNB`: SMP/E Allocates DATA SETS and DDDEF's
- `SMPECDP`: SMP/E CDP installation and configuration
- `SMPHOLD`: SMP/E HOLD listing
- `SMPLIST`: SMP/E List DDDEF definitions in target zone
- `SMPREC`: SMP/E Receive from Shopz Download Director
- `SMPREJTA`: SMP/E Reject once they have been ACCEPTED
- `SMPREJTG`: SMP/E Reject all received-only
- `SMPRPT`: SMP/E Target report for SHOPz
- `SYSLOG`: System log extraction and reporting
- `TERSE`: TERSE Pack and Unpack dataset
- `UJ04501`: UJ04501 zSecure Admin V2.4
- `VSAM`: IDCAMS create VSAM file
- `VSAMAIX`: IDCAMS create alternative index
- `VTAMUSSN`: VTAM USS node definition
- `XMITPACK`: XMIT and TERSE (pack) a load library
- `XMITREST`: TERSE (unpack) and XMIT (receive) a load library

## Contact
If you have any questions or concerns, please open an issue on this repository.