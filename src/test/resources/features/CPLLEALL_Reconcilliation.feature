Feature: Demo Reconciliation
    
  @CPLLEALL_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_CPLLEALL_SQL | "M_LABEL" |test-data/CPLLEALL_DBF/CPLLEALL_SQL_MX2.csv |
    	| MX.3_CPLLEALL_SQL | "M_LABEL" |test-data/CPLLEALL_DBF/CPLLEALL_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/CPLLEALL/" with prefix name "CPLLEALL_SQL_CSV_" 
     Then The different result should be empty