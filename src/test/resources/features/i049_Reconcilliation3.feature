Feature: Demo Reconciliation
    
  @i049DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_i049DM | M_H_NB |test-data/i049/DWHRPLNK_i049_MX2.csv |
    	| MX.3_i049DM | M_H_NB |test-data/i049/DWHRPLNK_i049_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i049/" with prefix name "i049_DM_CSV_" 
     Then The different result should be empty