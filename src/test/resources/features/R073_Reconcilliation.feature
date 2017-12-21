Feature: Demo Reconciliation
    
  @R073
  Scenario: Reconcile extraction sql
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R344 | M_NB,M_CCY |test-data/R073/R073_MX2_DATAMART.csv |
    	| MX.3_R344  | M_NB,M_CCY |test-data/R073/R073_MX3_DATAMART.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R073/" with prefix name "R073_ExtractionSQL_CSV_" 
     Then The different result should be empty

     
  @R073A
  Scenario: Reconcile Datamart table
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R344 | M_NB |test-data/R073/trn_pl_out_fx_01_mx2.csv |
    	| MX.3_R344  | M_NB |test-data/R073/trn_pl_out_fx_01_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R073/" with prefix name "R073_Datamart_CSV_" 
     Then The different result should be empty
     
  @R073DM_SMALL
  Scenario: Reconcile Datamart table
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R073 | "M_NB","M_QTY_INDEX","M_BUY_SELL" |test-data/R073/DM_MX2_R073.csv |
    	| MX.3_R073  | "M_CONTRACT","M_H_QTYINDEX","M_BUY_SELL" |test-data/R073/DM_MX3_R073.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R073/" with prefix name "R073_Datamart_SMALL_CSV_" 
     Then The different result should be empty
     
   @R073_SQL
  Scenario: Reconcile Datamart table
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R073 | "DEAL_NO","MAIN_GROUP"|test-data/R073/SQL_MX2_R073.csv |
    	| MX.3_R073  | "DEAL_NO","MAIN_GROUP" |test-data/R073/SQL_MX3_R073.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R073/" with prefix name "R073_SQL_" 
     Then The different result should be empty
     
@R073DYN_SMALL
  Scenario: Reconcile Datamart table
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R073 | Trn# (Internal),Qty#,BOUGHT-SOLD Flag |test-data/R073/DYN_SMALL_R073_MX2.csv |
    	| MX.3_R073  | Contract reference,Qty#,BOUGHT-SOLD Flag |test-data/R073/DYN_SMALL_R073_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R073/" with prefix name "R073_DYN_SMALL_CSV_" 
     Then The different result should be empty

     