Feature: Demo Reconciliation
 
  @I030_SQL_NA_20150505_20150506
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/I030/I030_SQL_NA_20150505_20150506_MX02.csv |
     | MX.3 | "M_NB" |test-data/I030/I030_SQL_NA_20150505_20150506_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I030/" with prefix name "I030_DYN_NA_20150505_20150506_" 
     Then The different result should be empty
     
  @I030_SQL_NA_20150505_20150506_22032016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB |test-data/I030/I030_SQL_NA_20150505_20150506_MX02_22032016.csv |
     | MX.3 | M_NB |test-data/I030/I030_SQL_NA_20150505_20150506_MX03_22032016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I030/" with prefix name "I030_SQL_NA_20150505_20150506_22032016_" 
     Then The different result should be empty
     
  @I030_SQL_NA_20150505_20150506_22042016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB |test-data/I030/I030_SQL_NA_20150505_20150506_MX02_22042016.csv |
     | MX.3 | M_NB |test-data/I030/I030_SQL_NA_20150505_20150506_MX03_22042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I030/" with prefix name "I030_SQL_NA_20150505_20150506_22042016_" 
     Then The different result should be empty
     
	 #Run on MX3 Batches of extractions
	 #Date-0: 
  	 #Date-1: 05/05/15
  	 #Date-2: 06/05/15 
     @I030_SQL_07062016
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_I030 | M_NB |test-data/I030/I030_SQL_NA_20150505_20150506_MX02_07062016.csv |
    	| MX.3_I030  | M_NB |test-data/I030/I030_SQL_NA_20150505_20150506_MX03_07062016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I030/" with prefix name "I030_SQL_07062016_" 
     Then The different result should be empty  
     
     #Run on MX3 Batches of extractions
	 #Date-0: 
  	 #Date-1: Yesterday
  	 #Date-2: Today 
     @I030_SQL_11072016
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_I030 | M_NB |test-data/I030/I030_SQL_30062016_MX2.csv |
    	| MX.3_I030  | M_NB |test-data/I030/I030_SQL_11072016_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I030/" with prefix name "I030_SQL_30062016_" 
     Then The different result should be empty  