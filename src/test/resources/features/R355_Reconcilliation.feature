Feature: Demo Reconciliation
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R355
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow |test-data/R355/R355_NOSTRO_PROJ_USD_MX2.csv |
     | MX.3 | Flow |test-data/R355/R355_NOSTRO_PROJ_USD_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R355/" with prefix name "R355_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R355_25042015
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow# |test-data/R355/R355-NOSTRO_PROJ_USD_06052015_MX2_25042015.csv |
     | MX.3 | Flow# |test-data/R355/R355-NOSTRO_PROJ_USD_06052015_MX3_25042015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R355/" with prefix name "R355_25042015_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: Today
  #Date-2: NA
  @R355_06072016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow# |test-data/R355/R355_NOSTRO_PROJ_USD_MX2_09052016.csv |
     | MX.3 | Flow# |test-data/R355/R355_NOSTRO_PROJ_USD_MX3_09052016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R355/" with prefix name "R355_06072016_" 
     Then The different result should be empty
     
  #Date : 09/05/2016
  @R355_19082016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Reference |test-data/R355/R355_NOSTRO_PROJ_USD_MX2_09052016_19082016.csv |
     | MX.3 | Reference |test-data/R355/R355_NOSTRO_PROJ_USD_MX3_09052016_19082016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R355/" with prefix name "R355_19082016_" 
     Then The different result should be empty