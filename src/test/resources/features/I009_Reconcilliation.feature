Feature: Demo Reconciliation
  
  @I009_DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_TRN_AMT","M_H_RC_ID" |test-data/LOC/I009/I009_01052015_MX2.csv |
    	| MX.3_R001  | "M_H_NB","M_H_TRN_AMT","M_H_RC_ID" |test-data/LOC/I009/I009_01052015_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/LOC/I009/" with prefix name "I009_01052015_MX_"
     Then The different result should be empty
     
  @I009_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_TRN_AMT","M_H_GL_ID","M_H_TMB_REF" |test-data/LOC/I009/I009_SQL_MX2.csv |
    	| MX.3_R001  | "M_H_TRN_AMT","M_H_GL_ID","M_H_TMB_REF" |test-data/LOC/I009/I009_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/LOC/I009/" with prefix name "I009_SQL_MX_"
     Then The different result should be empty
     
     
  @I009_DM_25012016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_TRN_AMT","M_H_RC_ID" |test-data/I009/I009_DYN_MX2_01052015_NA_NA.csv |
    	| MX.3_R001  | "M_H_NB","M_H_TRN_AMT","M_H_RC_ID" |test-data/I009/I009_DYN_MX3_01052015_NA_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I009/" with prefix name "I009_DYN_RESULT_01052015_NA_NA_"
     Then The different result should be empty
     
  @I009_SQL_25012016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_TRN_AMT","M_H_GL_ID","M_H_TMB_REF" |test-data/I009/I009_SQL_MX2_01052015_NA_NA.csv |
    	| MX.3_R001  | "M_H_TRN_AMT","M_H_GL_ID","M_H_TMB_REF" |test-data/I009/I009_SQL_MX3_01052015_NA_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I009/" with prefix name "I009_SQL_RESULT_01052015_NA_NA_"
     Then The different result should be empty
     