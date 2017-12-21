Feature: Demo Reconciliation
  
  @R074_SQL_LLE_26092016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB,M_QTY_INDEX|test-data/R074/R074_Extraction_Mx2.csv |
    	| MX.3_R001  | M_CONTRACT,M_QTY_INDEX|test-data/R074/R074_Extraction_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R074/" with prefix name "R074_SQL_LLE_26092016_" 
     Then The different result should be empty

     
       @R074_SQL_LLE_03102016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB,M_QTY_INDEX|test-data/R074/R074_Extraction_Mx2.csv |
    	| MX.3_R001  | M_CONTRACT,M_QTY_INDEX|test-data/R074/R074_Extraction_Mx3_UpdateDynFilter.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R074/" with prefix name "R074_SQL_LLE_03102016_" 
     Then The different result should be empty
     