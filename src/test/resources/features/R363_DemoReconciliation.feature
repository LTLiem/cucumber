Feature: Demo Reconciliation
  
  
  @R363
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| MX Deal No,Buy/Sell Flag (B/S) |test-data/R363/R363_DYN_MX2.csv |
    	| MX.3 | MX Deal No,Buy/Sell Flag (B/S) |test-data/R363/R363_DYN_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R363/" with prefix name "R363_DYN_Result_" 
     Then The different result should be empty
     
     
  @R363_010316
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| MX Deal No,Buy/Sell Flag (B/S) |test-data/R363/R363_DYN_MX2_010316.csv |
    	| MX.3 | MX Deal No,Buy/Sell Flag (B/S) |test-data/R363/R363_DYN_MX3_020316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R363/" with prefix name "R363_DYN_RS_010316_" 
     Then The different result should be empty
     
     
   @R363_030316
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| MX Deal No,Buy/Sell Flag (B/S) |test-data/R363/R363_DYN_MX2_010316.csv |
    	| MX.3 | MX Deal No,Buy/Sell Flag (B/S) |test-data/R363/R363_DYN_MX3_030316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R363/" with prefix name "R363_DYN_RS_030316_" 
     Then The different result should be empty
     
     
     
    @R364
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| MX Deal No |test-data/R363/R364_LM_FX_TRAN_MX2.csv |
    	| MX.3 | MX Deal No |test-data/R363/R364_LM_FX_TRAN_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R363/" with prefix name "R364_LM_FX_TRAN_Result" 
     Then The different result should be empty
     
     
      
    @R339
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| "M_IDENTITY" |test-data/R363/audit_period_mx2.csv |
    	| MX.3 | "M_IDENTITY" |test-data/R363/audit_period_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R363/" with prefix name "audit_period_Result" 
     Then The different result should be empty