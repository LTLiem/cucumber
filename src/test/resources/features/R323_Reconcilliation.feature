Feature: Demo Reconciliation
 
  @R323_BN_GL_PAYMENT_NA_NA_20150401
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/R323/R323_BN_GL_PAYMENT_MX02_NA_NA_20160401.csv |
     | MX.3 | "M_NB" |test-data/R323/R323_BN_GL_PAYMENT_MX03_NA_NA_20160401.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R323/" with prefix name "R323_BN_GL_PAYMENT_NA_NA_20160401_" 
     Then The different result should be empty
     
  @R323_SQL_NA_NA_20150401
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_NB" |test-data/R323/R323_SQL_MX02_NA_NA_20160401.csv |
     | MX.3 | "M_NB" |test-data/R323/R323_SQL_MX03_NA_NA_20160401.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R323/" with prefix name "R323_SQL_NA_NA_20160401_" 
     Then The different result should be empty
     
  @R323_SQL_Release
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB |test-data/R323/R323_SQL_MX02_NA_NA_20160401_28042016.csv |
     | MX.3 | M_NB |test-data/R323/R323_SQL_MX03_NA_NA_20160401_28042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R323/" with prefix name "R323_SQL_Release_" 
     Then The different result should be empty
     
  @R323_SQL_06062016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB |test-data/R323/R323_SQL_MX03_NA_NA_20160401_20160606.csv |
     | MX.3 | M_NB |test-data/R323/R323_SQL_MX03_NA_NA_20160401_28042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R323/" with prefix name "R323_SQL_06062016_" 
     Then The different result should be empty