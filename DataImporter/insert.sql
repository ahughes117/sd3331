DROP TABLE IF EXISTS `kdd98`; 

CREATE TABLE IF NOT EXISTS `kdd98` ( 
`ID` INT NOT NULL AUTO_INCREMENT, 
 `ODATEDW` VARCHAR(10) NULL, 
 `OSOURCE` VARCHAR(10) NULL, 
 `TCODE` VARCHAR(10) NULL, 
 `STATE` VARCHAR(10) NULL, 
 `ZIP` VARCHAR(10) NULL, 
 `MAILCODE` VARCHAR(10) NULL, 
 `PVASTATE` VARCHAR(10) NULL, 
 `DOB` VARCHAR(10) NULL, 
 `NOEXCH` VARCHAR(10) NULL, 
 `RECINHSE` VARCHAR(10) NULL, 
 `RECP3` VARCHAR(10) NULL, 
 `RECPGVG` VARCHAR(10) NULL, 
 `RECSWEEP` VARCHAR(10) NULL, 
 `MDMAUD` VARCHAR(10) NULL, 
 `DOMAIN` VARCHAR(10) NULL, 
 `CLUSTER` VARCHAR(10) NULL, 
 `AGE` VARCHAR(10) NULL, 
 `AGEFLAG` VARCHAR(10) NULL, 
 `HOMEOWNR` VARCHAR(10) NULL, 
 `CHILD03` VARCHAR(10) NULL, 
 `CHILD07` VARCHAR(10) NULL, 
 `CHILD12` VARCHAR(10) NULL, 
 `CHILD18` VARCHAR(10) NULL, 
 `NUMCHLD` VARCHAR(10) NULL, 
 `INCOME` VARCHAR(10) NULL, 
 `GENDER` VARCHAR(10) NULL, 
 `WEALTH1` VARCHAR(10) NULL, 
 `HIT` VARCHAR(10) NULL, 
 `MBCRAFT` VARCHAR(10) NULL, 
 `MBGARDEN` VARCHAR(10) NULL, 
 `MBBOOKS` VARCHAR(10) NULL, 
 `MBCOLECT` VARCHAR(10) NULL, 
 `MAGFAML` VARCHAR(10) NULL, 
 `MAGFEM` VARCHAR(10) NULL, 
 `MAGMALE` VARCHAR(10) NULL, 
 `PUBGARDN` VARCHAR(10) NULL, 
 `PUBCULIN` VARCHAR(10) NULL, 
 `PUBHLTH` VARCHAR(10) NULL, 
 `PUBDOITY` VARCHAR(10) NULL, 
 `PUBNEWFN` VARCHAR(10) NULL, 
 `PUBPHOTO` VARCHAR(10) NULL, 
 `PUBOPP` VARCHAR(10) NULL, 
 `DATASRCE` VARCHAR(10) NULL, 
 `MALEMILI` VARCHAR(10) NULL, 
 `MALEVET` VARCHAR(10) NULL, 
 `VIETVETS` VARCHAR(10) NULL, 
 `WWIIVETS` VARCHAR(10) NULL, 
 `LOCALGOV` VARCHAR(10) NULL, 
 `STATEGOV` VARCHAR(10) NULL, 
 `FEDGOV` VARCHAR(10) NULL, 
 `SOLP3` VARCHAR(10) NULL, 
 `SOLIH` VARCHAR(10) NULL, 
 `MAJOR` VARCHAR(10) NULL, 
 `WEALTH2` VARCHAR(10) NULL, 
 `GEOCODE` VARCHAR(10) NULL, 
 `COLLECT1` VARCHAR(10) NULL, 
 `VETERANS` VARCHAR(10) NULL, 
 `BIBLE` VARCHAR(10) NULL, 
 `CATLG` VARCHAR(10) NULL, 
 `HOMEE` VARCHAR(10) NULL, 
 `PETS` VARCHAR(10) NULL, 
 `CDPLAY` VARCHAR(10) NULL, 
 `STEREO` VARCHAR(10) NULL, 
 `PCOWNERS` VARCHAR(10) NULL, 
 `PHOTO` VARCHAR(10) NULL, 
 `CRAFTS` VARCHAR(10) NULL, 
 `FISHER` VARCHAR(10) NULL, 
 `GARDENIN` VARCHAR(10) NULL, 
 `BOATS` VARCHAR(10) NULL, 
 `WALKER` VARCHAR(10) NULL, 
 `KIDSTUFF` VARCHAR(10) NULL, 
 `CARDS` VARCHAR(10) NULL, 
 `PLATES` VARCHAR(10) NULL, 
 `LIFESRC` VARCHAR(10) NULL, 
 `PEPSTRFL` VARCHAR(10) NULL, 
 `POP901` VARCHAR(10) NULL, 
 `POP902` VARCHAR(10) NULL, 
 `POP903` VARCHAR(10) NULL, 
 `POP90C1` VARCHAR(10) NULL, 
 `POP90C2` VARCHAR(10) NULL, 
 `POP90C3` VARCHAR(10) NULL, 
 `POP90C4` VARCHAR(10) NULL, 
 `POP90C5` VARCHAR(10) NULL, 
 `ETH1` VARCHAR(10) NULL, 
 `ETH2` VARCHAR(10) NULL, 
 `ETH3` VARCHAR(10) NULL, 
 `ETH4` VARCHAR(10) NULL, 
 `ETH5` VARCHAR(10) NULL, 
 `ETH6` VARCHAR(10) NULL, 
 `ETH7` VARCHAR(10) NULL, 
 `ETH8` VARCHAR(10) NULL, 
 `ETH9` VARCHAR(10) NULL, 
 `ETH10` VARCHAR(10) NULL, 
 `ETH11` VARCHAR(10) NULL, 
 `ETH12` VARCHAR(10) NULL, 
 `ETH13` VARCHAR(10) NULL, 
 `ETH14` VARCHAR(10) NULL, 
 `ETH15` VARCHAR(10) NULL, 
 `ETH16` VARCHAR(10) NULL, 
 `AGE901` VARCHAR(10) NULL, 
 `AGE902` VARCHAR(10) NULL, 
 `AGE903` VARCHAR(10) NULL, 
 `AGE904` VARCHAR(10) NULL, 
 `AGE905` VARCHAR(10) NULL, 
 `AGE906` VARCHAR(10) NULL, 
 `AGE907` VARCHAR(10) NULL, 
 `CHIL1` VARCHAR(10) NULL, 
 `CHIL2` VARCHAR(10) NULL, 
 `CHIL3` VARCHAR(10) NULL, 
 `AGEC1` VARCHAR(10) NULL, 
 `AGEC2` VARCHAR(10) NULL, 
 `AGEC3` VARCHAR(10) NULL, 
 `AGEC4` VARCHAR(10) NULL, 
 `AGEC5` VARCHAR(10) NULL, 
 `AGEC6` VARCHAR(10) NULL, 
 `AGEC7` VARCHAR(10) NULL, 
 `CHILC1` VARCHAR(10) NULL, 
 `CHILC2` VARCHAR(10) NULL, 
 `CHILC3` VARCHAR(10) NULL, 
 `CHILC4` VARCHAR(10) NULL, 
 `CHILC5` VARCHAR(10) NULL, 
 `HHAGE1` VARCHAR(10) NULL, 
 `HHAGE2` VARCHAR(10) NULL, 
 `HHAGE3` VARCHAR(10) NULL, 
 `HHN1` VARCHAR(10) NULL, 
 `HHN2` VARCHAR(10) NULL, 
 `HHN3` VARCHAR(10) NULL, 
 `HHN4` VARCHAR(10) NULL, 
 `HHN5` VARCHAR(10) NULL, 
 `HHN6` VARCHAR(10) NULL, 
 `MARR1` VARCHAR(10) NULL, 
 `MARR2` VARCHAR(10) NULL, 
 `MARR3` VARCHAR(10) NULL, 
 `MARR4` VARCHAR(10) NULL, 
 `HHP1` VARCHAR(10) NULL, 
 `HHP2` VARCHAR(10) NULL, 
 `DW1` VARCHAR(10) NULL, 
 `DW2` VARCHAR(10) NULL, 
 `DW3` VARCHAR(10) NULL, 
 `DW4` VARCHAR(10) NULL, 
 `DW5` VARCHAR(10) NULL, 
 `DW6` VARCHAR(10) NULL, 
 `DW7` VARCHAR(10) NULL, 
 `DW8` VARCHAR(10) NULL, 
 `DW9` VARCHAR(10) NULL, 
 `HV1` VARCHAR(10) NULL, 
 `HV2` VARCHAR(10) NULL, 
 `HV3` VARCHAR(10) NULL, 
 `HV4` VARCHAR(10) NULL, 
 `HU1` VARCHAR(10) NULL, 
 `HU2` VARCHAR(10) NULL, 
 `HU3` VARCHAR(10) NULL, 
 `HU4` VARCHAR(10) NULL, 
 `HU5` VARCHAR(10) NULL, 
 `HHD1` VARCHAR(10) NULL, 
 `HHD2` VARCHAR(10) NULL, 
 `HHD3` VARCHAR(10) NULL, 
 `HHD4` VARCHAR(10) NULL, 
 `HHD5` VARCHAR(10) NULL, 
 `HHD6` VARCHAR(10) NULL, 
 `HHD7` VARCHAR(10) NULL, 
 `HHD8` VARCHAR(10) NULL, 
 `HHD9` VARCHAR(10) NULL, 
 `HHD10` VARCHAR(10) NULL, 
 `HHD11` VARCHAR(10) NULL, 
 `HHD12` VARCHAR(10) NULL, 
 `ETHC1` VARCHAR(10) NULL, 
 `ETHC2` VARCHAR(10) NULL, 
 `ETHC3` VARCHAR(10) NULL, 
 `ETHC4` VARCHAR(10) NULL, 
 `ETHC5` VARCHAR(10) NULL, 
 `ETHC6` VARCHAR(10) NULL, 
 `HVP1` VARCHAR(10) NULL, 
 `HVP2` VARCHAR(10) NULL, 
 `HVP3` VARCHAR(10) NULL, 
 `HVP4` VARCHAR(10) NULL, 
 `HVP5` VARCHAR(10) NULL, 
 `HVP6` VARCHAR(10) NULL, 
 `HUR1` VARCHAR(10) NULL, 
 `HUR2` VARCHAR(10) NULL, 
 `RHP1` VARCHAR(10) NULL, 
 `RHP2` VARCHAR(10) NULL, 
 `RHP3` VARCHAR(10) NULL, 
 `RHP4` VARCHAR(10) NULL, 
 `HUPA1` VARCHAR(10) NULL, 
 `HUPA2` VARCHAR(10) NULL, 
 `HUPA3` VARCHAR(10) NULL, 
 `HUPA4` VARCHAR(10) NULL, 
 `HUPA5` VARCHAR(10) NULL, 
 `HUPA6` VARCHAR(10) NULL, 
 `HUPA7` VARCHAR(10) NULL, 
 `RP1` VARCHAR(10) NULL, 
 `RP2` VARCHAR(10) NULL, 
 `RP3` VARCHAR(10) NULL, 
 `RP4` VARCHAR(10) NULL, 
 `MSA` VARCHAR(10) NULL, 
 `ADI` VARCHAR(10) NULL, 
 `DMA` VARCHAR(10) NULL, 
 `IC1` VARCHAR(10) NULL, 
 `IC2` VARCHAR(10) NULL, 
 `IC3` VARCHAR(10) NULL, 
 `IC4` VARCHAR(10) NULL, 
 `IC5` VARCHAR(10) NULL, 
 `IC6` VARCHAR(10) NULL, 
 `IC7` VARCHAR(10) NULL, 
 `IC8` VARCHAR(10) NULL, 
 `IC9` VARCHAR(10) NULL, 
 `IC10` VARCHAR(10) NULL, 
 `IC11` VARCHAR(10) NULL, 
 `IC12` VARCHAR(10) NULL, 
 `IC13` VARCHAR(10) NULL, 
 `IC14` VARCHAR(10) NULL, 
 `IC15` VARCHAR(10) NULL, 
 `IC16` VARCHAR(10) NULL, 
 `IC17` VARCHAR(10) NULL, 
 `IC18` VARCHAR(10) NULL, 
 `IC19` VARCHAR(10) NULL, 
 `IC20` VARCHAR(10) NULL, 
 `IC21` VARCHAR(10) NULL, 
 `IC22` VARCHAR(10) NULL, 
 `IC23` VARCHAR(10) NULL, 
 `HHAS1` VARCHAR(10) NULL, 
 `HHAS2` VARCHAR(10) NULL, 
 `HHAS3` VARCHAR(10) NULL, 
 `HHAS4` VARCHAR(10) NULL, 
 `MC1` VARCHAR(10) NULL, 
 `MC2` VARCHAR(10) NULL, 
 `MC3` VARCHAR(10) NULL, 
 `TPE1` VARCHAR(10) NULL, 
 `TPE2` VARCHAR(10) NULL, 
 `TPE3` VARCHAR(10) NULL, 
 `TPE4` VARCHAR(10) NULL, 
 `TPE5` VARCHAR(10) NULL, 
 `TPE6` VARCHAR(10) NULL, 
 `TPE7` VARCHAR(10) NULL, 
 `TPE8` VARCHAR(10) NULL, 
 `TPE9` VARCHAR(10) NULL, 
 `PEC1` VARCHAR(10) NULL, 
 `PEC2` VARCHAR(10) NULL, 
 `TPE10` VARCHAR(10) NULL, 
 `TPE11` VARCHAR(10) NULL, 
 `TPE12` VARCHAR(10) NULL, 
 `TPE13` VARCHAR(10) NULL, 
 `LFC1` VARCHAR(10) NULL, 
 `LFC2` VARCHAR(10) NULL, 
 `LFC3` VARCHAR(10) NULL, 
 `LFC4` VARCHAR(10) NULL, 
 `LFC5` VARCHAR(10) NULL, 
 `LFC6` VARCHAR(10) NULL, 
 `LFC7` VARCHAR(10) NULL, 
 `LFC8` VARCHAR(10) NULL, 
 `LFC9` VARCHAR(10) NULL, 
 `LFC10` VARCHAR(10) NULL, 
 `OCC1` VARCHAR(10) NULL, 
 `OCC2` VARCHAR(10) NULL, 
 `OCC3` VARCHAR(10) NULL, 
 `OCC4` VARCHAR(10) NULL, 
 `OCC5` VARCHAR(10) NULL, 
 `OCC6` VARCHAR(10) NULL, 
 `OCC7` VARCHAR(10) NULL, 
 `OCC8` VARCHAR(10) NULL, 
 `OCC9` VARCHAR(10) NULL, 
 `OCC10` VARCHAR(10) NULL, 
 `OCC11` VARCHAR(10) NULL, 
 `OCC12` VARCHAR(10) NULL, 
 `OCC13` VARCHAR(10) NULL, 
 `EIC1` VARCHAR(10) NULL, 
 `EIC2` VARCHAR(10) NULL, 
 `EIC3` VARCHAR(10) NULL, 
 `EIC4` VARCHAR(10) NULL, 
 `EIC5` VARCHAR(10) NULL, 
 `EIC6` VARCHAR(10) NULL, 
 `EIC7` VARCHAR(10) NULL, 
 `EIC8` VARCHAR(10) NULL, 
 `EIC9` VARCHAR(10) NULL, 
 `EIC10` VARCHAR(10) NULL, 
 `EIC11` VARCHAR(10) NULL, 
 `EIC12` VARCHAR(10) NULL, 
 `EIC13` VARCHAR(10) NULL, 
 `EIC14` VARCHAR(10) NULL, 
 `EIC15` VARCHAR(10) NULL, 
 `EIC16` VARCHAR(10) NULL, 
 `OEDC1` VARCHAR(10) NULL, 
 `OEDC2` VARCHAR(10) NULL, 
 `OEDC3` VARCHAR(10) NULL, 
 `OEDC4` VARCHAR(10) NULL, 
 `OEDC5` VARCHAR(10) NULL, 
 `OEDC6` VARCHAR(10) NULL, 
 `OEDC7` VARCHAR(10) NULL, 
 `EC1` VARCHAR(10) NULL, 
 `EC2` VARCHAR(10) NULL, 
 `EC3` VARCHAR(10) NULL, 
 `EC4` VARCHAR(10) NULL, 
 `EC5` VARCHAR(10) NULL, 
 `EC6` VARCHAR(10) NULL, 
 `EC7` VARCHAR(10) NULL, 
 `EC8` VARCHAR(10) NULL, 
 `SEC1` VARCHAR(10) NULL, 
 `SEC2` VARCHAR(10) NULL, 
 `SEC3` VARCHAR(10) NULL, 
 `SEC4` VARCHAR(10) NULL, 
 `SEC5` VARCHAR(10) NULL, 
 `AFC1` VARCHAR(10) NULL, 
 `AFC2` VARCHAR(10) NULL, 
 `AFC3` VARCHAR(10) NULL, 
 `AFC4` VARCHAR(10) NULL, 
 `AFC5` VARCHAR(10) NULL, 
 `AFC6` VARCHAR(10) NULL, 
 `VC1` VARCHAR(10) NULL, 
 `VC2` VARCHAR(10) NULL, 
 `VC3` VARCHAR(10) NULL, 
 `VC4` VARCHAR(10) NULL, 
 `ANC1` VARCHAR(10) NULL, 
 `ANC2` VARCHAR(10) NULL, 
 `ANC3` VARCHAR(10) NULL, 
 `ANC4` VARCHAR(10) NULL, 
 `ANC5` VARCHAR(10) NULL, 
 `ANC6` VARCHAR(10) NULL, 
 `ANC7` VARCHAR(10) NULL, 
 `ANC8` VARCHAR(10) NULL, 
 `ANC9` VARCHAR(10) NULL, 
 `ANC10` VARCHAR(10) NULL, 
 `ANC11` VARCHAR(10) NULL, 
 `ANC12` VARCHAR(10) NULL, 
 `ANC13` VARCHAR(10) NULL, 
 `ANC14` VARCHAR(10) NULL, 
 `ANC15` VARCHAR(10) NULL, 
 `POBC1` VARCHAR(10) NULL, 
 `POBC2` VARCHAR(10) NULL, 
 `LSC1` VARCHAR(10) NULL, 
 `LSC2` VARCHAR(10) NULL, 
 `LSC3` VARCHAR(10) NULL, 
 `LSC4` VARCHAR(10) NULL, 
 `VOC1` VARCHAR(10) NULL, 
 `VOC2` VARCHAR(10) NULL, 
 `VOC3` VARCHAR(10) NULL, 
 `HC1` VARCHAR(10) NULL, 
 `HC2` VARCHAR(10) NULL, 
 `HC3` VARCHAR(10) NULL, 
 `HC4` VARCHAR(10) NULL, 
 `HC5` VARCHAR(10) NULL, 
 `HC6` VARCHAR(10) NULL, 
 `HC7` VARCHAR(10) NULL, 
 `HC8` VARCHAR(10) NULL, 
 `HC9` VARCHAR(10) NULL, 
 `HC10` VARCHAR(10) NULL, 
 `HC11` VARCHAR(10) NULL, 
 `HC12` VARCHAR(10) NULL, 
 `HC13` VARCHAR(10) NULL, 
 `HC14` VARCHAR(10) NULL, 
 `HC15` VARCHAR(10) NULL, 
 `HC16` VARCHAR(10) NULL, 
 `HC17` VARCHAR(10) NULL, 
 `HC18` VARCHAR(10) NULL, 
 `HC19` VARCHAR(10) NULL, 
 `HC20` VARCHAR(10) NULL, 
 `HC21` VARCHAR(10) NULL, 
 `MHUC1` VARCHAR(10) NULL, 
 `MHUC2` VARCHAR(10) NULL, 
 `AC1` VARCHAR(10) NULL, 
 `AC2` VARCHAR(10) NULL, 
 `ADATE_2` VARCHAR(10) NULL, 
 `ADATE_3` VARCHAR(10) NULL, 
 `ADATE_4` VARCHAR(10) NULL, 
 `ADATE_5` VARCHAR(10) NULL, 
 `ADATE_6` VARCHAR(10) NULL, 
 `ADATE_7` VARCHAR(10) NULL, 
 `ADATE_8` VARCHAR(10) NULL, 
 `ADATE_9` VARCHAR(10) NULL, 
 `ADATE_10` VARCHAR(10) NULL, 
 `ADATE_11` VARCHAR(10) NULL, 
 `ADATE_12` VARCHAR(10) NULL, 
 `ADATE_13` VARCHAR(10) NULL, 
 `ADATE_14` VARCHAR(10) NULL, 
 `ADATE_15` VARCHAR(10) NULL, 
 `ADATE_16` VARCHAR(10) NULL, 
 `ADATE_17` VARCHAR(10) NULL, 
 `ADATE_18` VARCHAR(10) NULL, 
 `ADATE_19` VARCHAR(10) NULL, 
 `ADATE_20` VARCHAR(10) NULL, 
 `ADATE_21` VARCHAR(10) NULL, 
 `ADATE_22` VARCHAR(10) NULL, 
 `ADATE_23` VARCHAR(10) NULL, 
 `ADATE_24` VARCHAR(10) NULL, 
 `RFA_2` VARCHAR(10) NULL, 
 `RFA_3` VARCHAR(10) NULL, 
 `RFA_4` VARCHAR(10) NULL, 
 `RFA_5` VARCHAR(10) NULL, 
 `RFA_6` VARCHAR(10) NULL, 
 `RFA_7` VARCHAR(10) NULL, 
 `RFA_8` VARCHAR(10) NULL, 
 `RFA_9` VARCHAR(10) NULL, 
 `RFA_10` VARCHAR(10) NULL, 
 `RFA_11` VARCHAR(10) NULL, 
 `RFA_12` VARCHAR(10) NULL, 
 `RFA_13` VARCHAR(10) NULL, 
 `RFA_14` VARCHAR(10) NULL, 
 `RFA_15` VARCHAR(10) NULL, 
 `RFA_16` VARCHAR(10) NULL, 
 `RFA_17` VARCHAR(10) NULL, 
 `RFA_18` VARCHAR(10) NULL, 
 `RFA_19` VARCHAR(10) NULL, 
 `RFA_20` VARCHAR(10) NULL, 
 `RFA_21` VARCHAR(10) NULL, 
 `RFA_22` VARCHAR(10) NULL, 
 `RFA_23` VARCHAR(10) NULL, 
 `RFA_24` VARCHAR(10) NULL, 
 `CARDPROM` VARCHAR(10) NULL, 
 `MAXADATE` VARCHAR(10) NULL, 
 `NUMPROM` VARCHAR(10) NULL, 
 `CARDPM12` VARCHAR(10) NULL, 
 `NUMPRM12` VARCHAR(10) NULL, 
 `RDATE_3` VARCHAR(10) NULL, 
 `RDATE_4` VARCHAR(10) NULL, 
 `RDATE_5` VARCHAR(10) NULL, 
 `RDATE_6` VARCHAR(10) NULL, 
 `RDATE_7` VARCHAR(10) NULL, 
 `RDATE_8` VARCHAR(10) NULL, 
 `RDATE_9` VARCHAR(10) NULL, 
 `RDATE_10` VARCHAR(10) NULL, 
 `RDATE_11` VARCHAR(10) NULL, 
 `RDATE_12` VARCHAR(10) NULL, 
 `RDATE_13` VARCHAR(10) NULL, 
 `RDATE_14` VARCHAR(10) NULL, 
 `RDATE_15` VARCHAR(10) NULL, 
 `RDATE_16` VARCHAR(10) NULL, 
 `RDATE_17` VARCHAR(10) NULL, 
 `RDATE_18` VARCHAR(10) NULL, 
 `RDATE_19` VARCHAR(10) NULL, 
 `RDATE_20` VARCHAR(10) NULL, 
 `RDATE_21` VARCHAR(10) NULL, 
 `RDATE_22` VARCHAR(10) NULL, 
 `RDATE_23` VARCHAR(10) NULL, 
 `RDATE_24` VARCHAR(10) NULL, 
 `RAMNT_3` VARCHAR(10) NULL, 
 `RAMNT_4` VARCHAR(10) NULL, 
 `RAMNT_5` VARCHAR(10) NULL, 
 `RAMNT_6` VARCHAR(10) NULL, 
 `RAMNT_7` VARCHAR(10) NULL, 
 `RAMNT_8` VARCHAR(10) NULL, 
 `RAMNT_9` VARCHAR(10) NULL, 
 `RAMNT_10` VARCHAR(10) NULL, 
 `RAMNT_11` VARCHAR(10) NULL, 
 `RAMNT_12` VARCHAR(10) NULL, 
 `RAMNT_13` VARCHAR(10) NULL, 
 `RAMNT_14` VARCHAR(10) NULL, 
 `RAMNT_15` VARCHAR(10) NULL, 
 `RAMNT_16` VARCHAR(10) NULL, 
 `RAMNT_17` VARCHAR(10) NULL, 
 `RAMNT_18` VARCHAR(10) NULL, 
 `RAMNT_19` VARCHAR(10) NULL, 
 `RAMNT_20` VARCHAR(10) NULL, 
 `RAMNT_21` VARCHAR(10) NULL, 
 `RAMNT_22` VARCHAR(10) NULL, 
 `RAMNT_23` VARCHAR(10) NULL, 
 `RAMNT_24` VARCHAR(10) NULL, 
 `RAMNTALL` VARCHAR(10) NULL, 
 `NGIFTALL` VARCHAR(10) NULL, 
 `CARDGIFT` VARCHAR(10) NULL, 
 `MINRAMNT` VARCHAR(10) NULL, 
 `MINRDATE` VARCHAR(10) NULL, 
 `MAXRAMNT` VARCHAR(10) NULL, 
 `MAXRDATE` VARCHAR(10) NULL, 
 `LASTGIFT` VARCHAR(10) NULL, 
 `LASTDATE` VARCHAR(10) NULL, 
 `FISTDATE` VARCHAR(10) NULL, 
 `NEXTDATE` VARCHAR(10) NULL, 
 `TIMELAG` VARCHAR(10) NULL, 
 `AVGGIFT` VARCHAR(10) NULL, 
 `CONTROLN` VARCHAR(10) NULL, 
 `TARGET_B` VARCHAR(10) NULL, 
 `TARGET_D` VARCHAR(10) NULL, 
 `HPHONE_D` VARCHAR(10) NULL, 
 `RFA_2R` VARCHAR(10) NULL, 
 `RFA_2F` VARCHAR(10) NULL, 
 `RFA_2A` VARCHAR(10) NULL, 
 `MDMAUD_R` VARCHAR(10) NULL, 
 `MDMAUD_F` VARCHAR(10) NULL, 
 `MDMAUD_A` VARCHAR(10) NULL, 
 `CLUSTER2` VARCHAR(10) NULL, 
 `GEOCODE2` VARCHAR(10) NULL, 
PRIMARY KEY (`ID`)) 
ENGINE = MyISAM;