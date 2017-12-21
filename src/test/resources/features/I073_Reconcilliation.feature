Feature: Demo Reconciliation
 
  @I073_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_H_DC" |test-data/I073/TMB_GL_Mx02.csv |
     | MX.3 | "M_NB","M_H_DC" |test-data/I073/TMB_GL_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I073/" with prefix name "I073_DYN_RS_" 
     Then The different result should be empty
     
  @I073_F2F
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| KEY |test-data/I073/TMB_GL_DEV_4.csv |
     | MX.3 | KEY |test-data/I073/TMB_GL_DEV.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I073/" with prefix name "I073_F2F_" 
     Then The different result should be empty
     
  @I073_SQL_150506_150506_NA
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_H_DC" |test-data/I073/I073_SQL_MX2_150506_150506_NA.csv |
     | MX.3 | "M_NB","M_H_DC" |test-data/I073/I073_SQL_MX3_150506_150506_NA_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I073/" with prefix name "I073_SQL_150506_150506_NA_" 
     Then The different result should be empty
     
  @I073_DYN_150506_150506_NA
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_H_DC" |test-data/I073/I073_DYN_MX2_150506_150506_NA.csv |
     | MX.3 | "M_NB","M_H_DC" |test-data/I073/I073_DYN_MX3_150506_150506_NA_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I073/" with prefix name "I073_DYN_150506_150506_NA_" 
     Then The different result should be empty


  @I073_DYN_150506_150506_150506
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_H_DC" |test-data/I073/DYN_GL_MX2.csv |
     | MX.3 | "M_NB","M_H_DC" |test-data/I073/DYN_GL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I073/" with prefix name "DYN_GL_" 
     Then The different result should be empty

  @I073_SQL_150506_150506_150506
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_H_DC" |test-data/I073/I073_SQL_MX2.csv |
     | MX.3 | "M_NB","M_H_DC" |test-data/I073/I073_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I073/" with prefix name "I073_SQL_" 
     Then The different result should be empty
     
  @I073_SQL_160506_160714
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB","M_H_DC" |test-data/I073/I073_SQL_MX2_14072016.csv |
     | MX.3 | "M_NB","M_H_DC" |test-data/I073/I073_SQL_MX3_14072016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I073/" with prefix name "I073_SQL_160506_160714_" 
     Then The different result should be empty
     
     