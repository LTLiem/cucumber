Feature: Demo Reconciliation
    
  @I005
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I005DM | M_H_ACCSCT,M_H_ENTITY,M_H_PFOLIO,M_H_SECLBL |test-data/I005/I005_MX2_Filter.csv |
    	| MX.3_I005DM |  M_H_ACCSCT,M_H_ENTITY,M_H_PFOLIO,M_H_SECLBL |test-data/I005/I005_MX3_NoFilter.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I005/" with prefix name "I005_DM_CSV_" 
     Then The different result should be empty
     
     
  @I005_PartFilter1
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I005DM | M_H_ACCSCT,M_H_ENTITY,M_H_PFOLIO,M_H_SECLBL |test-data/I005/I005_MX2_Filter.csv |
    	| MX.3_I005DM |  M_H_ACCSCT,M_H_ENTITY,M_H_PFOLIO,M_H_SECLBL |test-data/I005/I005_MX3_Part1Filter.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I005/" with prefix name "I005_DM_CSV_" 
     Then The different result should be empty
     
     
  @I005_FullFilter
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I005DM | M_H_ACCSCT,M_H_ENTITY,M_H_PFOLIO,M_H_SECLBL |test-data/I005/I005_MX2_Filter.csv |
    	| MX.3_I005DM |  M_H_ACCSCT,M_H_ENTITY,M_H_PFOLIO,M_H_SECLBL |test-data/I005/I005_MX3_FullFilter.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I005/" with prefix name "I005_FullFilter_" 
     Then The different result should be empty
     
  @I005_Group
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I005DM | M_H_NB |test-data/I005/I005_GROUP_MX2.csv |
    	| MX.3_I005DM | M_H_NB |test-data/I005/I005_GROUP_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I005/" with prefix name "I005_GROUP_" 
     Then The different result should be empty