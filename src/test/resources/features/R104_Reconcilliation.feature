#@R104_LEG2
#Feature: Demo Reconciliation
#  Scenario: Reconcile CSV files from two datasources driven by header row
#    Given I have two CSV files separated by "!" as below
#    	| Data Name  | Key Columns             | File path                            |
#    	| MxG2K_R001 | M_NB 	  |test-data/R104/R104_SQL_LEG2_MX2.csv |
#    	| MX.3_R001  | M_CONTRACT |test-data/R104/R104_SQL_LEG2_MX3.csv |
#     When I compare these "CSV" data with difference result is generated at "test-result/R104/" with prefix name "R104_SQL_LEG2_" 
#     Then The different result should be empty
     
@R104_ALL
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB_TRN,M_H_ACCOUNT,M_EN_AMT,M_H_DC |test-data/R104/R104_SQL_ALL_MX2.csv |
    	| MX.3_R001  | M_NB_TRN,M_H_ACCOUNT,M_EN_AMT,M_H_DC |test-data/R104/R104_SQL_ALL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R104/" with prefix name "R104_SQL_ALL_" 
     Then The different result should be empty