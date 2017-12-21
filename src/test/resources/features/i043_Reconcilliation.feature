Feature: Demo Reconciliation
    
  @i043DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_i043DM | "M_H_NB" |test-data/i043/DM_MX2_i043.csv |
    	| MX.3_i043DM | M_H_NB |test-data/i043/DM_MX3_i043.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/i043/" with prefix name "i043_DM_CSV_" 
     Then The different result should be empty