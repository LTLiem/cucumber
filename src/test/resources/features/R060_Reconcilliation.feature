Feature: Demo Reconciliation
  
  @R060_CASHFLOW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R060 | M_NB,M_H_VALUE |test-data/R060/R060_CASH_FLOW_MX2.csv |
    	| MX.3_R060  | M_NB,M_H_VALUE |test-data/R060/R060_CASH_FLOW_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R060/" with prefix name "R060_CASHFLOW_"
     Then The different result should be empty
  

  
    @R060_EX
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R060 | SECURITY_ID |test-data/R060/R060_SQL_MX2.csv |
    	| MX.3_R060  | SECURITY_ID |test-data/R060/R060_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R060/" with prefix name "R060_EX_"
     Then The different result should be empty
  
  