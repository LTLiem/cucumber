Feature: Demo Reconciliation
    
  @I041_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I041DM | M_H_CRV_LABEL |test-data/I041/I041_SQL_MX2.csv |
    	| MX.3_I041DM | M_H_CRV_LABEL |test-data/I041/I041_SQL_MX3_Faisal.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I041/" with prefix name "I041_SQL_RES_" 
     Then The different result should be empty