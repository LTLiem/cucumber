Feature: Demo Reconciliation
  
  @N59_OUTPUT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | EI_FLAG,CCY1,CCY2,ORG_TENOR|test-data/N59/N59_OUTPUT_010515010516_Mx2.csv |
    	| MX.3_R001  | EI_FLAG,CCY1,CCY2,ORG_TENOR|test-data/N59/N59_OUTPUT_010515010516_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N59/" with prefix name "N59_OUTPUT_" 
     Then The different result should be empty
     
     
     
  @N59B
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | EI_FLAG,CCY1,CCY2,ORG_TENOR|test-data/N59/N59_#NULL_MX03.csv |
    	| MX.3_R001  | EI_FLAG,CCY1,CCY2,ORG_TENOR|test-data/N59/N59_ISNOTNULL_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N59/" with prefix name "N59_CSV_" 
     Then The different result should be empty
     
     
  @N59_F_TABLE_010515_010516
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_N59 | ORG_NB,UTI_NB|test-data/N59/SQL_F_Mx2_010515_010516.csv |
    	| MX.3_N59  | M_ORG_CNT,UTI_NB|test-data/N59/SQL_F_Mx3_010515_010516.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N59/" with prefix name "N59_F_TABLE_010515_010516_" 
     Then The different result should be empty
     
     
       @N59_MasterTable
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_N59 | M_NB|test-data/N59/N59_SQL_MasterTable_Mx2.csv |
    	| MX.3_N59  | M_NB|test-data/N59/N59_SQL_MasterTable_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N59/" with prefix name "N59_MasterTable_" 
     Then The different result should be empty
     
          @N59_MasterTable_010515
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_N59 | M_NB,UTI_TENOR,ORG_TENOR|test-data/N59/N59_SQL_MasterTable_Mx2_010515010516.csv |
    	| MX.3_N59  | M_NB,UTI_TENOR,ORG_TENOR|test-data/N59/N59_SQL_MasterTable_Mx3_010515010516.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N59/" with prefix name "N59_MasterTable_010515_" 
     Then The different result should be empty
     
         @N60_MasterTable_010515
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_N59 | M_NB,UTI_TENOR,ORG_TENOR|test-data/N59/R060_MasterTable_Mx2_010515010516.csv |
    	| MX.3_N59  | M_NB,UTI_TENOR,ORG_TENOR|test-data/N59/R060_MasterTable_Mx3_010515010516.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N59/" with prefix name "N60_MasterTable_010515_" 
     Then The different result should be empty
     
       @N60_OUTPUT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | EI_FLAG,CCY1,CCY2,NB,ORG_TENOR|test-data/N59/N60_OUTPUT_010515010516_Mx2.csv |
    	| MX.3_R001  | EI_FLAG,CCY1,CCY2,NB,ORG_TENOR|test-data/N59/N60_OUTPUT_010515010516_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/N59/" with prefix name "N60_OUTPUT_" 
     Then The different result should be empty