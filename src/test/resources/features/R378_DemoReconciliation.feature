Feature: Demo Reconciliation
  
  @Demo
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                    |
    	| MxG2K_R378_1 | test-data/R378/R378_1_mxg2k.txt|
    	| MX.3_R378_1  | test-data/R378/R378_1_mx3.txt  |
      And The data structure of these data is at "test-data/R378_1/R378_1_data_structure.csv"
     When I compare these data with difference result is generated at "test-result/R378/" with prefix name "R378_1_" 
     Then The different result should be empty

  @R378_1
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R378_1 | M_LABEL |test-data/R378/R3781_CMS_CPTY_MX2.csv |
    	| MX.3_R378_1  | M_LABEL |test-data/R378/R3781_CMS_CPTY_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R378/" with prefix name "R3781_CMS_CPTY_" 
     Then The different result should be empty
     
     @R378_1a
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R378_1 | LABEL |test-data/R378/R3781_CMS_CPTY_MX2.csv |
    	| MX.3_R378_1  | LABEL |test-data/R378/R3781_CMS_CPTY_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R378/" with prefix name "R3781_CMS_CPTY_" 
     Then The different result should be empty
  @R378_2
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K | Trn# (Internal) |test-data/R378/R3782_DYN_CMS_OPT_EXR_MX2.csv |
    	| MX.3  | Trn# (Internal) |test-data/R378/R3782_DYN_CMS_OPT_EXR_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R378/" with prefix name "R3782_DYN_CMS_OPT_EXR_Result" 
     Then The different result should be empty
     
     
   @R378_1_NEWTEST
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R378_1 | LABEL |test-data/R378/R378-1_DYN_MX2.csv |
    	| MX.3_R378_1  | LABEL |test-data/R378/R378-1_DYN_MX3_020316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R378/" with prefix name "R378-1_DYN_" 
     Then The different result should be empty
     
     
  @R378_1_030316
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R378_1 | LABEL |test-data/R378/R378-1_DYN_MX2.csv |
    	| MX.3_R378_1  | LABEL |test-data/R378/R378-1_DYN_MX3_030316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R378/" with prefix name "R378-1_DYN_030316_" 
     Then The different result should be empty