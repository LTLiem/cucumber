Feature: Demo Reconciliation
  
  
  @R339
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| IDENTITY |test-data/R339/R339_SQL_MX2_NA_150401_150430.csv |
    	| MX.3 | IDENTITY |test-data/R339/R339_SQL_MX3_NA_150401_150430.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R339/" with prefix name "R339_SQL_Result_NA_150401_150430_" 
     Then The different result should be empty
     
     
     @R339_NEWTEST
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| M_IDENTITY |test-data/R339/R339_SQL_MX2_NEW.csv |
    	| MX.3 | M_IDENTITY |test-data/R339/R339_SQL_MX3_NEW.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R339/" with prefix name "R339_SQL_Result_NEW_" 
     Then The different result should be empty
     
     
  @R339_030316
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| "M_IDENTITY" |test-data/R339/R339_SQL_MX2_030316.csv |
    	| MX.3 | "M_IDENTITY" |test-data/R339/R339_SQL_MX3_030316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R339/" with prefix name "R339_SQL_Result_030316_" 
     Then The different result should be empty