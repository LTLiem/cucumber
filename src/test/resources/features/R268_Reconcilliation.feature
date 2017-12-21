Feature: Demo Reconciliation
  
  @R268_DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/LOC/R286/TMB_TP_MM_REP_06052015_MX2.csv |
    	| MX.3_R001  | M_NB |test-data/LOC/R286/TMB_TP_MM_REP_06052015_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/LOC/R286/" with prefix name "R286_TMB_TP_MM_REP_"
     Then The different result should be empty
     