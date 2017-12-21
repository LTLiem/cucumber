Feature: Demo Reconciliation
  
  @R318
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB|test-data/R318/R318_EXT_MX02.csv |
    	| MX.3_R001  | M_NB|test-data/R318/R318_EXT_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R318/" with prefix name "R318_CSV_" 
     Then The different result should be empty