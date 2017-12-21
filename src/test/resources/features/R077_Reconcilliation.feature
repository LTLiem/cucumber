Feature: Demo Reconciliation
  
  @R077
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K_R001 | "M_CONTRACT","M_HQTY_INDEX" |test-data/R077/fxout_old.csv |
    	| MX.3_R001  | "M_CONTRACT","M_HQTY_INDEX" |test-data/R077/fxout_new.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R077/" with prefix name "FXOUT_SQL_CSV_" 
     Then The different result should be empty
     
     
      @R074
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K_R001 | M_CONTRACT,M_HQTY_INDEX |test-data/R077/FX_OUT_MX02.csv |
    	| MX.3_R001  | M_CONTRACT,M_HQTY_INDEX |test-data/R077/FX_OUT_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R077/" with prefix name "FXOUT_SQL_CSV_" 
     Then The different result should be empty
     
  @FXSW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K_R001 | fxsw:curveLabel,fxsw:type,fxsw:generator |test-data/R077/fxsw_mx2_ric.csv |
    	| MX.3_R001  | fxsw:curveLabel,fxsw:type,fxsw:generator |test-data/R077/fxsw_mx3_ric.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R077/" with prefix name "fxsw_CSV_" 
     Then The different result should be empty