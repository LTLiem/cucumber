Feature: Demo Reconciliation
    
  @i023SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_i023DM | "M_H_FAC_REF","M_H_FAC_CCY" |test-data/i023/I023_SQL_MX2.csv |
    	| MX.3_i023DM | "M_H_FAC_REF","M_H_FAC_CCY" |test-data/i023/I023_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i023/" with prefix name "i023_SQL_CSV_" 
     Then The different result should be empty