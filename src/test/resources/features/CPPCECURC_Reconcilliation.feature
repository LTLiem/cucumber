Feature: Demo Reconciliation
    
  @CPPCECURC_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_CPPCECURC_SQL | "M_KEY","M_GROUP","M_TRNKEY" |test-data/CPPCECURC_DBF/CPPCECURC_R025_SQL_MX2.csv |
    	| MX.3_CPPCECURC_SQL | "M_KEY","M_GROUP","M_TRNKEY" |test-data/CPPCECURC_DBF/CPPCECURC_R025_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/CPPCECURC/" with prefix name "CPPCECURC_SQL_CSV_" 
     Then The different result should be empty