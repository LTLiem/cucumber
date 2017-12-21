Feature: Demo Reconciliation

  #Date-0: 30/04/2015
  #Date-1: 06/05/2015
  #Date-2: 06/05/2015  
  @R111
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/R111/R111_SQL_20150430_20150506_20150506_MX2_Edit.csv |
     | MX.3 | "M_NB" |test-data/R111/R111_SQL_20150430_20150506_20150506_MX3_Edit.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R111/" with prefix name "R111_SQL_" 
     Then The different result should be empty
     
  #Date-0: 30/04/2015
  #Date-1: 06/05/2015
  #Date-2: 06/05/2015  
  @R111_SQL_Release
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB |test-data/R111/R111_SQL_20150430_20150506_20150506_MX2_Edit_29042016.csv |
     | MX.3 | M_NB |test-data/R111/R111_SQL_20150430_20150506_20150506_MX3_29042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R111/" with prefix name "R111_SQL_Release_" 
     Then The different result should be empty