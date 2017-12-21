Feature: Demo Reconciliation
    
  @R218SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R218SQL | "M_AGENT" |test-data/R218/SQL_MX2_R218.csv |
    	| MX.3_R218SQL | "M_AGENT" |test-data/R218/SQL_MX3_R218.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R218/" with prefix name "R218_SQL_CSV_" 
     Then The different result should be empty
     
  @R218DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R218DM | "M_TP_IQTY","M_AGENT" |test-data/R218/DM_MX2_R218.csv |
    	| MX.3_R218DM | "M_AGENT","M_AGENT", |test-data/R218/DM_MX3_R218.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R218/" with prefix name "R218_DM_CSV_" 
     Then The different result should be empty
