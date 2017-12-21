Feature: Demo Reconciliation
    
  @CPPCECUR_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_CPPCECUR_SQL | "M_KEY","M_GROUP","M_PILLAR" |test-data/CPPCECUR_DBF/CPPCECUR_SQL_MX2.csv |
    	| MX.3_CPPCECUR_SQL | "M_KEY","M_GROUP","M_PILLAR" |test-data/CPPCECUR_DBF/CPPCECUR_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/CPPCECUR/" with prefix name "CPPCECUR_SQL_CSV_" 
     Then The different result should be empty