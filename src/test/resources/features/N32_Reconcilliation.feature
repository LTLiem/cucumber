Feature: Demo Reconciliation
    
  @N32SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_N32 | "M_REF" |test-data/N32/SQL-MX2-N32.csv |
    	| MX.3_N32  | "M_REF" |test-data/N32/SQL-MX3-N32.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N32/" with prefix name "N32_SQL_CSV_" 