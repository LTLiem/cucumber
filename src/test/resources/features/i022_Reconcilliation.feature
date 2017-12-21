Feature: Demo Reconciliation
    
  @i022SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_i022DM | "M_REF","M_SETTLE_DT" |test-data/i022/I022_SQL_MX2.csv |
    	| MX.3_i022DM | "M_REF","M_SETTLE_DT" |test-data/i022/I022_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i022/" with prefix name "i022_SQL_CSV_" 
     Then The different result should be empty