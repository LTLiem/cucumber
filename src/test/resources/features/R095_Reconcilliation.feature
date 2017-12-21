Feature: Demo Reconciliation
  
  @R095_DYN_FWT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | M_H_ORG_NUM |test-data/R095/R095_DYN_FWT_0905_MX2.csv |
    	| MX.3_R095  | M_H_ORG_NUM |test-data/R095/R095_DYN_FWT_0905_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_DYN_FWT_"
     Then The different result should be empty
  
    @R095_DYN_FWU
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | M_H_ORG_NUM |test-data/R095/R095_DYN_FWU_0905_MX2.csv |
    	| MX.3_R095  | M_H_ORG_NUM |test-data/R095/R095_DYN_FWU_0905_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_DYN_FWU_"
     Then The different result should be empty
  
    
    @R095_DYN_FWV
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | M_H_ORG_NUM |test-data/R095/R095_DYN_FWV_0905_MX2.csv |
    	| MX.3_R095  | M_H_ORG_NUM |test-data/R095/R095_DYN_FWV_0905_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_DYN_FWV_"
     Then The different result should be empty
     
       @R095_DYN_FWV_UAT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | M_H_ORG_NUM |test-data/R095/R095_DYN_FWV_0905_MX3_UAT2.csv |
    	| MX.3_R095  | M_H_ORG_NUM |test-data/R095/R095_DYN_FWV_0905_MX3_UAT6.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_DYN_FWV_UAT_"
     Then The different result should be empty
  
  @R095_DYN_FWPL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | H_ORG_NUM |test-data/R095/R095_DYN_FWPL_0905_MX2.csv |
    	| MX.3_R095  | H_ORG_NUM |test-data/R095/R095_DYN_FWPL_0905_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_DYN_FWPL_"
     Then The different result should be empty
     
       @R095_EX_PART1
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | M_H_ORG_NUM |test-data/R095/R095_Extraction_Union1_Mx2.csv |
    	| MX.3_R095  | M_H_ORG_NUM |test-data/R095/R095_Extraction_Union1_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_EX_PART1_"
     Then The different result should be empty
     
        @R095_EX_PART2
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | M_H_ORG_NUM |test-data/R095/R095_Extraction_Union2_Mx2.csv |
    	| MX.3_R095  | M_H_ORG_NUM |test-data/R095/R095_Extraction_Union2_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_EX_PART2_"
     Then The different result should be empty
     
            @R095_EX_PART2_UAT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | M_H_ORG_NUM |test-data/R095/R095_Extraction_Union2_Mx2.csv |
    	| MX.3_R095  | M_H_ORG_NUM |test-data/R095/R095_Extraction_Union2_Mx3_UAT6.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_EX_PART2_UAT_"
     Then The different result should be empty
     
      @R095_EX_PART3
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | M_H_ORG_NUM |test-data/R095/R095_Extraction_Union3_Mx2.csv |
    	| MX.3_R095  | M_H_ORG_NUM |test-data/R095/R095_Extraction_Union3_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_EX_PART3_"
     Then The different result should be empty
     
    @R095_EX_UAT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R095 | M_H_ORG_NUM |test-data/R095/R095_Extraction_Mx3_UAT2.csv |
    	| MX.3_R095  | M_H_ORG_NUM |test-data/R095/R095_Extraction_Mx3_UAT6.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R095/" with prefix name "R095_EX_UAT2vsUAT6_"
     Then The different result should be empty