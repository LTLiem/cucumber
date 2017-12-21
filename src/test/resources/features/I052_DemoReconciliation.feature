Feature: Demo Reconciliation
  
  
  @SWPFLW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| "M_H_NB","M_H_VALUE","M_H_LEG1","M_H_LEG2","M_H_CAL_END","M_H_CAL_STRT","M_H_TYPELAB2" |test-data/I052/I052_DYN_TMB_DWH_SWPFLW_MX2_Today.csv |
    	| MX.3 | "M_H_NB","M_H_VALUE","M_H_LEG1","M_H_LEG2","M_H_CAL_END","M_H_CAL_STRT","M_H_TYPELAB2" |test-data/I052/I052_DYN_TMB_DWH_SWPFLW_MX3_TDFVAL.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I052/" with prefix name "I052_DYN_TMB_DWH_SWPFLW_Result_TDFVAL_" 
     Then The different result should be empty
     
   @I052_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| Trn# (Internal),Value date,Currency |test-data/I052/I052_DYN_DWH_SWPFLW_MX2.csv |
    	| MX.3 | Trn# (Internal),Value date,Currency |test-data/I052/I052_DYN_DWH_SWPFLW_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I052/" with prefix name "I052_DYN_TMB_DWH_SWPFLW_Result_TDFVAL_" 
     Then The different result should be empty
     
         
  @SWPOUT
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| "M_H_NB" |test-data/I052/I052_DYN_TMB_DWH_SWPOUT_MX2_Today.csv |
    	| MX.3 | "M_H_NB" |test-data/I052/I052_DYN_TMB_DWH_SWPOUT_MX3_TDFVAL.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I052/" with prefix name "I052_DYN_TMB_DWH_SWPOUT_Result_TDFVAL_" 
     Then The different result should be empty
    
    
    @SWPFLW_040316
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| Trn# (Internal),Value date,Flow leg,Cash flow type |test-data/I052/SWPFLW_DYN_MX2.csv |
    	| MX.3 | Trn# (Internal),Value date,Flow leg,Cash flow type |test-data/I052/SWPFLW_DYN_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I052/" with prefix name "SWPFLW_DYN_result_040316_" 
     Then The different result should be empty 
     