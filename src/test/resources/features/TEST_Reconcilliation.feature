@All
Feature: Demo Reconciliation
  
       @DemoCSV @PFLD
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | ABC |test-data/test/fxsp_ric_mx2.csv |
    	| MX.3_R001  | ABC |test-data/test/fxsp_ric_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/test/" with prefix name "TEST_CSV_" 
     Then The different result should be empty