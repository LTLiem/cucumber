Feature: Demo Reconciliation
    
  @I042
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I042DM | "M_H_NB" |test-data/I042/I042_SQL_MX2_NA_NA_NA.csv |
    	| MX.3_I042DM | M_H_NB |test-data/I042/I042_SQL_MX3_NA_NA_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I042/" with prefix name "I042_SQL_Result_NA_NA_NA_" 
     Then The different result should be empty