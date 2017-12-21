Feature: Demo Reconciliation
  
  @N53
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | "CCY","M_HOLIDAY" |test-data/N53/N53_AU_STA_ALL04_MX2.csv |
    	| MX.3  | "CCY","M_HOLIDAY" |test-data/N53/N53_AU_STA_ALL04_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N53/" with prefix name "N53_SQL_RESULT_" 
     Then The different result should be empty
     
  @N53_2
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | CCY,FULL_NAME,CITY,HOLIDAY,WEEK_DAY |test-data/N53/TMO_CALENDAR_MX2.csv |
    	| MX.3  | CCY,FULL_NAME,CITY,HOLIDAY,WEEK_DAY |test-data/N53/AU_STA_ALL04.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N53/" with prefix name "TMO_CALENDAR_RESULT_" 
     Then The different result should be empty
     