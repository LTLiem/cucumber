@GL_RULE
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_RULE_NB |test-data/TMB_GL_RULE/TMB_GL_RULE_MX2.csv |
    	| MX.3_R001  | M_RULE_NB |test-data/TMB_GL_RULE/TMB_GL_RULE_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/TMB_GL_RULE/" with prefix name "TMB_GL_RULE_SQL_" 
     Then The different result should be empty
     