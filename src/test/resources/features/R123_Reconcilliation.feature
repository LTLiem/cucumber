Feature: Demo Reconciliation
  
  #Date-0: NA
  #Date-1: 05/05/15
  #Date-2: 06/05/15 
  @R123_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_EN_CUR,M_EN_ACCOUNT,M_DESC,M_ENTITY|test-data/R123/R123_SQL_NA_20150505_20150506_MX2.csv |
    	| MX.3_R001  | M_EN_CUR,M_EN_ACCOUNT,M_DESC,M_ENTITY|test-data/R123/R123_SQL_NA_20150505_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R123/" with prefix name "R123_SQL_" 
     Then The different result should be empty