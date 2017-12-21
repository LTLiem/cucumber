
Feature: Demo Reconciliation
  
       @DemoCSV @I058
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/i058/i058_mx2.csv |
    	| MX.3_R001  | M_CONTRACT |test-data/i058/i058_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i058/" with prefix name "i058_CSV_" 
     Then The different result should be empty