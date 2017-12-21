Feature: Demo Reconciliation
    
  @R106SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R106SQL | "M_NB","M_H_ACCOUNT" |test-data/R106/SQL_R106_MX2.csv |
    	| MX.3_R106SQL | "M_NB","M_H_ACCOUNT" |test-data/R106/SQL_R106_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R106/" with prefix name "R106_SQL_CSV_" 
     Then The different result should be empty