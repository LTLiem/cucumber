@All @R048
Feature: Demo Reconciliation
       @R048
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/R048/R048_MX2.csv |
    	| MX.3_R001  | M_NB |test-data/R048/R048_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R048/" with prefix name "R048_" 
     Then The different result should be empty