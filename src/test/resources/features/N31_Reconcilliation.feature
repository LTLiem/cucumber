Feature: Demo Reconciliation
  
  @N31_TF_RECONCILE_DATA
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_CONTRACT,M_HQTY_INDEX,M_H_TRN_STS2 |test-data/TF_RECONCILE/TF_RECONCILE_0505_0705_MX2_1311.csv |
    	| MX.3_R001  | M_CONTRACT,M_HQTY_INDEX,M_H_TRN_STS2 |test-data/TF_RECONCILE/TF_RECONCILE_0505_0705_MX3_1311.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/TF_RECONCILE/" with prefix name "TF_RECONCILE_N31_1311_CSV_"
     Then The different result should be empty