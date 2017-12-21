@R101
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB_TRN,M_H_DC,M_H_ACCOUNT,M_EN_CUR,M_EN_AMT |test-data/R101/R101_SQL_MX2.csv |
    	| MX.3_R001  | M_NB_TRN,M_H_DC,M_H_ACCOUNT,M_EN_CUR,M_EN_AMT |test-data/R101/R101_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R101/" with prefix name "R101_SQL_FINAL_" 
     Then The different result should be empty
     