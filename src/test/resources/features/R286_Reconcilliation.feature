Feature: Demo Reconciliation

  #Date-0: NA
  #Date-1: 05/05/2015
  #Date-2: 06/05/2015  
  @R286_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/R286/R286_DYN_NA_20150506_20150506_MX2.csv |
     | MX.3 | "M_NB" |test-data/R286/R286_DYN_NA_20150506_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R286/" with prefix name "R286_DYN_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: 05/05/2015
  #Date-2: 06/05/2015  
  @R286_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "NB1" |test-data/R286/R286_SQL_NA_20150506_20150506_MX2.csv |
     | MX.3 | "NB1" |test-data/R286/R286_SQL_NA_20150506_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R286/" with prefix name "R286_SQL_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: Yesterday
  #Date-2: Today  
  @R286_SQL_12072016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| NB1 |test-data/R286/R286_SQL_NA_20160509_20160506_FULL_MX2.csv |
     | MX.3 | NB1 |test-data/R286/R286_SQL_NA_20160509_20160506_FULL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R286/" with prefix name "R286_SQL_12072016_" 
     Then The different result should be empty