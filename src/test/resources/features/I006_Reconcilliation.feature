@All @I006
Feature: Demo Reconciliation
       @I006_MMFLW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_VALUE","M_H_TYPELAB0","M_H_TYPELAB1","M_H_TYPELAB2","M_H_DTEFST" |test-data/I006/I006_MMFLW_MX2.csv |
    	| MX.3_R001  | "M_H_NB","M_H_VALUE","M_H_TYPELAB0","M_H_TYPELAB1","M_H_TYPELAB2","M_H_DTEFST" |test-data/I006/I006_MMFLW_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_MMFLW_" 
     Then The different result should be empty
     
     
     	@I006_MMFW_FAL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_VALUE","M_H_TYPELAB0","M_H_TYPELAB1","M_H_TYPELAB2" |test-data/I006/I006_MMFW_FAL_MX2.csv |
    	| MX.3_R001  | "M_H_NB","M_H_VALUE","M_H_TYPELAB0","M_H_TYPELAB1","M_H_TYPELAB2"|test-data/I006/I006_MMFW_FAL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_MMFW_FAL_" 
     Then The different result should be empty
     
     	@I006_MMFW_FIN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB" |test-data/I006/I006_MMFW_FIN_MX2.csv |
    	| MX.3_R001  | "M_H_NB" |test-data/I006/I006_MMFW_FIN_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_MMFW_FIN_" 
     Then The different result should be empty
     
     	@I006_MMFW_NAL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_TYPELAB0","M_H_TYPELAB1","M_H_TYPELAB2" |test-data/I006/I006_MMFW_NAL_MX2.csv |
    	| MX.3_R001  | "M_H_NB","M_H_TYPELAB0","M_H_TYPELAB1","M_H_TYPELAB2" |test-data/I006/I006_MMFW_NAL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_MMFW_NAL_" 
     Then The different result should be empty
     
     	@I006_MMFW_NIN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB" |test-data/I006/I006_MMFW_NIN_MX2.csv |
    	| MX.3_R001  | "M_H_NB" |test-data/I006/I006_MMFW_NIN_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_MMFW_NIN_" 
     Then The different result should be empty
     
     	@I006_MMGL_ALL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_EFF_DTE,M_H_MAT_DTE,M_H_NB,M_H_ORG_DTE,M_H_TRN_DTE,M_H_TRN_AMT |test-data/I006/I006_MMGL_ALL_MX2.csv |
    	| MX.3_R001  | M_H_EFF_DTE,M_H_MAT_DTE,M_H_NB,M_H_ORG_DTE,M_H_TRN_DTE,M_H_TRN_AMT |test-data/I006/I006_MMGL_ALL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_MMGL_ALL_" 
     Then The different result should be empty
     
     @I006_SQL_BOIIA
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB" |test-data/I006/SQL_MX2_I006_BOIIA_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | "M_H_NB" |test-data/I006/SQL_MX3_I006_BOIIA_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_BOIIA_" 
     Then The different result should be empty
     
     @I006_SQL_MMFLW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_AMT","M_H_NB","M_H_VALUE" |test-data/I006/SQL_MX2_I006_MMFLW_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | "M_H_AMT","M_H_NB","M_H_VALUE" |test-data/I006/SQL_MX3_I006_MMFLW_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_MMFLW_" 
     Then The different result should be empty
     
     @I006_SQL_MMGL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_ACCOUNT","M_H_NB" |test-data/I006/SQL_MX2_I006_MMGL_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | "M_H_ACCOUNT","M_H_NB" |test-data/I006/SQL_MX3_I006_MMGL_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_MMGL_" 
     Then The different result should be empty
     
     @I006_DYN_MMGL_FST
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | H_DC,Entry Number,H_RULE |test-data/I006/DYN_MX2_I006_MMGL_FST_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | H_DC,Entry Number,H_RULE |test-data/I006/DYN_MX3_I006_MMGL_FST_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_DYN_MMGL_FST" 
     Then The different result should be empty
     
     @I006_SQL_MMGL_FST
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_ACCOUNT","M_H_DC","M_H_NB","M_H_RULE","M_H_TRN_AMT" |test-data/I006/SQL_MX2_I006_MMGL_FST_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | "M_H_ACCOUNT","M_H_DC","M_H_NB","M_H_RULE","M_H_TRN_AMT" |test-data/I006/SQL_MX3_I006_MMGL_FST_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_SQL_MMGL_FST" 
     Then The different result should be empty
     
     @I006_SQL_MMFW_FAL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_AMT" |test-data/I006/SQL_MX2_I006_MMFW_FAL_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | "M_H_NB","M_H_AMT" |test-data/I006/SQL_MX2_I006_MMFW_FAL_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_SQL_MMFW_FAL" 
     Then The different result should be empty
     
     @I006_SQL_MMFW_NAL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_AMT" |test-data/I006/SQL_MX2_I006_MMFW_NAL_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | "M_H_NB","M_H_AMT" |test-data/I006/SQL_MX2_I006_MMFW_NAL_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_SQL_MMFW_NAL" 
     Then The different result should be empty
     
     @I006_SQL_MMFW_FIN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_AMT" |test-data/I006/SQL_MX2_I006_MMFW_FIN_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | "M_H_NB","M_H_AMT" |test-data/I006/SQL_MX2_I006_MMFW_FIN_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_SQL_MMFW_FIN" 
     Then The different result should be empty
     
      @I006_SQL_MMFW_NIN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_AMT" |test-data/I006/SQL_MX2_I006_MMFW_NIN_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | "M_H_NB","M_H_AMT" |test-data/I006/SQL_MX2_I006_MMFW_NIN_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_SQL_MMFW_NIN" 
     Then The different result should be empty
     
     @I006_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_ID_NUM,M_H_TMB_REF |test-data/I006/SQL_MX2_I006.csv |
    	| MX.3_R001  | M_H_ID_NUM,M_H_TMB_REF |test-data/I006/SQL_MX3_I006.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_SQL" 
     Then The different result should be empty
     
     @I006_SQL_MAIN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_ID_NUM |test-data/I006/SQL_MX2_I006_RECON1_31.03.15_31.03.15_31.03.15.csv |
    	| MX.3_R001  | M_H_ID_NUM |test-data/I006/SQL_MX3_I006_RECON1_31.03.15_31.03.15_31.03.15.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006/" with prefix name "I006_SQL_MAIN" 
     Then The different result should be empty