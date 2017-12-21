Feature: Demo Reconciliation
  
  
  @R362
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| MX Deal No |test-data/R362/R362_DYN_MX2_NA_NA_NA.csv |
    	| MX.3 | MX Deal No |test-data/R362/R362_DYN_MX3_NA_NA_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R362/" with prefix name "R362_DYN_Result_" 
     Then The different result should be empty
     
   @R362_010316
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| MX Deal No |test-data/R362/R362_DYN_MX2_010316.csv |
    	| MX.3 | MX Deal No |test-data/R362/R362_DYN_MX3_010316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R362/" with prefix name "R362_DYN_Result_0103016" 
     Then The different result should be empty
     @PAID
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| "M_NB" |test-data/R362/BN_INT_PAID_Mx02.csv |
    	| MX.3  | "M_NB" |test-data/R362/BN_INT_PAID_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R362/" with prefix name "paid_DYN_RS_" 
     Then The different result should be empty
     
     
  @R362_030316
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| MX Deal No |test-data/R362/R362_DYN_MX2_010316.csv |
    	| MX.3 | MX Deal No |test-data/R362/R362_DYN_MX3_030316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R362/" with prefix name "R362_DYN_Result_0303016" 
     Then The different result should be empty
     