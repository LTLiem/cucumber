Feature: Demo Reconciliation
 
  @I044_DWH_OTH_FLOW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| A,B,C |test-data/I044/I044_DWH_OTH_FLOW_MX2.csv |
     | MX.3 | A,B,C |test-data/I044/I044_DWH_OTH_FLOW_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I044/" with prefix name "I044_DWH_OTH_FLOW_" 
     Then The different result should be empty