@All @R285
Feature: Demo Reconciliation
       @R285
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/R285/mx2_r285.csv |
    	| MX.3_R001  | M_NB |test-data/R285/mx3_r285.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R285/" with prefix name "R285_CSV_" 
     Then The different result should be empty