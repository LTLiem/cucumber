Feature: Demo Reconciliation
    
  @I048SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I048SQL | "M_SECID","M_AGENCY" |test-data/I048/SQL_MX2_I048.csv |
    	| MX.3_I048SQL | "M_SECID","M_AGENCY" |test-data/I048/SQL_MX3_I048.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I048/" with prefix name "I048_SQL_CSV_" 
     Then The different result should be empty