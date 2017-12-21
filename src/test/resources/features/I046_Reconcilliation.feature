Feature: Demo Reconciliation
  
  @I046
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_H_NB,M_H_AMT,M_H_TXN_DTE,M_H_CCY|test-data/I046/PAYMENT_TXN_MX02.csv |
    	| MX.3_R001  | M_H_NB,M_H_AMT,M_H_TXN_DTE,M_H_CCY|test-data/I046/PAYMENT_TXN_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I046/" with prefix name "I046_CSV_" 
     Then The different result should be empty
  
  
  #Date-0: NA
  #Date-1: 29/04/2015
  #Date-2: 30/04/2015   
  @I046_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_H_NB,M_H_CCY|test-data/I046/I046_MX_PAYTXN_SQL_MX2.csv |
    	| MX.3_R001  | M_H_NB,M_H_CCY|test-data/I046/I046_MX_PAYTXN_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I046/" with prefix name "I046_SQL_" 
     Then The different result should be empty  