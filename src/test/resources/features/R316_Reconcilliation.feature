Feature: Demo Reconciliation

	 #Date-0: 
  	 #Date-1: 02/05/2016
  	 #Date-2: 03/05/2016
     @R316_EX
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R316 | DEAL_NO |test-data/R316/R316_EX_MX2.csv |
    	| MX.3_R316  | DEAL_NO |test-data/R316/R316_EX_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R316/" with prefix name "R316_EX_" 
     Then The different result should be empty  