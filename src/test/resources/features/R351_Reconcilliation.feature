Feature: Demo Reconciliation
    
  @R351
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | Flow#|test-data/R351/PAYMENT_MX02_2.csv |
    	| MX.3_R001  | Reference|test-data/R351/PAYMENT_MX03_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R351/" with prefix name "R351_DYN_" 
     
   
  @R351_AUNostroasToday
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K_R001 | Flow#|test-data/R351/R351_AUNostroasToday_Mx2.csv |
    	| MX.3_R001  | Flow#|test-data/R351/R351_AUNostroasToday_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R351/" with prefix name "R351_AUNostroasToday_" 
     