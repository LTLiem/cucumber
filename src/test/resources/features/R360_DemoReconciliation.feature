Feature: Demo Reconciliation
  
  @Demo
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                    |
    	| MxG2K_R360 | test-data/R360/R360_mxg2k.txt|
    	| MX.3_R360  | test-data/R360/R360_mx3.txt  |
      And The data structure of these data is at "test-data/R360/R360_data_structure.csv"
     When I compare these data with difference result is generated at "test-result/R360/" with prefix name "R360_" 
     Then The different result should be empty

  @360_dyn
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R360 | Trn# (Internal) |test-data/R360/BN_CMP_INS_MX2.csv |
    	| MX.3_R360  | Trn# (Internal) |test-data/R360/BN_CMP_INS_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R360/" with prefix name "R360_CSV_DYN_" 
     Then The different result should be empty
  
  @R360_dyn
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R360 | Trn# (Internal) |test-data/R360/R360_BN_CMP_INSSALE_MX2.csv |
    	| MX.3_R360  | Trn# (Internal) |test-data/R360/R360_BN_CMP_INSSALE_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R360/" with prefix name "R360_BN_CMP_INSSALE_" 
     Then The different result should be empty 
 
 @359_dyn
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R359 | Trn# (Internal) |test-data/R360/BN_CMP_DEAL_MX2.csv |
    	| MX.3_R359  | Trn# (Internal) |test-data/R360/BN_CMP_DEAL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R360/" with prefix name "R359_CSV_DYN_" 
     Then The different result should be empty
     
     
   @R360_NEWTEST
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R360 | Trn# (Internal) |test-data/R360/R360_DYN_MX2.csv |
    	| MX.3_R360  | Trn# (Internal) |test-data/R360/R359-R360_DYN_MX3_020316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R360/" with prefix name "R360_DYN_060515_" 
     Then The different result should be empty 
     
     
   @R360_030316
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R360 | Trn# (Internal) |test-data/R360/R360_DYN_MX2.csv |
    	| MX.3_R360  | Trn# (Internal) |test-data/R360/R359-R360_DYN_MX3_030316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R360/" with prefix name "R360_DYN_030316_" 
     Then The different result should be empty 