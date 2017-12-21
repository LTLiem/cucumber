Feature: Demo Reconciliation

	 #Date-0: NA
  	 #Date-1: 05/05/15
  	 #Date-2: 06/05/15 
     @R096_DM
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R096 | M_H_NB |test-data/R096/R096_DYN_TAX_SW_NA_20150505_20150506_MX2.csv |
    	| MX.3_R096  | M_KEY  |test-data/R096/R096_DYN_TAX_SW_NA_20150505_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R096/" with prefix name "R096_DM_" 
     Then The different result should be empty

     #Date-0: NA
  	 #Date-1: 06/05/15
  	 #Date-2: 06/05/15 
     @R096_DM_TAX_SWPL
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R096 | M_H_DEALNO |test-data/R096/R096_DYN_TAX_SWPL_NA_20150506_20150506_MX2.csv |
    	| MX.3_R096  | M_H_DEALNO |test-data/R096/R096_DYN_TAX_SWPL_NA_20150506_20150506_MX3_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R096/" with prefix name "R096_DM_TAX_SWPL" 
     Then The different result should be empty
     
     #Date-0: 
  	 #Date-1: 
  	 #Date-2: 06/05/15 
     @R096_SQL
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R096 | M_H_DEALNO |test-data/R096/R096_SQL_20150506_MX2.csv |
    	| MX.3_R096  | M_H_DEALNO |test-data/R096/R096_SQL_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R096/" with prefix name "R096_SQL_" 
     Then The different result should be empty
     
     #Run on MX3 Batches of extractions
	 #Date-0: 
  	 #Date-1: 
  	 #Date-2: 06/05/15 
     @R096_SQL_2
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R096 | M_H_DEALNO |test-data/R096/R096_SQL_20150506_MX2.csv |
    	| MX.3_R096  | M_H_DEALNO |test-data/R096/R096_SQL_20150506_MX3_BOF.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R096/" with prefix name "R096_SQL_2_" 
     Then The different result should be empty
     
     #Run on MX3 Batches of extractions
	 #Date-0: 
  	 #Date-1: 
  	 #Date-2: 06/05/15 
     @R096_SQL_3
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R096 | M_H_DEALNO |test-data/R096/R096_SQL_20150506_MX2.csv |
    	| MX.3_R096  | M_H_DEALNO |test-data/R096/R096_SQL_20150506_MX3_25052016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R096/" with prefix name "R096_SQL_2_" 
     Then The different result should be empty  
     
     
	#Run on MX3 Batches of extractions
	 #Date-0: 
  	 #Date-1: 
  	 #Date-2: 06/05/15 
     @R096_SQL_070620156
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R096 | M_H_DEALNO |test-data/R096/R096_SQL_20150506_MX3_07062016.csv |
    	| MX.3_R096  | M_H_DEALNO |test-data/R096/R096_SQL_20150506_MX3_25052016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R096/" with prefix name "R096_SQL_070620156_" 
     Then The different result should be empty  
     