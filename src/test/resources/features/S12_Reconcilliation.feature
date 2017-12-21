Feature: Demo Reconciliation
  
  @R068_RW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K | "M_NB" |test-data/S12/trachft2.csv |
    	| MX.3  | "M_NB" |test-data/S12/trachft3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/S12/" with prefix name "R068_" 
     Then The different result should be empty
     
  @R068SQL_RW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K | "M_NB" |test-data/S12/trachftsql2.csv |
    	| MX.3  | "M_NB" |test-data/S12/trachftsql3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/S12/" with prefix name "R068_SQL_" 
     Then The different result should be empty
     
    @FXD7_RW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K | Trn# (Internal),Qty# |test-data/S12/fxd72.csv |
    	| MX.3  | Contract reference,Qty# |test-data/S12/fxd73.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/S12/" with prefix name "FXD7_" 
     Then The different result should be empty
     
   @FXD8_RW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K | Trn# (Internal),Qty# |test-data/S12/fxd82.csv |
    	| MX.3  | Contract reference,Qty# |test-data/S12/fxd83.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/S12/" with prefix name "FXD8_" 
     Then The different result should be empty
  
  @FXD9_RW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K | Trn# (Internal),Qty# |test-data/S12/fxd92.csv |
    	| MX.3  | Contract reference,Qty# |test-data/S12/fxd93.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/S12/" with prefix name "FXD9_" 
     Then The different result should be empty
     
  @FXD10_RW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K | Trn# (Internal),Qty# |test-data/S12/fxd102.csv |
    	| MX.3  | Contract reference,Qty# |test-data/S12/fxd103.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/S12/" with prefix name "FXD10_" 
     Then The different result should be empty
     
   @FXD11_RW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K | Trn# (Internal),Qty# |test-data/S12/fxd112.csv |
    	| MX.3  | Contract reference,Qty# |test-data/S12/fxd113.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/S12/" with prefix name "FXD11_" 
     Then The different result should be empty
     
     
      @CMP_DEAL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K | Trn# (Internal) |test-data/S12/cmpdeal2.csv |
    	| MX.3  | Trn# (Internal) |test-data/S12/cmpdeal3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/S12/" with prefix name "CMP_DEAL_" 
     Then The different result should be empty

	@CMP_INS
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path            |
    	| MxG2K | Trn# (Internal) |test-data/S12/cmpins2.csv |
    	| MX.3  | Trn# (Internal) |test-data/S12/cmpins3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/S12/" with prefix name "CMP_INS_" 
     Then The different result should be empty
