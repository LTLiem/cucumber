Feature: Demo Reconciliation
 
  @I057_SQL_150506_150506_NA
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "FMS_CUR","EN_ACCOUNT" |test-data/I057/I057_SQL_150506_150506_NA_Mx02.csv |
     | MX.3 | "FMS_CUR","EN_ACCOUNT" |test-data/I057/I057_SQL_150506_150506_NA_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I057/" with prefix name "I057_SQL_150506_150506_NA_" 
     Then The different result should be empty
     
  @I057_SQL_Release
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| FMS_CUR,EN_ACCOUNT |test-data/I057/I057_SQL_150506_150506_NA_Mx02_29042016.csv |
     | MX.3 | FMS_CUR,EN_ACCOUNT |test-data/I057/I057_SQL_150506_150506_NA_Mx03_29042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I057/" with prefix name "I057_SQL_Release_" 
     Then The different result should be empty