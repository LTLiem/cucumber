@CS_DATA_DIFF
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_RULE_NB |test-data/CS_DATA_DIFF/TMB_GL_RULE_MX2.csv |
    	| MX.3_R001  | M_RULE_NB |test-data/CS_DATA_DIFF/TMB_GL_RULE_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/CS_DATA_DIFF/" with prefix name "CS_DATA_DIFF" 
     Then The different result should be empty
     