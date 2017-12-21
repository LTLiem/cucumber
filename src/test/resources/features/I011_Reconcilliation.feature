Feature: Demo Reconciliation
   #DATE 0: NULL
   #DATE 1: 05-05-15
   #DATE 2: 06-05-15
  @I011_CFOUT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I011 | M_H_NB |test-data/I011/I011_CFOUT_MX2_NA_150505_150506.csv |
    	| MX.3_I011 |  M_NB |test-data/I011/I011_CFOUT_MX33_NA_150505_150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I011/" with prefix name "I011_CFOUT_RES_NA_150505_150506_" 
     Then The different result should be empty
     
     
   @I011_CFFLW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I011 | "M_H_NB","M_H_VALUE" |test-data/I011/I011_CFFLW_MX22_NA_150505_150506.csv |
    	| MX.3_I011 | "M_H_NB","M_H_VALUE"	|test-data/I011/I011_CFFLW_MX3_NA_150505_150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I011/" with prefix name "I011_CFFLW_RES_NA_150505_150506_" 
     Then The different result should be empty
     
   #DATE 0: NULL
   #DATE 1: 05-05-15
   #DATE 2: 06-05-15
    @I011_CFFLW_txt
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I011 | M_H_ARR_NO 	|test-data/I011/RS2.csv |
    	| MX.3_I011  | M_H_ARR_NO	|test-data/I011/RS3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I011/" with prefix name "RSS_" 
     Then The different result should be empty
     
  
      @I011_CF
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I011 | Trn# (Internal),Value date,Flow leg |test-data/I011/I011_CF_MX2_NA_150505_150506.csv |
    	| MX.3_I011 | Trn# (Internal),Value date,Flow leg	|test-data/I011/I011_CF_MX3_NA_150505_150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I011/" with prefix name "I011_CF_RES_NA_150505_150506_" 
     Then The different result should be empty
     
     
     @I011_CFb
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I011 | Trn# (Internal),Value date,Flow leg |test-data/I011/I011_CFFLW_MX2b_NA_150505_150506.csv |
    	| MX.3_I011 | Trn# (Internal),Value date,Flow leg	|test-data/I011/I011_CFFLW_MX3b_NA_150505_150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I011/" with prefix name "I011_CFFLW_RESb_NA_150505_150506_" 
     Then The different result should be empty
     
   #DATE 0: NULL
   #DATE 1: 05-05-15
   #DATE 2: 06-05-15
   @I011_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I011 | M_H_ARR_NO 	|test-data/I011/I011_SQL_MX2.csv |
    	| MX.3_I011  | M_H_ARR_NO	|test-data/I011/I011_SQL_MX3_040416.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I011/" with prefix name "I011_SQL_RES_040416_" 
     Then The different result should be empty