Feature: Demo Reconciliation

     
     #M_H_ACCOUNT,M_TRN_FMLY,M_TRN_GRP,M_TRN_TYPE,M_EN_DATE,M_ENTITY,M_EN_CUR,CORP_FLAG
    @R117_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R117 | M_H_ACCOUNT,M_TRN_FMLY,M_TRN_GRP,M_TRN_TYPE,M_EN_DATE,M_ENTITY,M_EN_CUR,CORP_FLAG |test-data/R117_NGU/R117_SQL_MX2.csv |
    	| MX.3_R117 | M_H_ACCOUNT,M_TRN_FMLY,M_TRN_GRP,M_TRN_TYPE,M_EN_DATE,M_ENTITY,M_EN_CUR,CORP_FLAG |test-data/R117_NGU/R117_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R117_NGU/" with prefix name "R117_SQL_RES_" 
     Then The different result should be empty
     
     
   @R117_SQL_NOGROUP
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R117 | "M_NB","M_H_DC" |test-data/R117_NGU/R117_SQL_MX2_NOGROUP.csv |
    	| MX.3_R117 |  "M_NB","M_H_DC" |test-data/R117_NGU/R117_SQL_MX3_NOGROUP.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R117_NGU/" with prefix name "R117_SQL_NOGROUP_RES_" 
     Then The different result should be empty
     
     