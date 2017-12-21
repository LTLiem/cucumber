Feature: Demo Reconciliation

	 #Date-0: 
  	 #Date-1: Contextual yesterday
  	 #Date-2: Contextual yesterday
     @R220_FX_BLOT_0905
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R220 | NB,Qty# |test-data/R220/CMS_FX_BLOT_RPT_MX2_0905.csv |
    	| MX.3_R220  | CONTRACT,Qty# |test-data/R220/CMS_FX_BLOT_RPT_MX3_0905.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R220/" with prefix name "R220_FX_BLOT_0905_" 
     Then The different result should be empty  
     
     
     #Date-0: 
  	 #Date-1: Contextual yesterday
  	 #Date-2: Contextual yesterday
     @R220_EX
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R220 | M_NB |test-data/R220/R220_Extraction_Mx2.csv |
    	| MX.3_R220  | M_NB |test-data/R220/R220_Extraction_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R220/" with prefix name "R220_EX_" 
     Then The different result should be empty  
     
     #Date-0: 
  	 #Date-1: Contextual yesterday
  	 #Date-2: Contextual yesterday
     @R220_BLOT_RPT
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R220 | NB,INDEX |test-data/R220/CMS_FX_BLOT_RPT_MX2.csv |
    	| MX.3_R220  | NB,INDEX |test-data/R220/CMS_FX_BLOT_RPT_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R220/" with prefix name "R220_BLOT_RPT_" 
     Then The different result should be empty  
     
          #Date-0: 
  	 #Date-1: Contextual yesterday
  	 #Date-2: Contextual yesterday
     @R220_EX_NEWFILTER
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R220 | M_NB |test-data/R220/R220_Extraction_Mx3.csv |
    	| MX.3_R220  | M_NB |test-data/R220/R220_Extraction_Mx3_NEWFILTER.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R220/" with prefix name "R220_EX_NEWFILTER_" 
     Then The different result should be empty  
     
     
     #Date-0: 
  	 #Date-1: Contextual yesterday
  	 #Date-2: Contextual yesterday
     @R220_EX_UPDATE_NB
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R220 | M_NB |test-data/R220/R220_Extraction_Mx3.csv |
    	| MX.3_R220  | M_NB |test-data/R220/R220_Extraction_Mx3_SQL_Update_NB.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R220/" with prefix name "R220_EX_UPDATE_NB_" 
     Then The different result should be empty 