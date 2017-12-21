Feature: Demo Reconciliation
   
  @R079_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R079 | Flow#	|test-data/R079/R079_MX2_DYN.csv |
    	| MX.3_R079  | Reference|test-data/R079/R079_MX3_DYN.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R079/" with prefix name "R079_DYN_" 

       @R079_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R079 | M_PF_ID	|test-data/R079/R079_MX2_SQL.csv |
    	| MX.3_R079  | M_PF_ID  |test-data/R079/R079_MX3_SQL.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R079/" with prefix name "R079_SQL_" 
     