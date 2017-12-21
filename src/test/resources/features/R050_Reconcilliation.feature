Feature: Demo Reconciliation

  @R050_DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB,M_XG_NOMINAL |test-data/LOC/R050/050_MRCC_XG_MX2.csv |
    	| MX.3_R001  | M_NB,M_XG_NOMINAL |test-data/LOC/R050/R050_MRCC_XG_Mx03(2).csv |
     When I compare these "CSV" data with difference result is generated at "test-result/LOC/R050/" with prefix name "050_MRCC_XG_MX_"
     Then The different result should be empty
     
     
  @R050_DYN_25012015
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB,M_XG_NOMINAL |test-data/R050/R050_DYN_MX2_01042015_01052015_06052015.csv |
    	| MX.3_R001  | M_NB,M_XG_NOMINAL |test-data/R050/R050_DYN_MX3_01042015_01052015_06052015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R050/" with prefix name "R050_DYN_RESULT_06052015_01042015_01052015_"
     Then The different result should be empty
     
     
  @R050_SQL_25012015
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_D_GROUP","M_XG_FIXING","M_INSTRUMENT","M_TP_PFOLIO","M_XG_NOMINAL","M_XG_FIXAMTC","M_XG_NOMCUR","M_NB" |test-data/R050/R050_SQL_MX2_01042015_01052015_06052015.csv |
    	| MX.3_R001  | "M_D_GROUP","M_XG_FIXING","M_INSTRUMENT","M_TP_PFOLIO","M_XG_NOMINAL","M_XG_FIXAMTC","M_XG_NOMCUR","M_NB" |test-data/R050/R050_SQL_MX3_01042015_01052015_06052015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R050/" with prefix name "R050_SQL_MX3_01042015_01052015_06052015_"
     Then The different result should be empty
     
  @R050_end_2_end
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | Deal No. |test-data/R050/MRCC_FIXING_mx2.csv |
    	| MX.3_R001  | Deal No. |test-data/R050/MX_FIXING_2902_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R050/" with prefix name "MRCC_FIXING_mx2_01042015_01052015_06052015_"
     Then The different result should be empty
     
  @R050_end_2_end_2
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/R050/R050_LOI_MX2.csv |
    	| MX.3_R001  | M_NB |test-data/R050/R050_LOI_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R050/" with prefix name "R050_LOI_MX_01042015_01052015_06052015_"
     Then The different result should be empty