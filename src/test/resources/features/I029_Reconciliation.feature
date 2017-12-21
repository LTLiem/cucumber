Feature: Demo Reconciliation
     
     #Run on MX3 Batches of extractions
	 #Date-0: 
  	 #Date-1: Contextual yesterday
  	 #Date-2: Contextual today
     @I029_FXARR
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_I032 | "M_H_ORG_AR" |test-data/I029/I029_FXARR_MX2.csv |
    	| MX.3_I032  | "M_H_ORG_AR" |test-data/I029/I029_FXARR_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I029/" with prefix name "I029_FXARR_" 
     Then The different result should be empty  
     
  
     #Run on MX3 Batches of extractions
     @I029_SQL
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR |test-data/I029/I029_Extraction_MX2.csv |
    	| MX.3  | M_H_ORG_AR |test-data/I029/I029_Extraction_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I029/" with prefix name "I029_SQL_" 
     Then The different result should be empty  
     
     #Run on MX3 Batches of extractions
     @I029_SQL_VER2
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR |test-data/I029/I029_Extraction_MX2.csv |
    	| MX.3  | M_H_ORG_AR |test-data/I029/I029_Extraction_MX3_VER2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I029/" with prefix name "I029_SQL_VER2_" 
     Then The different result should be empty  
     
     
      #Run on MX3 Batches of extractions
     @I029_SQL_1208
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR |test-data/I029/I029_Extraction_MX2_Ver2.csv |
    	| MX.3  | M_H_ORG_AR |test-data/I029/I029_Extraction_MX3_1208.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I029/" with prefix name "I029_SQL_1208_" 
     Then The different result should be empty  
     
       #Run on MX3 Batches of extractions
     @I029_FXARR_REDO
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal),Qty# |test-data/I029/I029_MX2_FXARR.csv |
    	| MX.3  | Contract reference,Qty# |test-data/I029/I029_MX3_FXARR.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I029/" with prefix name "I029_FXARR_REDO_" 
     Then The different result should be empty  
     