Feature: Demo Reconciliation
  
  @Demo
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                    |
    	| MxG2K_N40 | test-data/N40/N40_mxg2k.txt|
    	| MX.3_N40  | test-data/N40/N40_mx3.txt  |
      And The data structure of these data is at "test-data/N40/N40_data_structure.csv"
     When I compare these data with difference result is generated at "test-result/N40/" with prefix name "N40_" 
     Then The different result should be empty

  @N40
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_N40 | LABEL |test-data/N40/N40_CMS_CPTY_MX2.csv |
    	| MX.3_N40  | LABEL |test-data/N40/N40_CMS_CPTY_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N40/" with prefix name "N40_CSV_" 
     Then The different result should be empty
     
  @N40_NEWTEST
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_N40 | LABEL |test-data/N40/N40_DYN_060515_MX2.csv |
    	| MX.3_N40  | LABEL |test-data/N40/N40_DYN_MX3_020316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N40/" with prefix name "N40_DYN_060515_" 
     Then The different result should be empty
     
  @N40_030316
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_N40 | LABEL |test-data/N40/N40_DYN_060515_MX2.csv |
    	| MX.3_N40  | LABEL |test-data/N40/N40_DYN_MX3_030316.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N40/" with prefix name "N40_DYN_030316_" 
     Then The different result should be empty