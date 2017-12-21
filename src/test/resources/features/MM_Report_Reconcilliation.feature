Feature: Demo Reconciliation
    
  #Date-0: NA
  #Date-1: NA
  #Date-2: 06/05/2015
  #Global Filter:LM_AFS_ENTTDY
  #Viewer: LM - AFS Deal Enter Today
  @R365-LM_AFS_ENTTDY 
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal),BUY/SELL|test-data/MM_Report/MM_REPORT_LM_AFS_ENTTDY_MX02.csv |
    	| MX.3_MMReport  |Trn# (Internal),BUY/SELL|test-data/MM_Report/MM_REPORT_LM_AFS_ENTTDY_MX03_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R365-LM_AFS_ENTTDY_" 
     Then The different result should be empty
 
  #Date-0: NA
  #Date-1: 05/05/2015
  #Date-2: 06/05/2015
  #Global Filter: LM_AFS_OUT
  #Viewer: LM - AFS Outstanding
  @R366-LM_AFS_OUT
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_AFS_OUT_MX02.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_AFS_OUT_MX03_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R366-LM_AFS_OUT_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: 05/05/2015
  #Date-2: 06/05/2015
  #Global Filter: LM_BOND_OUT
  #Viewer: LM - AFS Outstanding
  @R368-LM_BOND_OUT
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/MM_REPORTLM_BOND_OUT_MX02.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/MM_REPORTLM_BOND_OUT_MX03_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R368-LM_BOND_OUT_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: NA
  #Date-2: 06/05/2015
  #Global Filter: LM_MMENT_TDY
  #Viewer: UPS_LM - MM Deal Enter Today	
  @R371-LM_MMENT_TDY
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/MM_REPORTLM_MMENT_TDY_MX02.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/MM_REPORTLM_MMENT_TDY_MX03_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R371-LM_MMENT_TDY_" 
     Then The different result should be empty  	
     
  #Date-0: NA
  #Date-1: Inception
  #Date-2: 29/04/2015
  #Global Filter: LM_MMREV_TDY
  #Viewer: LM - MM Deal Reversed Today (User : MUREXBO)
  @R373-LM_MMREV_TDY
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/MM_REPORTLMLM_MMREV_TDY_MX02.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/MM_REPORTLMLM_MMREV_TDY_MX03_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R373-LM_MMREV_TDY_" 
     Then The different result should be empty  	
     
  #Date-0: NA
  #Date-1: Contextual Yesterday
  #Date-2: 06/05/2015
  #Global Filter: LM_REPO_ENTTDY
  #Viewer: LM - Repo Deal Enter Today
  @R374-LM_REPO_ENTTDY
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_REPO_ENTTDY_MX02.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_REPO_ENTTDY_MX03_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R374-LM_REPO_ENTTDY_" 
     Then The different result should be empty
  
  #Date-0: NA
  #Date-1: Contextual Yesterday
  #Date-2: 06/05/2015
  #Global Filter: LM_REPO_MARGIN_OUT
  #Viewer: LM - REPO Margin Outstanding   
  @R376-LM_REPO_MARGIN_OUT
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_REPO_MARGIN_OUT_MX02.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_REPO_MARGIN_OUT_MX03_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R376-LM_REPO_MARGIN_OUT_" 
     Then The different result should be empty    
   
  #Date-0: NA
  #Date-1: Contextual Yesterday
  #Date-2: 06/05/2015
  #Global Filter: LM_REPO_OUT
  #Viewer: LM - Repo Outstanding     
  @R377-LM_REPO_OUT
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_REPO_OUT_MX02.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_REPO_OUT_MX03_3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R377-LM_REPO_OUT_" 
     Then The different result should be empty  
  
  #Date-0: NA
  #Date-1: Contextual Yesterday
  #Date-2: 24/04/2015
  #Global Filter: LM_REPO_REVTDY
  #Viewer: LM - Repo Deal Reversed Today
  @R378-LM_REPO_REVTDY_ALL
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_REPO_REVTDY_ALLDATE_MX02_2.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_REPO_REVTDY_ALLDATE_MX03_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R378-LM_REPO_REVTDY_ALL_" 
     Then The different result should be empty 
  
  #Date-0: NA
  #Date-1: Contextual Yesterday
  #Date-2: 30/04/2015
  #Global Filter: LM_AFS_REVTDY
  #Viewer: LM - AFS Deal Reversed Today 
  @R367-LM_AFS_REVTDY
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_AFS_REVTDY_ALLDATE_MX02.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/MM_REPORT_LM_AFS_REVTDY_ALLDATE_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "R367-LM_AFS_REVTDY_" 
     Then The different result should be empty  
     
  
  @MM_Report_PLIRDFIX
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal)|test-data/MM_Report/LM_REPORT_PLIRDFIX_MX2.csv |
    	| MX.3_MMReport  |Trn# (Internal)|test-data/MM_Report/LM_REPORT_PLIRDFIX_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/MM_Report/" with prefix name "MM_Report_PLIRDFIX_" 
     Then The different result should be empty       
     
     