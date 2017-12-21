Feature: Demo Reconciliation
 
  @I006_MMFW_FIN_NA_20150506_20150506
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB |test-data/I006_LL/I006_MMFW_FIN_MX02_NA_20150506_20150506.csv |
     | MX.3 | M_NB |test-data/I006_LL/I006_MMFW_FIN_MX03_NA_20150506_20150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I006_LL/" with prefix name "I006_MMFW_FIN_NA_20150506_20150506_" 
     Then The different result should be empty