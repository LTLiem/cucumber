Feature: Demo Reconciliation
    
  @FXD12dyn
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD12 | Trn# (Internal) |test-data/FXD12/DYN_MX2_FXD12.csv |
    	| MX.3_FXD12 | Trn# (Internal) |test-data/FXD12/DYN_MX3_FXD12.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD12/" with prefix name "FXD12_DYN_CSV_" 
     Then The different result should be empty
     
   @FXD12dynBS
  	Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD12 | Trn# (Internal) |test-data/FXD12/BS_DYN_FXD12_MX2.csv |
    	| MX.3_FXD12 | Trn# (Internal) |test-data/FXD12/BS_DYN_FXD12_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD12/" with prefix name "FXD12_BS_DYN_CSV_" 
     Then The different result should be empty