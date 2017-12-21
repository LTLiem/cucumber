Feature: Demo Reconciliation
    
  @i021SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_i021DM | "PCECURRENT" |test-data/i021/I021_SQL_MX2.csv |
    	| MX.3_i021DM | "PCECURRENT" |test-data/i021/I021_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i021/" with prefix name "i021_SQL_CSV_" 
     Then The different result should be empty