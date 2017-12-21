Feature: Demo Reconciliation
  

  @N33
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/N33/TMO_GAIN_LOSS_Mx02.csv |
     | MX.3 | "M_NB" |test-data/N33/TMO_GAIN_LOSS_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N33/" with prefix name "N33_DYN_RS_" 
     Then The different result should be empty
     
     
  @N33_EXT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/N33/N33_Extraction_Mx02.csv |
     | MX.3 | "M_NB" |test-data/N33/N33_Extraction_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N33/" with prefix name "N33_EXT_" 
     Then The different result should be empty
     
  @N33_DYN_150430_NA_NA
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/N33/N33_DYN_MX2_150430_NA_NA.csv |
     | MX.3 | "M_NB" |test-data/N33/N33_DYN_MX3_150430_NA_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N33/" with prefix name "N33_DYN_150430_NA_NA_" 
     Then The different result should be empty
     
  @N33_SQL_150430_NA_NA
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/N33/N33_SQL_MX2_150430_NA_NA.csv |
     | MX.3 | "M_NB" |test-data/N33/N33_SQL_MX3_150430_NA_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N33/" with prefix name "N33_SQL_150430_NA_NA_" 
     Then The different result should be empty
     
  @N33_SQL_20150430_20150506_20150506
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/N33/N33_SQL_MX2_20150430_20150506_20150506.csv |
     | MX.3 | "M_NB" |test-data/N33/N33_SQL_MX3_20150430_20150506_20150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N33/" with prefix name "N33_SQL_20150430_20150506_20150506_" 
     Then The different result should be empty
          
  