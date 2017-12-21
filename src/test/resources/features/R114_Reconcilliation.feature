Feature: Demo Reconciliation

  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: 06/05/2015  
  @R114
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_H_ACCOUNT,REV_DESC,M_EN_CUR |test-data/R114/R114_SQL_NA_20150506_20150506_MX2.csv |
     | MX.3 | M_H_ACCOUNT,REV_DESC,M_EN_CUR |test-data/R114/R114_SQL_NA_20150506_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R114/" with prefix name "R114_SQL_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: 06/05/2015
  #Date-2: 06/05/2015  
  @R114_SQL_Release
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_H_ACCOUNT,REV_DESC,M_EN_CUR |test-data/R114/R114_SQL_NA_20150506_20150506_MX2.csv |
     | MX.3 | M_H_ACCOUNT,REV_DESC,M_EN_CUR |test-data/R114/R114_SQL_NA_20150506_20150506_MX3_29042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R114/" with prefix name "R114_SQL_Release_" 
     Then The different result should be empty     