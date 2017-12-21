Feature: Demo Reconciliation
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R354
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow |test-data/R354/R354_NOSTRO_PROJ_THB_MX2.csv |
     | MX.3 | Flow |test-data/R354/R354_NOSTRO_PROJ_THB_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R354/" with prefix name "R354_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: Today
  #Date-2: NA
  @R354_06072016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow# |test-data/R354/R354_NOSTRO_PROJ_THB_MX2_09052016.csv |
     | MX.3 | Flow# |test-data/R354/R354_NOSTRO_PROJ_THB_MX3_09052016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R354/" with prefix name "R354_06072016_" 
     Then The different result should be empty