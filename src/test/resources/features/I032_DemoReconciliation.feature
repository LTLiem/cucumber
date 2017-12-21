Feature: Demo Reconciliation
  
  
   #Run on MX3 Batches of extractions
     @I032_SQL
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR |test-data/I032/I032_Extractions_Mx2.csv |
    	| MX.3  | M_H_ORG_AR |test-data/I032/I032_Extractions_Mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_SQL" 
     Then The different result should be empty  
     
     
        #Run on MX3 Batches of extractions
     @I032_SQL_V2
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR,M_H_TMB_REF |test-data/I032/I032_V2_UNION_MX2.csv |
    	| MX.3  | M_H_ORG_AR,M_H_TMB_REF |test-data/I032/I032_V2_UNION_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_SQL_V2_" 
     Then The different result should be empty  
     
     
       #Run on MX3 Batches of extractions
     @I032_SQL_V1
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR,M_H_TMB_REF |test-data/I032/I032_Extractions_Mx2_V1.csv |
    	| MX.3  | M_H_ORG_AR,M_H_TMB_REF |test-data/I032/I032_Extractions_Mx3_V1.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_SQL_V1_" 
     Then The different result should be empty  
     
     #Run on MX3 Batches of extractions
     @I032_SQL_V2_Redo
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | Trn# (Internal) |test-data/I032/I032_V2_MX2.csv |
    	| MX.3  | Contract reference |test-data/I032/I032_V2_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_SQL_V2_Redo_" 
     Then The different result should be empty  
     
          #Run on MX3 Batches of extractions
     @I032_SQL_V2_DM
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_NB |test-data/I032/I032_V2_MX2_DM.csv |
    	| MX.3  | M_CONTRACT |test-data/I032/I032_V2_MX3_DM.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_SQL_V2_DM_" 
     Then The different result should be empty  
     
            #Run on MX3 Batches of extractions
     @I032_SQL_NE
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR,M_H_TMB_REF |test-data/I032/I032_Extractions_Mx2_NE.csv |
    	| MX.3  | M_H_ORG_AR,M_H_TMB_REF |test-data/I032/I032_Extractions_Mx3_NE.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_SQL_NE_" 
     Then The different result should be empty  
     
             #Run on MX3 Batches of extractions
     @I032_SQL_NE_Redo
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR |test-data/I032/I032_NE_UNION_MX2.csv |
    	| MX.3  | M_H_ORG_AR |test-data/I032/I032_NE_UNION_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_SQL_NE_Redo_" 
     Then The different result should be empty  
     
     #Run on MX3 Batches of extractions
     @I032_SQL_REDO
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR,M_H_TMB_REF,M_H_TXN_TYPE |test-data/I032/I032_SQL_MX2.csv |
    	| MX.3  | M_H_ORG_AR,M_H_TMB_REF,M_H_TXN_TYPE |test-data/I032/I032_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_SQL_REDO_" 
     Then The different result should be empty  
     
       #Run on MX3 Batches of extractions
     @I032_SQL_REDO
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_ORG_AR,M_H_TMB_REF,M_H_TXN_TYPE |test-data/I032/I032_SQL_MX2.csv |
    	| MX.3  | M_H_ORG_AR,M_H_TMB_REF,M_H_TXN_TYPE |test-data/I032/I032_SQL_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_SQL_REDO_" 
     Then The different result should be empty  
     
            #Run on MX3 Batches of extractions
     @I032_V2_DM
 	 Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path           |
    	| MxG2K | M_H_TMB_REF |test-data/I032/I032_V2_MX2_DM.csv |
    	| MX.3  | M_H_TMB_REF |test-data/I032/I032_V2_MX3_DM.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I032/" with prefix name "I032_V2_DM_" 
     Then The different result should be empty  
     
     
     
     