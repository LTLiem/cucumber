Feature: Demo Reconciliation
    
  @R359dyn
  Scenario: Reconcile extraction sql
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R359 | Trn# (Internal) |test-data/R359/DYN_R359_MX2.csv |
    	| MX.3_R359  | Trn# (Internal) |test-data/R359/DYN_R359_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R359/" with prefix name "R359_Dynamic_Reconcile" 
     Then The different result should be empty
     
     
   @R359_DYN
  Scenario: Reconcile extraction sql
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R359 | Trn# (Internal) |test-data/R359/R359_DYN_MX2.csv |
    	| MX.3_R359  | Trn# (Internal) |test-data/R359/R359-R360_DYN_MX3_020316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R359/" with prefix name "R359_DYN_060515_" 
     Then The different result should be empty
     
   
   @R359_030316
  Scenario: Reconcile extraction sql
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R359 | Trn# (Internal) |test-data/R359/R359_DYN_MX2.csv |
    	| MX.3_R359  | Trn# (Internal) |test-data/R359/R359-R360_DYN_MX3_030316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R359/" with prefix name "R359_DYN_030316_" 
     Then The different result should be empty