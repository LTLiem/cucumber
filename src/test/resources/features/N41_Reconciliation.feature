Feature: Demo Reconciliation
  
  @N41
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | NB.INT |test-data/N41/N41_MX2_OUTPUT.csv |
    	| MX.3_R001  | NB.INT |test-data/N41/N41_MX3_OUTPUT.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N41/" with prefix name "N41_" 
     Then The different result should be empty
