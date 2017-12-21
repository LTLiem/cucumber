Feature: Demo Reconciliation
    
  @R344
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R344 | M_NB |test-data/R344/R344_MX2_DATAMART.csv |
    	| MX.3_R344  | M_NB |test-data/R344/R344_MX3_DATAMART.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R344/" with prefix name "R344_CSV_" 
     Then The different result should be empty
 
  @R344_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R344 | "DEAL_NO" |test-data/R344/SQL_MX2_R344.csv |
    	| MX.3_R344  | "DEAL_NO" |test-data/R344/SQL_MX3_R344.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R344/" with prefix name "R344_SQL_" 
     Then The different result should be empty