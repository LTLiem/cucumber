Feature: Demo Reconciliation
  
  @R272_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R272 | M_NB,M_QTY_INDEX |test-data/R272/R272_Dynamic_Mx2.csv |
    	| MX.3_R272  | M_CONTRACT,M_QTY_INDEX |test-data/R272/R272_Dynamic_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R272/" with prefix name "R272_DYN_"
     Then The different result should be empty
  
    @R272_Ex_Part1
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R272 | M_ORG_DEAL,M_NB |test-data/R272/R272_Extraction_Part1_Mx2.csv |
    	| MX.3_R272  | M_ORG_DEAL,M_NB |test-data/R272/R272_Extraction_Part1_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R272/" with prefix name "R272_Ex_Part1_"
     Then The different result should be empty
  
  
      @R272_Ex_Part2
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R272 | M_ORG_DEAL |test-data/R272/R272_Extraction_Part2_Mx2.csv |
    	| MX.3_R272  | M_ORG_DEAL |test-data/R272/R272_Extraction_Part2_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R272/" with prefix name "R272_Ex_Part2"
     Then The different result should be empty
  
  
        @R272_Ex
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R272 | M_ORG_DEAL,M_TP_QTYEQ |test-data/R272/R272_Extraction_Mx2.csv |
    	| MX.3_R272  | M_ORG_DEAL,M_TP_QTYEQ |test-data/R272/R272_Extraction_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R272/" with prefix name "R272_Ex_"
     Then The different result should be empty
  