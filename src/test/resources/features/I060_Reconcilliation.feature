Feature: Demo Reconciliation
  
  @I060
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB|test-data/I060/I060_MX02.csv |
    	| MX.3_R001  | M_NB|test-data/I060/I060_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I060/" with prefix name "I060_CSV_" 
     Then The different result should be empty
     
     @I060B
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | TMB_ACCOUNT_ID,APPL_CTL1,APPL_CTL2,APPL_CTL3,APPL_CTL4,TMB_SUFFIX|test-data/I060/I060_NB_MX02.csv |
    	| MX.3_R001  | TMB_ACCOUNT_ID,APPL_CTL1,APPL_CTL2,APPL_CTL3,APPL_CTL4,TMB_SUFFIX|test-data/I060/I060_NB_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I060/" with prefix name "I060_CSV_" 
     Then The different result should be empty

	 #Date-0: NA
  	 #Date-1: 05/05/15
  	 #Date-2: 06/05/15 
     @I060_DYN     
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_H_ACC_ID,M_H_APP_CTL1,M_H_APP_CTL2,M_H_APP_CTL3,M_H_APP_CTL4,M_H_SUFFIX |test-data/I060/I060_DYN_NA_20150505_20150506_MX2.csv |
    	| MX.3_R001  | M_H_ACC_ID,M_H_APP_CTL1,M_H_APP_CTL2,M_H_APP_CTL3,M_H_APP_CTL4,M_H_SUFFIX |test-data/I060/I060_DYN_NA_20150505_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I060/" with prefix name "I060_DYN_" 
     Then The different result should be empty
     
	 #Date-0: NA
  	 #Date-1: 06/05/16
  	 #Date-2: 09/05/16 
     @I060_DYN_TOS_REMOVE_CONSILIDATED_0905
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | H_KEY,QTY |test-data/I060/I060_TMB_RM_RELTRM_REMOVECSV_09052016_MX2.csv |
    	| MX.3_R001  | H_KEY,QTY |test-data/I060/I060_TMB_RM_RELTRM_REMOVECSV_09052016_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I060/" with prefix name "I060_DYN_TOS_REMOVE_CONSILIDATED_0905_" 
     Then The different result should be empty
     
     #Date-0: NA
  	 #Date-1: 05/05/16
  	 #Date-2: 06/05/16 
     @I060_DYN_     
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ACC_ID,M_H_APP_CTL1,M_H_APP_CTL2,M_H_APP_CTL3,M_H_APP_CTL4,M_H_SUFFIX |test-data/I060/I060_TMB_RM_RELTRM_MX2.csv |
    	| MX.3  | M_H_ACC_ID,M_H_APP_CTL1,M_H_APP_CTL2,M_H_APP_CTL3,M_H_APP_CTL4,M_H_SUFFIX |test-data/I060/I060_TMB_RM_RELTRM_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I060/" with prefix name "I060_DYN_" 
     Then The different result should be empty