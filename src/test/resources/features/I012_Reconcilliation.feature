@All
Feature: Demo Reconciliation
  
  @I012
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | Trn# (Internal),Date: Period expiry date,Period Remaining Capital |test-data/I012/mx2_i012_dt.csv |
    	| MX.3_R001  | Trn# (Internal),Date: Period expiry date,Period Remaining Capital |test-data/I012/mx3_i012_dt.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I012_DT/" with prefix name "I012_DT" 
     Then The different result should be empty