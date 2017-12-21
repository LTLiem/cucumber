@R115_ALL
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_EN_CUR,M_TRN_FMLY,M_TRN_GRP,M_TRN_TYPE,M_H_ACCOUNT,DR_COUNT,CR_COUNT |test-data/R115/R115_SQL_ALL_MX2.csv |
    	| MX.3_R001  | M_EN_CUR,M_TRN_FMLY,M_TRN_GRP,M_TRN_TYPE,M_H_ACCOUNT,DR_COUNT,CR_COUNT |test-data/R115/R115_SQL_ALL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R115/" with prefix name "R115_SQL_ALL_" 
     Then The different result should be empty
     
     
     
     
     
     