Feature: Demo Reconciliation
  
  @R263_Ex
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R266 | DEAL_NO |test-data/R263/R263_Extraction_Mx2_0905.csv |
    	| MX.3_R266  | DEAL_NO |test-data/R263/R263_Extraction_Mx3_0905.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R263/" with prefix name "R263_Ex_"
     Then The different result should be empty
     
       @R263_Ex_0305
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R266 | DEAL_NO |test-data/R263/R263_Extraction_Mx2_0305.csv |
    	| MX.3_R266  | DEAL_NO |test-data/R263/R263_Extraction_Mx3_0305.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R263/" with prefix name "R263_Ex_0305_"
     Then The different result should be empty

     
       @R263_Ex_FULL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R266 | DEAL_NO |test-data/R263/R263_Extraction_Mx2_0905_FULL.csv |
    	| MX.3_R266  | DEAL_NO |test-data/R263/R263_Extraction_Mx3_0905_FULL.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R263/" with prefix name "R263_Ex_FULL_"
     Then The different result should be empty
     
     
       @R263_Ex_UAT5_Update_PLKEY1
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R266 | DEAL_NO |test-data/R263/R263_Extraction_Mx2_0905.csv |
    	| MX.3_R266  | DEAL_NO |test-data/R263/R263_Extraction_Mx3_0905_UAT5_Update_PLKEY1.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R263/" with prefix name "R263_Ex_UAT5_Update_PLKEY1_"
     Then The different result should be empty
     
     
       @R263_Ex_UAT5_Update_PLKEY1_0305
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R266 | DEAL_NO |test-data/R263/R263_Extraction_Mx2_0305.csv |
    	| MX.3_R266  | DEAL_NO |test-data/R263/R263_Extraction_Mx3_0305_UAT5_Update_PLKEY1.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R263/" with prefix name "R263_Ex_UAT5_Update_PLKEY1_0305_"
     Then The different result should be empty