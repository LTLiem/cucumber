@I047
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | PORTFOLIO |test-data/I047/I047_SQL_MX2.csv |
    	| MX.3_R001  | PORTFOLIO |test-data/I047/I047_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I047/" with prefix name "I047_SQL_CSV_" 
     Then The different result should be empty
