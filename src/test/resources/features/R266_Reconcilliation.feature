Feature: Demo Reconciliation
  
  @R266_Ex
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R266 | DEAL_NO |test-data/R266/R266_Extraction_Mx2.csv |
    	| MX.3_R266  | DEAL_NO |test-data/R266/R266_Extraction_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R266/" with prefix name "R266_Ex_"
     Then The different result should be empty
     
     
     
       @R266_Ex_0305
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R266 | DEAL_NO |test-data/R266/R266_Extraction_Mx2_0305.csv |
    	| MX.3_R266  | DEAL_NO |test-data/R266/R266_Extraction_Mx3_0305.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R266/" with prefix name "R266_Ex_0305_"
     Then The different result should be empty
     