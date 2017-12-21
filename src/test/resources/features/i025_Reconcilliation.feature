Feature: Demo Reconciliation
    
  @i025SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_i025DM | "M_H_FAC_REF","M_H_FAC_ACC" |test-data/i025/I025_SQL_MX2.csv |
    	| MX.3_i025DM | "M_H_FAC_REF","M_H_FAC_ACC" |test-data/i025/I025_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i025/" with prefix name "i025_SQL_CSV_" 
     Then The different result should be empty