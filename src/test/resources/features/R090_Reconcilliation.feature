Feature: Demo Reconciliation
  
  @R090
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K_R001 | M_CONTRACT,M_HQTY_INDEX|test-data/R090/FX_SA3D_DM_ORIGIN.csv |
    	| MX.3_R001  | M_CONTRACT,M_HQTY_INDEX|test-data/R090/FX_SA3D_UPDATE.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R090/" with prefix name "R090_CSV_" 
     Then The different result should be empty