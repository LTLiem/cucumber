Feature: Demo Reconciliation
    
  @i020DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_i020DM | M_H_NB,M_H_EXR_DTE,M_H_STRT_DTE |test-data/i020/DM_i020_MX2.csv |
    	| MX.3_i020DM | M_H_NB,M_H_EXR_DTE,M_H_STRT_DTE |test-data/i020/DM_i020_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i020/" with prefix name "i020_DM_CSV_" 
     Then The different result should be empty