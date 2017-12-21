@R105_ALL
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB_TRN,M_H_ACCOUNT,M_EN_AMT,M_H_DC |test-data/R105/R105_SQL_ALL_MX2.csv |
    	| MX.3_R001  | M_NB_TRN,M_H_ACCOUNT,M_EN_AMT,M_H_DC |test-data/R105/R105_SQL_ALL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R105/" with prefix name "R105_SQL_ALL_" 
     Then The different result should be empty