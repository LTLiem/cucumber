Feature: Demo Reconciliation
  
  @I027
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_H_ARR_NO|test-data/I027/I027_MX_FUTURE_MX02.csv |
    	| MX.3_R001  | M_H_ARR_NO|test-data/I027/I027_MX_FUTURE_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I027/" with prefix name "I027_CSV_" 
     Then The different result should be empty

  @I027_06052016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_H_ARR_NO|test-data/I027/I027_NA_20101210_20101210_MX2.csv |
    	| MX.3_R001  | M_H_ARR_NO|test-data/I027/I027_NA_20101210_20101210_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I027/" with prefix name "I027_SQL_" 
     Then The different result should be empty