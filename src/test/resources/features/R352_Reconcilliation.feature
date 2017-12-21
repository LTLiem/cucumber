Feature: Demo Reconciliation
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R352
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow |test-data/R352/R352_NOSTRO_PROJ_20150506_MX02.csv |
     | MX.3 | Flow |test-data/R352/R352_NOSTRO_PROJ_20150506_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R352/" with prefix name "R352_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R352_Nostro_ProJ
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow |test-data/R352/R352_NOSTRO_PROJ_MX02.csv |
     | MX.3 | Flow |test-data/R352/R352_NOSTRO_PROJ_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R352/" with prefix name "R352_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R352_Nostro_ProJ_20042016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow# |test-data/R352/R352-NOSTRO_PROJ_06052015_MX2_20042016.csv |
     | MX.3 | Flow# |test-data/R352/R352_NOSTRO_PROJ_20150506_MX03_20042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R352/" with prefix name "R352_20042016_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R352_25042016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow# |test-data/R352/R352_NOSTRO_PROJ_MX2_25042015.csv |
     | MX.3 | Flow# |test-data/R352/R352_NOSTRO_PROJ_MX3_25042015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R352/" with prefix name "R352_25042016_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: Today
  #Date-2: NA
  @R352_22082016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Reference |test-data/R352/R352_NOSTRO_PROJ_MX02_09052016.csv |
     | MX.3 | Reference |test-data/R352/R352_NOSTRO_PROJ_MX03_09052016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R352/" with prefix name "R352_22082016_" 
     Then The different result should be empty