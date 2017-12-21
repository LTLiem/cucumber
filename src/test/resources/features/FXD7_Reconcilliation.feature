Feature: Demo Reconciliation
    
  @FXD7dyn
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD7 | MX Deal No |test-data/FXD7/DYN_MX2_FXD7.csv |
    	| MX.3_FXD7 | MX Deal No |test-data/FXD7/DYN_MX3_FXD7.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD7/" with prefix name "FXD7_DYN_CSV_" 
     Then The different result should be empty
     
  @FXD7FCYFCY
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD7 | Trn# (Internal),Qty# |test-data/FXD7/DYN_MX2_FXD7_FCYFCY.csv |
    	| MX.3_FXD7 | Trn# (Internal),Qty# |test-data/FXD7/DYN_MX3_FXD7_FCYFCY.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD7/" with prefix name "FXD7_DYN_FCYFCY_CSV_" 
     Then The different result should be empty
     
  @FXD7FCYTHB
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD7 | Trn# (Internal),Qty# |test-data/FXD7/DYN_FXD7_MX2_FCYTHB.csv |
    	| MX.3_FXD7 | Trn# (Internal),Qty# |test-data/FXD7/DYN_FXD7_MX3_FCYTHB.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD7/" with prefix name "FXD7_DYN_FCYTHB_CSV_" 
     Then The different result should be empty