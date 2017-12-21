Feature: Demo Reconciliation
    
  @I007_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I007 | "M_H_NB","M_H_DC","M_H_GL_ID" |test-data/I007/I007_DYN_150501_150501_150501_MX2.csv |
    	| MX.3_I007 | "M_H_NB","M_H_DC","M_H_GL_ID" |test-data/I007/I007_DYN_150501_150501_150501_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I007/" with prefix name "I007_DYN_150501_150501_150501_RES_" 
     Then The different result should be empty
     
     
    @I007_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I007 | "M_H_NB","M_H_DC","M_H_GL_ID" |test-data/I007/I007_SQL_MX2.csv |
    	| MX.3_I007 | "M_H_NB","M_H_DC","M_H_GL_ID" |test-data/I007/I007_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I007/" with prefix name "I007_SQL_RES_" 
     Then The different result should be empty
     
     
     #CAU SQL SAU KHI FEED LAI DU LIEU CHUAN
    @I007_SQL_UPDATE
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "	" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I007 | M_H_NB,M_H_DC,M_H_GL_ID |test-data/I007/I007_SQL_UPDATE_MX2.csv |
    	| MX.3_I007 | M_H_NB,M_H_DC,M_H_GL_ID |test-data/I007/I007_SQL_UPDATE_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I007/" with prefix name "I007_SQL_UPDATE_RES_" 
     Then The different result should be empty