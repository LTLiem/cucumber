Feature: Demo Reconciliation
  
  @R347_MRCC_CAP
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | Trn# (Internal),Backward Offset |test-data/MRCC_CAP/mrcc_cap_0104_view_1109_mx2.csv |
    	| MX.3_R001  | Trn# (Internal),Backward Offset |test-data/MRCC_CAP/mrcc_cap_0104_view_1109_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MRCC_CAP/" with prefix name "mrcc_cap_0104_view_1109_mx2_CSV_"
     Then The different result should be empty
     
     
  @R347_MRCC_CAP_19012016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | TrnInternal,Period Start Date,Period Payment Date |test-data/LOC/R347/19012016_R347_MRCC_CAP_MX2.csv |
    	| MX.3_R001  | TrnInternal,Period Start Date,Period Payment Date |test-data/LOC/R347/20012016_R347_MRCC_CAP_MX3_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/LOC/R347/" with prefix name "R347_MRCC_CAP_MX_"
     Then The different result should be empty
     
  @R347_MRCC_CAP_25012015
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | TrnInternal,Period Start Date,Period Payment Date |test-data/R347/R347_DYN_MX2_06052015_NA_NA.csv |
    	| MX.3_R001  | TrnInternal,Period Start Date,Period Payment Date |test-data/R347/R347_DYN_MX3_06052015_NA_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R347/" with prefix name "R347_DYN_RESULT_06052015_NA_NA_"
     Then The different result should be empty     
     
