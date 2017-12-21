@CS_LNBR
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | Trn# (Internal),Value date |test-data/CS_LNBR/F_CCRATE_MX2.csv |
    	| MX.3_R001  | Trn# (Internal),Value date |test-data/CS_LNBR/F_CCRATE_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/CS_LNBR/" with prefix name "CS_LNBR_DYN_" 
     Then The different result should be empty
     