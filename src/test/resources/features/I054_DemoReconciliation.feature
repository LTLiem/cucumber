Feature: Demo Reconciliation
  
  
  @I054
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| "M_H_TMB_REF","M_H_TRN_CD" |test-data/I054/I054_SQL_MX2_150422_150422_150422.csv |
    	| MX.3 | "M_H_TMB_REF","M_H_TRN_CD" |test-data/I054/I054_SQL_MX3_150422_150422_150422.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I054/" with prefix name "I054_SQL_Result_150422_150422_150422_" 
     Then The different result should be empty
     
     
  @I054_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| "M_H_TMB_REF","M_H_TRN_CD" |test-data/I054/I054_DYN_MX2_150422_150422_150422.csv |
    	| MX.3 | "M_H_TMB_REF","M_H_TRN_CD" |test-data/I054/I054_DYN_MX3_150422_150422_150422.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I054/" with prefix name "I054_DYN_Result_150422_150422_150422_" 
     Then The different result should be empty
     
   