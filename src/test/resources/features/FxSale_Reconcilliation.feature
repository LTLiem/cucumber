Feature: Demo Reconciliation
  
  @R311_FxSale
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | DEAL_NO|test-data/FxSales/R311_27Sep_Mx2.csv |
    	| MX.3_R001  | DEAL_NO|test-data/FxSales/R311_27Sep_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FxSales/" with prefix name "R311_FxSale_2709_" 
     Then The different result should be empty
     
  @R313_FxSale
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | DEAL_NO|test-data/FxSales/R313_27Sep_Mx2.csv |
    	| MX.3_R001  | DEAL_NO|test-data/FxSales/R313_27Sep_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FxSales/" with prefix name "R313_FxSale_2709_" 
     Then The different result should be empty     
     
  @R318_FxSale
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | DEAL_NO|test-data/FxSales/R318_27Sep_Mx2.csv |
    	| MX.3_R001  | DEAL_NO|test-data/FxSales/R318_27Sep_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FxSales/" with prefix name "R318_FxSale_2709_" 
     Then The different result should be empty     