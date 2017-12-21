Feature: Demo Reconciliation
  
  @R31X_RECONCILE_DATA_DM_TABLE
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB,M_AGENT,M_H_TRN_STS2 |test-data/FX_SALE_R31X/tmb_tp_fx_sale_0605_0705_mx2.csv |
    	| MX.3_R001  | M_NB,M_AGENT,M_H_TRN_STS2 |test-data/FX_SALE_R31X/tmb_tp_fx_sale_0605_0705_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FX_SALE_R31X/" with prefix name "FX_SALE_R31X_CSV_"
     Then The different result should be empty
     

  @R31X_RECONCILE_DATA_DM_TABLE_1211
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB,M_AGENT,M_H_TRN_STS2 |test-data/FX_SALE_R31X/tmb_tp_fx_sale_0605_0705_mx2.csv |
    	| MX.3_R001  | M_NB,M_AGENT,M_H_TRN_STS2 |test-data/FX_SALE_R31X/tmb_tp_fx_sale_0605_0705_mx3_1211_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FX_SALE_R31X/" with prefix name "FX_SALE_R31X_1211_CSV_"
     Then The different result should be empty

  @R312_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/FX_SALE_R31X/R312_SQL_0705_MX2.csv |
    	| MX.3_R001  | M_NB |test-data/FX_SALE_R31X/R312_SQL_0705_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FX_SALE_R31X/" with prefix name "R312_SQL_0705_CSV_"
     Then The different result should be empty
     
  @R313_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/FX_SALE_R31X/R313_SQL_0705_MX2.csv |
    	| MX.3_R001  | M_NB |test-data/FX_SALE_R31X/R313_SQL_0705_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FX_SALE_R31X/" with prefix name "R313_SQL_0705_CSV_"
     Then The different result should be empty
     
     
  @R314_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/FX_SALE_R31X/R314_SQL_0705_MX2.csv |
    	| MX.3_R001  | M_NB |test-data/FX_SALE_R31X/R314_SQL_0705_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FX_SALE_R31X/" with prefix name "R314_SQL_0705_MX2_CSV_"
     Then The different result should be empty
     
     
  @R316_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/FX_SALE_R31X/R316_SQL_0705_MX2.csv |
    	| MX.3_R001  | M_NB |test-data/FX_SALE_R31X/R316_SQL_0705_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FX_SALE_R31X/" with prefix name "R316_SQL_0705_CSV_"
     Then The different result should be empty
     
     
  @06012016
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_NB,M_H_VALUE |test-data/FX_SALE_R31X/TMB_DWH_CFFLW_REP_06052015_MX2.csv |
    	| MX.3_R001  | M_H_NB,M_H_VALUE |test-data/FX_SALE_R31X/TMB_DWH_CFFLW_REP_06052015_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FX_SALE_R31X/" with prefix name "TMB_DWH_CFFLW_REP_06052015_MX_"
     Then The different result should be empty
     
     
  @06012016_mrcc
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB,M_XG_FIXMOD |test-data/FX_SALE_R31X/TMB_TP_FX_IN_TMO_REP_06052015_MX2.csv |
    	| MX.3_R001  | M_NB,M_XG_FIXMOD |test-data/FX_SALE_R31X/TMB_TP_FX_IN_TMO_REP_06052015_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FX_SALE_R31X/" with prefix name "TMB_TP_FX_IN_TMO_REP_06052015_MX_"
     Then The different result should be empty