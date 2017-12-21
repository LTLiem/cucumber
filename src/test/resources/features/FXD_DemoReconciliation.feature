Feature: Demo Reconciliation
  
  @Demo
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                    |
    	| MxG2K_FXD | test-data/FXD/FXD_mxg2k.txt|
    	| MX.3_FXD  | test-data/FXD/FXD_mx3.txt  |
      And The data structure of these data is at "test-data/FXD/FXD_data_structure.csv"
     When I compare these data with difference result is generated at "test-result/FXD/" with prefix name "FXD_" 
     Then The different result should be empty
  @FXD7
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | Trn# (Internal),Qty# |test-data/FXD/FXD7_2.csv |
    	| MX.3_FXD  | Contract reference,Qty# |test-data/FXD/FXD7_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "FXD7_CSV_" 
     Then The different result should be empty
  @FXD8
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | Trn# (Internal),Qty# |test-data/FXD/FXD8_2.csv |
    	| MX.3_FXD  | Contract reference,Qty# |test-data/FXD/FXD8_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "FXD8_CSV_" 
     Then The different result should be empty
     
  @FXD9
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | Trn# (Internal),Qty# |test-data/FXD/FXD9_2.csv |
    	| MX.3_FXD  | Contract reference,Qty# |test-data/FXD/FXD9_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "FXD9_CSV_" 
     Then The different result should be empty
     
  @FXD10
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | Trn# (Internal),Qty# |test-data/FXD/FXD10_2.csv |
    	| MX.3_FXD  | Contract reference,Qty# |test-data/FXD/FXD10_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "FXD10_CSV_" 
     Then The different result should be empty
     
     
  @FXD11
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | Trn# (Internal),Qty# |test-data/FXD/FXD11_2.csv |
    	| MX.3_FXD  | Contract reference,Qty# |test-data/FXD/FXD11_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "FXD11_CSV_" 
     Then The different result should be empty
     
     
  @FXDxxx
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | Trn# (Internal),Qty# |test-data/FXD/FXD2.csv |
    	| MX.3_FXD  | Contract reference,Qty# |test-data/FXD/FXD3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "FXDxxx_CSV_" 
     Then The different result should be empty
  @FXD14
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | ID |test-data/FXD/FOER_2.csv |
    	| MX.3_FXD  | ID |test-data/FXD/FOER_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "FXD11_CSV_" 
     Then The different result should be empty
     
  @FXD14b
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | ID |test-data/FXD/FXD14_DYN_MX2_NA_150401_150430.csv |
    	| MX.3_FXD  | ID |test-data/FXD/FXD14_DYN_MX3_NA_150401_150430.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "FXD14_DYN_Result_NA_150401_150430_" 
     Then The different result should be empty
     
   @RT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | "M_LABEL" |test-data/FXD/RT2.csv |
    	| MX.3_FXD  | "M_LABEL" |test-data/FXD/RT3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/FXD/" with prefix name "RT_CSV_" 
     Then The different result should be empty
     
     @TRUNG
     Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_FXD | fxsp:pair |test-data/R310/fxsp_ric_mx2.csv |
    	| MX.3_FXD  | fxsp:pair |test-data/R310/fxsp_ric_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R310/" with prefix name "fxsp_ric_compare_" 
     Then The different result should be empty