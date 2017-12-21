Feature: Demo Reconciliation
     
  @R072DM_SMALL
  Scenario: Reconcile Datamart table
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R072 | "M_NB","M_QTY_INDEX","M_BUY_SELL" |test-data/R072/DM_MX2_R072.csv |
    	| MX.3_R072  | "M_CONTRACT","M_H_QTYINDEX","M_BUY_SELL" |test-data/R072/DM_MX3_R072.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R072/" with prefix name "R072_Datamart_SMALL_CSV_" 
     Then The different result should be empty
     
  @R072DEAL
  Scenario: Reconcile Datamart table
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R072 | "M_NB","M_QTY_INDEX","M_TP_BS" |test-data/R072/8154416_MX2_SQL.csv |
    	| MX.3_R072  | "M_CONTRACT","M_H_QTYINDEX","M_TP_BS" |test-data/R072/8154416_MX3_SQL.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R072/" with prefix name "R072_Datamart_DEAL_CSV_" 
     Then The different result should be empty
     
  @R072SQL
  Scenario: Reconcile Datamart table
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R072 | "DEAL_NO","M_CCY" |test-data/R072/SQL_MX2_R072.csv |
    	| MX.3_R072  | "DEAL_NO","M_CCY" |test-data/R072/SQL_MX3_R072.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R072/" with prefix name "R072_Datamart_SQL_CSV_" 
     Then The different result should be empty