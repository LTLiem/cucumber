Feature: Demo Reconciliation
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R353
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow |test-data/R353/R353_NOSTRO_PROJ_NON_MX2.csv |
     | MX.3 | Flow |test-data/R353/R353_NOSTRO_PROJ_NON_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R353/" with prefix name "R353_" 
     Then The different result should be empty
   
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R353_21042016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow# |test-data/R353/R353-NOSTRO_PROJ_NON_MX2_21042016.csv |
     | MX.3 | Flow# |test-data/R353/R353_NOSTRO_PROJ_NON_MX3_21042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R353/" with prefix name "R353_21042016_" 
     Then The different result should be empty
     
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: NA
  @R353_25042016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow# |test-data/R353/R353-NOSTRO_PROJ_NON_MX2_21042016.csv |
     | MX.3 | Flow# |test-data/R353/R353_NOSTRO_PROJ_NON_MX3_25042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R353/" with prefix name "R353_25042016_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: Today
  #Date-2: NA
  @R353_06072016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Flow# |test-data/R353/R353_NOSTRO_PROJ_NON_MX2_09052016.csv |
     | MX.3 | Flow# |test-data/R353/R353_NOSTRO_PROJ_NON_MX3_09052016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R353/" with prefix name "R353_06072016_" 
     Then The different result should be empty    