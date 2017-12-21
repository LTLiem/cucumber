Feature: Demo Reconciliation
  
  
  @R369
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| Trn# (Internal),Net Capital |test-data/R369/R369_CD_REPORT_MX2_2014.csv |
    	| MX.3 | Trn# (Internal),Net Capital |test-data/R369/R369_CD_REPORT_MX3_2014.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R369/" with prefix name "R369_CD_REPORT_Result" 
     Then The different result should be empty
     
       
  #Date-0: NA
  #Date-1: NA
  #Date-2: TODAY   
  @R369_REMOVE_POSTFILER
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K| Trn# (Internal),Net Capital |test-data/R369/R369_MM_CD_REPORT_NA_NA_TODAY_MX2.csv |
    	| MX.3 | Trn# (Internal),Net Capital |test-data/R369/R369_MM_CD_REPORT_NA_NA_TODAY_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R369/" with prefix name "R369_REMOVE_POSTFILER_" 
     Then The different result should be empty
     
     