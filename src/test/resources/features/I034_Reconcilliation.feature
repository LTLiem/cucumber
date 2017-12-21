Feature: Demo Reconciliation
  
  @I034
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | "M_HOLIDAYS","M_TYPE","M_CCY"|test-data/I034/I034_SQL_MX2.csv |
    	| MX.3_R001  | "M_HOLIDAYS","M_TYPE","M_CCY"|test-data/I034/I034_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I034/" with prefix name "I034_SQL_" 
     Then The different result should be empty