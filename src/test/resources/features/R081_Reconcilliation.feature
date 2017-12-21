Feature: Demo Reconciliation
  
  #Date-0: NA
  #Date-1: 14/04/2016
  #Date-2: 15/04/2016
  @R081_FX_PP_1604
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB        |test-data/R081/R080_FX_PP_15042016_MX2.csv |
    	| MX.3_R001  | M_CONTRACT  |test-data/R081/R080_FX_PP_15042016_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R081/" with prefix name "R081_FX_PP_1604_" 
     Then The different result should be empty

  #Date-0: NA
  #Date-1: 14/04/2016
  #Date-2: 15/04/2016
  @R081_FCS_PP_1604
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB        |test-data/R081/R080_FCS_PP_15042016_MX2.csv |
    	| MX.3_R001  | M_NB  |test-data/R081/R080_FCS_PP_15042016_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R081/" with prefix name "R081_FCS_PP_1604_" 
     Then The different result should be empty

       
  @R081_SCF_PP
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB |test-data/R081/R081_SCF_PP_MX2.csv |
    	| MX.3_R001  | M_NB |test-data/R081/R081_SCF_PP_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R081/" with prefix name "R081_SCF_PP_" 
     Then The different result should be empty
  
  #Date-0: NA
  #Date-1: 14/04/2016
  #Date-2: 15/04/2016
  @R081_ET
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_ORG_DEAL |test-data/R081/MX2_ET.csv |
    	| MX.3_R001  | M_ORG_CNT |test-data/R081/MX3_ET.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R081/" with prefix name "R081_ET_" 
     Then The different result should be empty
     