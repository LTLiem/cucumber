Feature: Demo Reconciliation
    
  @CPBNDRAT_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_CPBNDRAT_SQL | "M_LABEL" |test-data/CPBNDRAT_DBF/CPBNDRAT_SQL_MX2.csv |
    	| MX.3_CPBNDRAT_SQL | "M_LABEL" |test-data/CPBNDRAT_DBF/CPBNDRAT_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/CPBNDRAT/" with prefix name "CPBNDRAT_SQL_CSV_" 
     Then The different result should be empty