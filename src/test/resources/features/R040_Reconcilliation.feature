@R040
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/R040/R040_SQL_MX2.csv |
    	| MX.3_R001  | M_NB |test-data/R040/R040_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R040/" with prefix name "R040_SQL_FINAL_" 
     Then The different result should be empty
     