Feature: Demo Reconciliation
    
  @i004DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_i004DM | M_H_CUS_REF |test-data/i004/DM_i004_MX2.csv |
    	| MX.3_i004DM | M_NB |test-data/i004/DM_i004_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i004/" with prefix name "i004_DM_CSV_" 
     Then The different result should be empty
     
  @i004DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_i004Dyn | Trn# (Internal) |test-data/i004/DYN_MX2_i004.csv |
    	| MX.3_i004Dyn | Trn# (Internal) |test-data/i004/DYN_MX3_i004.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i004/" with prefix name "i004_Dyn_CSV_" 
     Then The different result should be empty