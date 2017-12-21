Feature: Demo Reconciliation
  
  @R350_SWAP_CF
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R350 | Trn# (Internal),(Risk Engine).Leg currency |test-data/R350/R350_MRCC_IR_SWAP_CF_Mx2.csv |
    	| MX.3_R350  | Trn# (Internal),(Risk Engine).Leg currency |test-data/R350/R350_MRCC_IR_SWAP_CF_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R350/" with prefix name "R350_SWAP_CF_"
     Then The different result should be empty
  
