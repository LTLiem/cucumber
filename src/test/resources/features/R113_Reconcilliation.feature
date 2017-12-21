Feature: Demo Reconciliation

  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: 06/05/2015  
  @R113
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_H_DC" |test-data/R113/R113_SQL_NA_20150506_20160506_MX2.csv |
     | MX.3 | "M_NB","M_H_DC" |test-data/R113/R113_SQL_NA_20150506_20160506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R113/" with prefix name "R113_SQL_" 
     Then The different result should be empty

  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: 06/05/2015  
  @R113_SQL_05102016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_H_DC" |test-data/R113/R113_SQL_06052016_MX2.csv |
     | MX.3 | "M_NB","M_H_DC" |test-data/R113/R113_SQL_06052016_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R113/" with prefix name "R113_SQL_05102016_" 
     Then The different result should be empty     
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: 06/05/2015  
  @R113_DM_TMB_TP
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_QTY_INDEX" |test-data/R113/R123_TMB_TP_NA_NA_20150506_MX2.csv |
     | MX.3 | "M_NB","M_QTY_INDEX" |test-data/R113/R123_TMB_TP_NA_NA_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R113/" with prefix name "R113_DM_TMB_TP_" 
     Then The different result should be empty

  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: 06/05/2015  
  @R113_SQL_07072016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_H_DC" |test-data/R113/R113_SQL_06052016_MX2.csv |
     | MX.3 | "M_NB","M_H_DC" |test-data/R113/R113_SQL_06052016_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R113/" with prefix name "R113_SQL_07072016_" 
     Then The different result should be empty