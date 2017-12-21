Feature: Demo Reconciliation
 
  @R118_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_H_ACCOUNT,M_EN_CUR,M_DESC |test-data/R118/R118_SQL_Mx02.csv |
     | MX.3 | M_H_ACCOUNT,M_EN_CUR,M_DESC |test-data/R118/R118_SQL_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R118/" with prefix name "R118_SQL_" 
     Then The different result should be empty
     