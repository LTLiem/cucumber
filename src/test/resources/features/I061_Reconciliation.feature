Feature: Demo Reconciliation

     #Run on MX3 Batches of extractions
     @I061_FXARR
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR |test-data/I061/I061_FXARR_EXTRACTION_MX2.csv |
    	| MX.3  | M_H_ORG_AR |test-data/I061/I061_FXARR_EXTRACTION_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I061/" with prefix name "I061_FXARR_" 
     Then The different result should be empty  
     
     
     
     #Run on MX3 Batches of extractions
     @I061_FXARR_UNION
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ACCOUNT |test-data/I061/I061_FXARR_UNION_MX2.csv |
    	| MX.3  | M_H_ACCOUNT |test-data/I061/I061_FXARR_UNION_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I061/" with prefix name "I061_FXARR_UNION_" 
     Then The different result should be empty  
     