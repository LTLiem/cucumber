Feature: Demo Reconciliation
 
  @R119_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| "M_H_ACCOUNT","M_EN_CUR","M_DESC","M_ENTITY" |test-data/R119/R119_SQL_Mx02.csv |
     | MX.3 | "M_H_ACCOUNT","M_EN_CUR","M_DESC","M_ENTITY" |test-data/R119/R119_SQL_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R119/" with prefix name "R119_SQL_" 
     Then The different result should be empty
  
  @R119_28042016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB,M_H_ACCOUNT |test-data/R119/R119_28042016_MX2.csv |
     | MX.3 | M_NB,M_H_ACCOUNT |test-data/R119/R119_28042016_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R119/" with prefix name "R119_28042016_" 
     Then The different result should be empty