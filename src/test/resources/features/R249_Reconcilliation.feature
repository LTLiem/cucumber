@All @R249
Feature: Demo Reconciliation
  
  @DemoCSV @R249
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns      | File path                             |
    	| MxG2K_R001 | Trn# (Internal) |test-data/R249/mx2_r249.csv |
    	| MX.3_R001  | Trn# (Internal) |test-data/R249/mx3_r249.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R249/" with prefix name "R249_CSV_" 
     Then The different result should be empty
