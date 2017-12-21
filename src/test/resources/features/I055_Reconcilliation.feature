@All
Feature: Demo Reconciliation
  
       @DemoCSV @I055
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/i055/i055_mx2.csv |
    	| MX.3_R001  | M_NB |test-data/i055/i055_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i055/" with prefix name "i055_CSV_" 
     Then The different result should be empty