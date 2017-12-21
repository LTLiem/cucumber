Feature: Demo Reconciliation
  
  @Demo
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                    |
    	| MxG2K_R001 | test-data/R001/r001_mxg2k.txt|
    	| MX.3_R001  | test-data/R001/r001_mx3.txt  |
      And The data structure of these data is at "test-data/R001/r001_data_structure.csv"
     When I compare these data with difference result is generated at "test-result/R001/" with prefix name "R001_" 
     Then The different result should be empty

  @DemoCSV
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | Accounting currency,2,3 |test-data/R001/TP_TMB_FX_TRAN_MX2.csv |
    	| MX.3_R001  | Accounting currency,2,3 |test-data/R001/TP_TMB_FX_TRAN_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R001/" with prefix name "R001_CSV_" 
     Then The different result should be empty