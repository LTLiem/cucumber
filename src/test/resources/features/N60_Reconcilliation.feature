Feature: Demo Reconciliation
  
  @N60
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | EI_FLAG,M_NB,UTI_TENOR|test-data/N60/N60_SELECT_MX02.csv |
    	| MX.3_R001  | EI_FLAG,M_NB,UTI_TENOR|test-data/N60/N60_SELECT_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N60/" with prefix name "N60_CSV_" 
     Then The different result should be empty
  
  @N60E
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | EI_FLAG,CCY1,CCY2,ORG_TENOR|test-data/N60/N60_EXT_0105_0705_MX02.csv |
    	| MX.3_R001  | EI_FLAG,CCY1,CCY2,ORG_TENOR|test-data/N60/N60_EXT_0105_0705_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N60/" with prefix name "N60_CSV_" 
     Then The different result should be empty
    
  @N60E2
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | M_NB|test-data/N60/N60_CHECK_ROWNUM_MX02.csv |
    	| MX.3_R001  | M_NB|test-data/N60/N60_CHECK_ROWNUM_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N60/" with prefix name "N60_CSV_" 
     Then The different result should be empty
  