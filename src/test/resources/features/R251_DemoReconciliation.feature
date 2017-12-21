Feature: Demo Reconciliation
  
  @Demo
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                    |
    	| MxG2K_R251 | test-data/R251/R251_mxg2k.txt|
    	| MX.3_R251  | test-data/R251/R251_mx3.txt  |
      And The data structure of these data is at "test-data/R251/R251_data_structure.csv"
     When I compare these data with difference result is generated at "test-result/R251/" with prefix name "R251_" 
     Then The different result should be empty

  @251
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R251 | M_NB |test-data/R251/BN_TMO_BROKER_MX2.csv |
    	| MX.3_R251  | M_NB |test-data/R251/BN_TMO_BROKER_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R251/" with prefix name "R251_CSV_" 
     Then The different result should be empty
     
  @CAL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R251 | "CCY","M_CITY","M_HOLIDAY" |test-data/R251/CALENDAR_2.csv |
    	| MX.3_R251  | "CCY","M_CITY","M_HOLIDAY" |test-data/R251/CALENDAR_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R251/" with prefix name "CAL_CSV_" 
     Then The different result should be empty
     
     
  @ERC
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R251 | "M_LABEL" |test-data/R251/CAL_2.CSV |
    	| MX.3_R251  | "M_LABEL" |test-data/R251/CAL_3.CSV |
     When I compare these "CSV" data with difference result is generated at "test-result/R251/" with prefix name "CAL_CSV_" 
     Then The different result should be empty