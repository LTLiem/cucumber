@I003
Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | "M_H_CURVE","M_H_INSTRU_TYPE","M_H_INTNB","M_H_USER","M_H_UNDINTNB","M_H_INSTRU_SPEC1" |test-data/I003/I003_SQL_MX2_NA.csv |
    	| MX.3_R001  | "M_H_CURVE","M_H_INSTRU_TYPE","M_H_INTNB","M_H_USER","M_H_UNDINTNB","M_H_INSTRU_SPEC1" |test-data/I003/I003_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I003/" with prefix name "I003_SQL_CSV_" 
     Then The different result should be empty
     