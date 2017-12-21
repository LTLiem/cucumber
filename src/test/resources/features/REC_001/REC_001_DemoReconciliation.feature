Feature: Demo Reconciliation
  
  
  @REC_001
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns                                                                                                         | File path                            |
    	| MxG2K_R001 | 1, Value date, Flow SubType Label,	Flow SubType Label,	Flow SubType Label,	Flow SubType Label,	Flow SubType Label |test-data/REC_001/DYN_RECON_CS_MX2.csv |
    	| MX.3_R001  | 1, Value date, Flow SubType Label,	Flow SubType Label,	Flow SubType Label,	Flow SubType Label,	Flow SubType Label |test-data/REC_001/DYN_RECON_CS_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/REC_001/" with prefix name "REC_001_CS_RECON_01" 
     Then The different result should be empty