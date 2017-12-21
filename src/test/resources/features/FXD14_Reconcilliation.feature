Feature: Demo Reconciliation

     
   @FXD14
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | ID |test-data/FXD/FXD14_DYN_MX2_NA_150401_150430.csv |
    	| MX.3_FXD  | ID |test-data/FXD/FXD14_DYN_MX3_NA_150401_150430.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "FXD14_DYN_Result_NA_150401_150430_" 
     Then The different result should be empty