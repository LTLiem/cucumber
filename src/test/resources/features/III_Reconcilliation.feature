Feature: Demo Reconciliation
  @000
  Scenario: Reconcile DYN_TP_FX_OUT
    Given I have two CSV files as below
    	| Data Name  | File path                    |
    	| MxG2K_I051 | test-data/I051/FX_OUT_THB_MX2.csv|
    	| MX.3_I051  | test-data/I051/FX_OUT_THB_MX3.csv|
      And The data structure of these data is at "test-data/I051/FX_OUT_THB_Metadata.csv"
     When I compare these data with difference result is generated at "test-result/I051/" with prefix name "I051_TP_FX_OUTMTM_" 
     Then The different result should be empty
     
     
  @I051
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I051 | "M_NB","M_H_PAY_DTE" |test-data/III/I051_2.csv |
    	| MX.3_I051  | "M_NB","M_H_PAY_DTE" |test-data/III/I051_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/III/" with prefix name "I051_CSV_DM_" 
     Then The different result should be empty
     
	@DDE
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I051 | "M_H_NB","M_H_PAY_DTE" |test-data/III/DDE2.csv |
    	| MX.3_I051  | "M_H_NB","M_H_PAY_DTE" |test-data/III/DDE3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/III/" with prefix name "DDE_CSV_DM_" 
     Then The different result should be empty
     
     @DMM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I051 | "M_H_NB","M_H_PAY_DTE" |test-data/III/DMM2.csv |
    	| MX.3_I051  | "M_H_NB","M_H_PAY_DTE" |test-data/III/DMM3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/III/" with prefix name "DMM_CSV_DM_" 
     Then The different result should be empty
     
    @I043
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I043 | ACCOUNT_NO,TMB_EXT_PRODUCT_TYPE_CD,H_PROD,TYPE_CRD |test-data/III/NAME_DYN2.csv |
    	| MX.3_I043  | ACCOUNT_NO,TMB_EXT_PRODUCT_TYPE_CD,H_PROD,TYPE_CRD |test-data/III/NAME_DYN3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/III/" with prefix name "NAME_CSV_DYN_" 
     Then The different result should be empty

     @NAME
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I043 | M_H_ACC_ID,M_H_EXT_PROD,M_H_PROD,M_H_TYPE_CRD |test-data/III/mx_name2.csv |
    	| MX.3_I043  | M_H_ACC_ID,M_H_EXT_PROD,M_H_PROD,M_H_TYPE_CRD |test-data/III/mx_name3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/III/" with prefix name "SQL_NAME_CSV_DYN_" 
     Then The different result should be empty
     
     
      @TTTT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I000 | rtsh:currency,rtsh:type,rtsh:generator,rtsh:maturity |test-data/III/rtsh_ric_mx2.csv |
    	| MX.3_I000  | rtsh:currency,rtsh:type,rtsh:generator,rtsh:maturity |test-data/III/rtsh_ric_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/III/" with prefix name "rtsh_" 
     Then The different result should be empty
     
     
   @ffaa
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I000 | fxsw:pair,fxsw:curveLabel,fxsw:type,fxsw:generator,fxsw:maturity |test-data/III/fxsw_mx2_ric.csv |
    	| MX.3_I000  | fxsw:pair,fxsw:curveLabel,fxsw:type,fxsw:generator,fxsw:maturity |test-data/III/fxsw_ric_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/III/" with prefix name "fxsw_" 
     
     @I012
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I043 | M_H_NB,M_H_VALUE,M_H_CAL_END,M_H_CAL_STRT,M_H_AMT |test-data/III/mx2_i012_1.csv |
    	| MX.3_I043  | M_NB,M_H_VALUE,M_H_CAL_END,M_H_CAL_STRT,M_H_AMT |test-data/III/mx3_i012_1.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/III/" with prefix name "CASHFLOW_DYN_" 
     Then The different result should be empty
     
     
     @CURVE
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I043 | "M_H_CRV_LABEL" |test-data/III/I041_MARKET_CURVE_MX2.csv |
    	| MX.3_I043  | "M_H_CRV_LABEL" |test-data/III/I041_MARKET_CURVE_MX32.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/III/" with prefix name "I041_MARKET_CURVE_32_" 
     Then The different result should be empty