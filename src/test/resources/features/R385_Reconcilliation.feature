Feature: Demo Reconciliation
  
   @I008_BOOUT_CF
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | Trn# (Internal),Value date,Flow leg |test-data/I008/I008_CFFLW_MX2b_NA_150505_150506.csv |
    	| MX.3_I008 | Trn# (Internal),Value date,Flow leg	|test-data/I008/I008_CFFLW_MX3b_NA_150505_150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_CFFLW_RESb_NA_150505_150506_" 
     Then The different result should be empty
     
     
     
   @I008_BOOUT_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BOOUT_MX2_NA_150330_150331.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_BOOUT_MX3_NA_150330_150331.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_RES_BOOUT_" 
     Then The different result should be empty
     
      @I008_BOOUT_DYN_136
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BOOUT_MX2_NA_150330_150331_136rows.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_BOOUT_MX3_NA_150330_150331_136rows.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_RES_BOOUT_136_" 
     Then The different result should be empty
     
     
  @I008_BOOUT_SQL_136
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BOOUT_MX2_NA_150330_150331_136rows.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_SQL_BOOUT_MX3filter_NA_150330_150331_136rows.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_RES_SQL_BOOUT_FILTER_" 
     Then The different result should be empty
     
     
   @I008_BOOUT_SQL_mig_del
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BOOUT_MX2_NA_150330_150331_136rows.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_SQL_BOOUT_MX3_MIG_DEL.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_SQL_BOOUT_MIG_DEL_RES_" 
     Then The different result should be empty
     
     
  @I008_BOLR_INIT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BOLR_MX2_NA_150306_150309_INIT.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_BOLR_MX3_INIT_REFEED.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_BOLR_RES_refeed_" 
     Then The different result should be empty
     
       
  @I008_BOLR_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BOLR_MX2_NA_150306_150309_INIT.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_SQL_BOLR_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_SQL_BOLR_RES_" 
     Then The different result should be empty   
     
   
   
    @I008_BOLR_SQL_MIG
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BOLR_MX2_NA_150306_150309_INIT.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_SQL_BOLR_MX3_MIG_DEL.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_SQL_BOLR_MIG_" 
     Then The different result should be empty   
     
 
 
 	#So sanh du lieu sau khi da remove field
     @I008_BOCD_DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BOCD_MX2_NA_150505_150506.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_BOCD_MX3_NA_150505_150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_BOCD_MX3_NA_150505_150506_" 
     Then The different result should be empty  
     
     
   @I008_BOCD_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BOCD_MX2_NA_150505_150506.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_SQL_BOCD_MIG_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_SQL_BOCD_MIG_RES_" 
     Then The different result should be empty  
     
     
 @I008_BORP_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_BORP_MX2_INIT.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_BORP_MX3_MIG.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_SQL_BORP_MIG_RES_" 
     Then The different result should be empty  
     
 @I008_MMGL_FST_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB,M_H_DC,M_H_RULE |test-data/I008/I008_FST_MX2.csv |
    	| MX.3_I008 | M_H_NB,M_H_DC,M_H_RULE |test-data/I008/I008_FST_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_SQL_FST_RES_" 
     Then The different result should be empty  
     
  
  #DATE0:NULL
  #DATE1:05-MAY-15
  #DATE2:06-MAY-15
  @I008_SQL_FIN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_NB |test-data/I008/I008_SQL_FIN_MX2.csv |
    	| MX.3_I008 | M_H_NB |test-data/I008/I008_SQL_FIN_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_SQL_FIN_RES_" 
     Then The different result should be empty  
         
 @I008_SQL_ALL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_ID_NUM,M_H_ORG_NUM |test-data/I008/I008_SQL_MX2.csv |
    	| MX.3_I008 | M_H_ID_NUM,M_H_ORG_NUM |test-data/I008/I008_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_SQL_RES_" 
     Then The different result should be empty  
     
     
  @I008_SQL_ALL_MIG
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I008 | M_H_ID_NUM,M_H_ORG_NUM |test-data/I008/I008_SQL_MX2.csv |
    	| MX.3_I008 | M_H_ID_NUM,M_H_ORG_NUM |test-data/I008/I008_SQL_MX3_MIG.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008/" with prefix name "I008_SQL_MIG_RES_" 
     Then The different result should be empty  