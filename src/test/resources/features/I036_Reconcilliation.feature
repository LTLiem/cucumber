Feature: Demo Reconciliation

  @I036_DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_NB","M_H_DC","M_H_TRN_CD" |test-data/LOC/I036/I036_02022015_MX2.csv |
    	| MX.3_R001  | "M_H_NB","M_H_DC","M_H_TRN_CD" |test-data/LOC/I036/I036_02022015_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/LOC/I036/" with prefix name "I036_02022015_MX_"
     Then The different result should be empty