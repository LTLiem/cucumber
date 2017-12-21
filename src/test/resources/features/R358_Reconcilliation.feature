Feature: Demo Reconciliation
    
  @R358dyn
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R358 | Trn# (Internal),Buy/Sell for Commodities,Portfolio |test-data/R358/DYN_MX2_R358.csv |
    	| MX.3_R358  | Contract reference,Buy/Sell for Commodities,Portfolio |test-data/R358/DYN_MX3_R358.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R358/" with prefix name "R358_DYN_CSV_" 
     Then The different result should be empty
     
  @R358sql
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R358 | "M_NB" |test-data/R358/SQL_R358_MX2.csv |
    	| MX.3_R358  | "M_NB" |test-data/R358/SQL_R358_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R358/" with prefix name "R358_SQL_CSV_" 
     Then The different result should be empty
     
     
   @R358_dyn
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R358 | Trn# (Internal),Buy/Sell for Commodities,Portfolio |test-data/R358/R358_CMS_DEAL_ENTERED_MX2.csv |
    	| MX.3_R358  | Contract reference,Buy/Sell for Commodities,Portfolio |test-data/R358/R358_CMS_DEAL_ENTERED_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R358/" with prefix name "R358_CMS_DEAL_ENTERED_" 
     Then The different result should be empty
     