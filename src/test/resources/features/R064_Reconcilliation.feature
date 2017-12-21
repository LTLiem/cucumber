Feature: Demo Reconciliation
  
  @R064_BN_MRMT_OUT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB|test-data/R064/BN_MRMT_OUT_Mx02.csv |
    	| MX.3_R001  | M_NB|test-data/R064/BN_MRMT_OUT_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R064/" with prefix name "R064_BN_MRMT_OUT_" 
     Then The different result should be empty
     
  @R064_BN_TMO_REPOFLOW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | "M_DT_END0","M_DT_FLOWTYP","M_DT_LEG0","M_DT_LGPR0","M_DT_START0","M_NB"|test-data/R064/BN_TMO_REPOFLOW_Mx02.csv |
    	| MX.3_R001  | "M_DT_END0","M_DT_FLOWTYP","M_DT_LEG0","M_DT_LGPR0","M_DT_START0","M_NB"|test-data/R064/BN_TMO_REPOFLOW_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R064/" with prefix name "R064_BN_TMO_REPOFLOW_" 
     Then The different result should be empty
     
  @R064_BN_TMO_REPOFLOW_1
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB,M_DT_START0,M_DT_END0,M_DT_FLOWTYP,M_DT_LEG0,M_DT_LGPR0|test-data/R064/BN_TMO_REPOFLOW_Mx02.csv |
    	| MX.3_R001  | M_NB,M_DT_START0,M_DT_END0,M_DT_FLOWTYP,M_DT_LEG0,M_DT_LGPR0|test-data/R064/BN_TMO_REPOFLOW_Mx03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R064/" with prefix name "R064_BN_TMO_REPOFLOW_" 
     Then The different result should be empty