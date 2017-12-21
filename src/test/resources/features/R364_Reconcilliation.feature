Feature: Demo Reconciliation
    
  @R364_DYN_20150506
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |MX Deal No|test-data/R364/R364_DYN_MX2_20150506.csv |
    	| MX.3_MMReport  |MX Deal No|test-data/R364/R364_DYN_MX3_20150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R364/" with prefix name "R364_DYN_20150506_" 
     Then The different result should be empty
     
     
  @R364_DYN_Release
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |MX Deal No|test-data/R364/R364_DYN_MX2_20150506_29042016.csv |
    	| MX.3_MMReport  |MX Deal No|test-data/R364/R364_DYN_MX3_20150506_29042016.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R364/" with prefix name "R364_DYN_Release_" 
     Then The different result should be empty