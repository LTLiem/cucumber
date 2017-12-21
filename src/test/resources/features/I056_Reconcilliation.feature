Feature: Demo Reconciliation
    
  @I056SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I056SQL | "M_ACCOUNT_NO" |test-data/I056/SQL_MX2_I056.csv |
    	| MX.3_I056SQL | "M_ACCOUNT_NO" |test-data/I056/SQL_MX3_I056.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I056/" with prefix name "I056_SQL_CSV_" 
     Then The different result should be empty
 
 
  @I056SQL_TEST
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I056SQL | "M_NAME" |test-data/I056/SQL_TEST_MX2_I056.csv |
    	| MX.3_I056SQL | "M_NAME" |test-data/I056/SQL_TEST_MX3_I056.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I056/" with prefix name "I056_SQL_TEST_CSV_" 
     Then The different result should be empty