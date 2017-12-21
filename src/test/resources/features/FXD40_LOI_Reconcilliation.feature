@FXD40_LOI
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | Trn# (Internal),Calc.detail:Fixing index,Flow SubType Label,Currency,Value date |test-data/FXD40_LOI/FXD40_DYN_MX2.csv |
    	| MX.3_R001  | Trn# (Internal),Calc.detail:Fixing index,Flow SubType Label,Currency,Value date |test-data/FXD40_LOI/FXD40_DYN_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD40_LOI/" with prefix name "FXD40_LOI_DYN_CSV_" 
     Then The different result should be empty