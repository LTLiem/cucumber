Feature: Demo Reconciliation
  
  @R264_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R266 | DEAL_NO |test-data/R264/R064_SQL_Mx2.csv |
    	| MX.3_R266  | DEAL_NO |test-data/R264/R064_SQL_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R264/" with prefix name "R263_SQL_"
     Then The different result should be empty

       
  @R264_SQL_UpdateFilter
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R266 | DEAL_NO |test-data/R264/R064_SQL_Mx2.csv |
    	| MX.3_R266  | DEAL_NO |test-data/R264/R064_SQL_Mx3_UpdateFilter.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R264/" with prefix name "R264_SQL_UpdateFilter"
     Then The different result should be empty
     