Feature: Demo Reconciliation
  
  @R317
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_CONTRACT,M_QTY_INDEX|test-data/R317/FX_SALE_03_2311_MX02.csv |
    	| MX.3_R001  | M_CONTRACT,M_QTY_INDEX|test-data/R317/FX_SALE_03_2311_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R317/" with prefix name "R317_CSV_" 
     Then The different result should be empty
     
     
  @R317BS
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB|test-data/R317/FX_SALE_BS_COM_MX02.csv |
    	| MX.3_R001  | M_NB|test-data/R317/FX_SALE_BS_COM_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R317/" with prefix name "R317_CSV_" 
     Then The different result should be empty
     
  @R317_EX_0905
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R317 | M_NB|test-data/R317/R317_Extraction_Mx2_0905.csv |
    	| MX.3_R317  | M_NB|test-data/R317/R317_Extraction_Mx3_0905.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R317/" with prefix name "R317_EX_0905_" 
     Then The different result should be empty