Feature: Demo Reconciliation
    
  @I062SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I062SQL | "M_H_LABEL" |test-data/I062/I062_SQL_MX2_06052015_06052015_06052015.csv |
    	| MX.3_I062SQL | "M_H_LABEL" |test-data/I062/I062_SQL_MX3_06052015_06052015_06052015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I062/" with prefix name "I062_SQL_CSV_" 
     Then The different result should be empty
     
@I062SQL_LATEST
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I062SQL | "M_H_LABEL" |test-data/I062/I062_SQL_MX2.csv |
    	| MX.3_I062SQL | "M_H_LABEL" |test-data/I062/I062_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I062/" with prefix name "I062_SQL_LATEST_CSV_" 
     Then The different result should be empty
     
@I062SQL_TXT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_I062SQL | "M_H_LABEL" |test-data/I062/TXT_i062_MX2.csv |
    	| MX.3_I062SQL | "M_H_LABEL" |test-data/I062/TXT_i062_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I062/" with prefix name "I062_SQL_TXT_CSV_" 
     Then The different result should be empty     