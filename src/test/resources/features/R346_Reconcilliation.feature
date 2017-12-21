Feature: Demo Reconciliation
    
  @R346_IRS_CRS
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD7 | Trn# (Internal) |test-data/R346/DYN_IRS_CRS_MX2_R346_NA_NA_30042015.csv |
    	| MX.3_FXD7 | Trn# (Internal) |test-data/R346/DYN_IRS_CRS_MX3_R346_NA_NA_30042015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R346/" with prefix name "R346_DYN_IRS_CRS" 
     Then The different result should be empty
     
  @R346_FRA
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD7 | Trn# (Internal) |test-data/R346/DYN_FRA_MX2_R346_NA_NA_30042015.csv |
    	| MX.3_FXD7 | Trn# (Internal) |test-data/R346/DYN_FRA_MX2_R346_NA_NA_30042015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R346/" with prefix name "R346_DYN_FRA_" 
     Then The different result should be empty
 
  @R346_FX_OPT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD7 | Trn# (Internal) |test-data/R346/DYN_FX_OPT_MX2_R346_NA_NA_30042015.csv |
    	| MX.3_FXD7 | Trn# (Internal) |test-data/R346/DYN_FX_OPT_MX3_R346_NA_NA_30042015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R346/" with prefix name "R346_DYN_FX_OPT_" 
     Then The different result should be empty