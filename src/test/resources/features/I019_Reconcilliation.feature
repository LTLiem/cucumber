Feature: Demo Reconciliation

  @I019_DYN_25012016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_REC_IND","M_H_AS_AT","M_LABEL","M_ISO_CODE" |test-data/I019/I019_DBF_MX2_NA_NA_NA.csv |
    	| MX.3_R001  | "M_H_REC_IND","M_H_AS_AT","M_LABEL","M_ISO_CODE" |test-data/I019/I019_DBF_MX3_NA_NA_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I019/" with prefix name "I019_DBF_RESULT_NA_NA_NA_"
     Then The different result should be empty
     
  @I019_SQL_26022016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | STR |test-data/I019/I019_SQL_MX2.csv|
    	| MX.3_R001  | STR |test-data/I019/I019_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I019/" with prefix name "I019_SQL_MX_"
     Then The different result should be empty