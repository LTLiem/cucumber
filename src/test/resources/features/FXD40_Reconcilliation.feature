Feature: Demo Reconciliation
    
  @FXD40
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD40 | Trn# (Internal) |test-data/FXD40/DYN_MX2_FXD40.csv |
    	| MX.3_FXD40  | Trn# (Internal) |test-data/FXD40/DYN_MX3_FXD40.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD40/" with prefix name "FXD40_CSV_" 
     Then The different result should be empty