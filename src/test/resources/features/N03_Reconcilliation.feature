Feature: Demo Reconciliation

  @N03_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/N03/BN_INT_PAID_Mx02.csv |
     | MX.3 | "M_NB" |test-data/N03/BN_INT_PAID_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N03/" with prefix name "N03_DYN_" 
     Then The different result should be empty
    
  @N03_EX
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "NB_TRN" |test-data/N03/N03_Extraction_Mx02.csv |
     | MX.3 | "NB_TRN" |test-data/N03/N03_Extraction_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N03/" with prefix name "N03_EXT_" 
     Then The different result should be empty
     
  @N03_DYN_150506_150506_NA
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/N03/N03_DYN_MX2_150506_150506_NA.csv |
     | MX.3 | "M_NB" |test-data/N03/N03_DYN_MX3_150506_150506_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N03/" with prefix name "N03_DYN_150506_150506_NA_" 
     Then The different result should be empty
   
  @N03_SQL_20140801_20140829_20140829
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "NB_TRN" |test-data/N03/N03_SQL_MX2_20140801_20140829_20140829.csv |
     | MX.3 | "NB_TRN" |test-data/N03/N03_SQL_MX3_20140801_20140829_20140829_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N03/" with prefix name "N03_SQL_20140801_20140829_20140829_" 
     Then The different result should be empty
     
  @N03_EXTRACTION_E2E
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Customer |test-data/N03/N03_EXTRACTION_OUTPUT_DEV.csv |
     | MX.3 | Customer |test-data/N03/N03_EXTRACTION_OUTPUT.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N03/" with prefix name "N03_EXTRACTION_E2E_" 
     Then The different result should be empty
     
     
  @N03_SQL_REDO
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB |test-data/N03/N03_EX_MX2.csv |
     | MX.3 | M_NB |test-data/N03/N03_EX_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N03/" with prefix name "N03_SQL_REDO_" 
     Then The different result should be empty
     
      @N03_SQL_REDO_MX3_MX3INCORRECT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB |test-data/N03/N03_EX_MX3.csv |
     | MX.3 | M_NB |test-data/N03/N03_EX_MX3_INCORRECT_CONFIG.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N03/" with prefix name "N03_SQL_REDO_MX3_MX3INCORRECT_" 
     Then The different result should be empty