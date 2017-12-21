Feature: Demo Reconciliation
  
  @R370_LM_CS_Cashflow
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_CS_Cashflow_Mx2.csv |
    	| MX.3  | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_CS_Cashflow_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_CS_Cashflow_" 
     Then The different result should be empty

     
       @R370_LM_CS_Cashflow_REV
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_CS_Cashflow_Mx2_REV.csv |
    	| MX.3  | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_CS_Cashflow_Mx3_REV.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_CS_Cashflow_REV_" 
     Then The different result should be empty
     
  @R370_LM_IRS_Cashflow_REC
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_IRS_Cashflow_REC_MX2.csv |
    	| MX.3  | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_IRS_Cashflow_REC_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_IRS_Cashflow_REC_" 
     Then The different result should be empty
     
       @R370_LM_IRS_Cashflow_PAY
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_IRS_Cashflow_PAY_MX2.csv |
    	| MX.3  | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_IRS_Cashflow_PAY_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_IRS_Cashflow_PAY_" 
     Then The different result should be empty
     
       @R370_LM_IRS_Cashflow_PAY_H_F_LEG
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_IRS_Cashflow_PAY_MX2.csv |
    	| MX.3  | Trn# (Internal),Currency,LEG_FLAG,FV_FLAG,Flow SubType Label0,Flow SubType Label1,Flow SubType Label2,Flow SubType Label3,Flow SubType Label4 |test-data/R370/R370_LM_IRS_Cashflow_PAY_MX3_H_F_LEG.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_IRS_Cashflow_PAY_H_F_LEG_" 
     Then The different result should be empty
     
     
     
#####################################     
     
  @R370_LM_CS_Enter_PAY
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal) |test-data/R370/R370_LM_CS_Enter_PAY_MX2.csv |
    	| MX.3  | Trn# (Internal) |test-data/R370/R370_LM_CS_Enter_PAY_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_CS_Enter_PAY_" 
     Then The different result should be empty
     
       @R370_LM_CS_Enter_REC
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal) |test-data/R370/R370_LM_CS_Enter_REC_MX2.csv |
    	| MX.3  | Trn# (Internal) |test-data/R370/R370_LM_CS_Enter_REC_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_CS_Enter_REC_" 
     Then The different result should be empty

 ##########
   @R370_LM_CS_Outstanding_PAY
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal) |test-data/R370/R370_LM_CS_Outstanding_PAY_MX2.csv |
    	| MX.3  | Trn# (Internal) |test-data/R370/R370_LM_CS_Outstanding_PAY_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_CS_Outstanding_PAY_" 
     Then The different result should be empty
     
     
 #################    
     @R370_LM_IRS_Enter_PAY
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal) |test-data/R370/R370_LM_IRS_Enter_PAY_Mx2.csv |
    	| MX.3  | Trn# (Internal) |test-data/R370/R370_LM_IRS_Enter_PAY_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_IRS_Enter_PAY_" 
     Then The different result should be empty
     
     @R370_LM_IRS_Enter_REC
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal) |test-data/R370/R370_LM_IRS_Enter_REC_Mx2.csv |
    	| MX.3  | Trn# (Internal) |test-data/R370/R370_LM_IRS_Enter_REC_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_IRS_Enter_REC_" 
     Then The different result should be empty
 ###############
 
  @R370_LM_IRS_Outstanding_PAY
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal) |test-data/R370/R370_LM_IRS_Outstanding_PAY_Mx2.csv |
    	| MX.3  | Trn# (Internal) |test-data/R370/R370_LM_IRS_Outstanding_PAY_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_IRS_Outstanding_PAY_" 
     Then The different result should be empty
     
  @R370_LM_IRS_Outstanding_REC
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal) |test-data/R370/R370_LM_IRS_Outstanding_REC_Mx2.csv |
    	| MX.3  | Trn# (Internal) |test-data/R370/R370_LM_IRS_Outstanding_REC_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R370/" with prefix name "R370_LM_IRS_Outstanding_REC_" 
     Then The different result should be empty