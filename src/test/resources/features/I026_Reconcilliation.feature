Feature: Demo Reconciliation
  
  #DATE1: 05-MAY-15
  #DATE2: 06-MAY-15
  #Comment: Compare for original data 
   @I026_FOREXOUT_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I026 | M_H_NB |test-data/I026/I026_DYN_INIT_MX2_NA_150505_150506.csv |
    	| MX.3_I026  | M_H_NB |test-data/I026/I026_DYN_INIT_MX3_NA_150505_150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I026/" with prefix name "I026_DYN_INIT_RES_NA_150505_150506_" 
     Then The different result should be empty
     
     
    @R114
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I026 | "M_H_ACCOUNT","REV_DESC" |test-data/I026/R114_SQL_NA_20150506_20150506_MX2.csv |
    	| MX.3_I026  | "M_H_ACCOUNT","REV_DESC" |test-data/I026/R114_SQL_NA_20150506_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I026/" with prefix name "R114_RES_" 
     Then The different result should be empty
  