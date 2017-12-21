Feature: Demo Reconciliation

	 #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: 06/05/15 
     @R067_SQL
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_NB |test-data/R067/R067_Mx2_SQL_SectionA.csv |
    	| MX.3_R066  | M_NB |test-data/R067/R067_Mx3_SQL_SectionA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R067/" with prefix name "R067_SQL_" 
     Then The different result should be empty
     
     
     #Date-0: NA
  	 #Date-1: NA
  	 #Date-2: 06/05/15 
     @R067_SQL_B
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R066 | M_TP_SECCDI |test-data/R067/R067_Mx2_SQL_SectionB.csv |
    	| MX.3_R066  | M_TP_SECCDI |test-data/R067/R067_Mx3_SQL_SectionB.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R067/" with prefix name "R067_SQL_B_" 
     Then The different result should be empty