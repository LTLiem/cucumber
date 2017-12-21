Feature: Demo Reconciliation
  
  @R075_SQL_LLE
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB2,M_CMP_TYPOID|test-data/R075/R075_Extraction_Mx2.csv |
    	| MX.3_R001  | M_CONTRACT,M_CMP_TYPOID|test-data/R075/R075_Extraction_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R075/" with prefix name "R075_SQL_LLE" 
     Then The different result should be empty

     
       @R075_SQL_LLE_UpdateFilter
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB2,M_CMP_TYPOID|test-data/R075/R075_Extraction_Mx2.csv |
    	| MX.3_R001  | M_CONTRACT,M_CMP_TYPOID|test-data/R075/R075_Extraction_Mx3_UpdateFilter.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R075/" with prefix name "R075_SQL_LLE_UpdateFilter_" 
     Then The different result should be empty
     