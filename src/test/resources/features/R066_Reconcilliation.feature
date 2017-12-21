Feature: Demo Reconciliation

	 #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: 06/05/15 
     @R066_DM_BN_TMO_POSITION
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_NB,M_TP_BUY |test-data/R066/R066_DM_BN_TMO_POSITION_NA_NA_20150506_MX2.csv |
    	| MX.3_R066  | M_NB,M_TP_BUY |test-data/R066/R066_DM_BN_TMO_POSITION_NA_NA_20150506_MX3_01062016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R066/" with prefix name "R066_DM_BN_TMO_POSITION_" 
     Then The different result should be empty

	 #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: 09/05/16 
     @R066_DM_BN_TMO_POSITION_090516
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_NB,M_TP_BUY |test-data/R066/R066_BN_TMO_POSITION_MX2_09052016.csv |
    	| MX.3_R066  | M_NB,M_TP_BUY |test-data/R066/R066_BN_TMO_POSITION_MX3_09052016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R066/" with prefix name "R066_DM_BN_TMO_POSITION_090516_" 
     Then The different result should be empty

	 #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: 06/05/15 
     @R066_SQL_A
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_TP_ACCSCT,M_H_SECLBL,M_TP_PFOLIO |test-data/R066/R066_SQL_A_MX2_09052016.csv |
    	| MX.3_R066  | M_TP_ACCSCT,M_H_SECLBL,M_TP_PFOLIO |test-data/R066/R066_SQL_A_MX3_09052016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R066/" with prefix name "R066_SQL_A_" 
     Then The different result should be empty
     
	 #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: 06/05/15 
     @R066_SQL_B
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_H_SECLBL |test-data/R066/R066_SQL_NA_NA_20150506_B_MX2.csv |
    	| MX.3_R066  | M_H_SECLBL |test-data/R066/R066_SQL_NA_NA_20150506_B_MX3_01062016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R066/" with prefix name "R066_SQL_B_" 
     Then The different result should be empty
     
     
	 #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: 06/05/15 
     @R066_SQL_A_23052016_SQL_EDITED
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_TP_ACCSCT,M_H_SECLBL,M_TP_PFOLIO |test-data/R066/R066_SQL_NA_NA_20150506_A_MX2.csv |
    	| MX.3_R066  | M_TP_ACCSCT,M_H_SECLBL,M_TP_PFOLIO |test-data/R066/R066_SQL_NA_NA_20150506_A_MX3_23052016_SQL_EDITED.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R066/" with prefix name "R066_SQL_A_23052016_SQL_EDITED_" 
     Then The different result should be empty
     
	 #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: today
     @R066_SQL_B_12072016
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_TP_ACCSCT,M_H_SECLBL,M_TP_PFOLIO |test-data/R066/R066_SQL_NA_NA_20160506_B_MX2.csv |
    	| MX.3_R066  | M_TP_ACCSCT,M_H_SECLBL,M_TP_PFOLIO |test-data/R066/R066_SQL_NA_NA_20160506_B_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R066/" with prefix name "R066_SQL_B_12072016_" 
     Then The different result should be empty
     
     #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: today
     @R066_SQL_A_12072016
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_TP_ACCSCT,M_H_SECLBL,M_TP_PFOLIO |test-data/R066/R066_SQL_NA_NA_20150506_A_MX2.csv |
    	| MX.3_R066  | M_TP_ACCSCT,M_H_SECLBL,M_TP_PFOLIO |test-data/R066/R066_SQL_NA_NA_20150506_A_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R066/" with prefix name "R066_SQL_A_12072016_" 
     Then The different result should be empty
     
	 #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: Today
     @R066_DM_BN_TMO_POSITION_YESTERDAY
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_NB,M_TP_BUY |test-data/R066/R066_DM_BN_TMO_POSITION_NA_NA_20160506_MX2.csv |
    	| MX.3_R066  | M_NB,M_TP_BUY |test-data/R066/R066_DM_BN_TMO_POSITION_NA_NA_20160506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R066/" with prefix name "R066_DM_BN_TMO_POSITION_YESTERDAY_" 
     Then The different result should be empty
     
     
      #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: 06/05/15 
     @R066_SQL_B
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_H_SECLBL |test-data/R066/R066_SQL_B_MX2_09052016.csv |
    	| MX.3_R066  | M_H_SECLBL |test-data/R066/R066_SQL_B_MX3_09052016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R066/" with prefix name "R066_SQL_B_" 
     Then The different result should be empty