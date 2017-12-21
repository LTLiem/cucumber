@All @R047
Feature: Demo Reconciliation
       @R047_MMFLW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_NB,M_H_VALUE,M_H_TYPELAB0,M_H_TYPELAB1,M_H_TYPELAB2 |test-data/R047/R047_MMFLW_MX2_V1.csv |
    	| MX.3_R001  | M_H_NB,M_H_VALUE,M_H_TYPELAB0,M_H_TYPELAB1,M_H_TYPELAB2 |test-data/R047/R047_MMFLW_MX3_V2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R047/" with prefix name "R047_MMFLW_" 
     Then The different result should be empty
     
     @R047_LOTXN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_NB,M_H_VALUE,M_H_TYPELAB0,M_H_TYPELAB1,M_H_TYPELAB2 |test-data/R047/R047_LOTXN_MX2_V1.csv |
    	| MX.3_R001  | M_H_NB,M_H_VALUE,M_H_TYPELAB0,M_H_TYPELAB1,M_H_TYPELAB2 |test-data/R047/R047_LOTXN_MX3_V1.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R047/" with prefix name "R047_LOTXN_" 
     Then The different result should be empty