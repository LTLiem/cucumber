Feature: Demo Reconciliation
  
  @R093_Ex
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R093 | DEAL_NO |test-data/R093/R093_Extraction_Mx2_0905.csv |
    	| MX.3_R093  | DEAL_NO |test-data/R093/R093_Extraction_Mx3_0905.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R093/" with prefix name "R093_Ex_"
     Then The different result should be empty
  