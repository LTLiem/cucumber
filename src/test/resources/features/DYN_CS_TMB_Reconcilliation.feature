@DYN_CS_TMB
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | Trn# (Internal),Calc.detail:Rate,Value date |test-data/DYN_CS_TMB/DYN_CS_TMB_MX2.csv |
    	| MX.3_R001  | Trn# (Internal),Calc.detail:Rate,Value date |test-data/DYN_CS_TMB/DYN_CS_TMB_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/DYN_CS_TMB/" with prefix name "DYN_CS_TMB_" 
     Then The different result should be empty
     