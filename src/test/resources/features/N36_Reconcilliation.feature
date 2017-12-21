Feature: Demo Reconciliation

	 #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: 09/05/15 
     @N36
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_N36 | Trn# (Internal),Event start date |test-data/N36/N36_Mx2.csv |
    	| MX.3_N36  | Trn# (Internal),Event start date |test-data/N36/N36_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N36/" with prefix name "N36_" 
     Then The different result should be empty
