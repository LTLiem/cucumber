@All @R315
Feature: Demo Reconciliation
       @R315
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | DEAL_NO |test-data/R315/R315_SQL1.csv |
    	| MX.3_R001  | DEAL_NO |test-data/R315/R315_SQL2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R315/" with prefix name "R315_CSV_" 
     Then The different result should be empty