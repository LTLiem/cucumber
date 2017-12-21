
 
  @I073_LOI_TEST
  Feature: Demo Reconciliation
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_NB,M_H_DC |test-data/I073_LOI_TEST/I073_0405_mx2.csv |
     | MX.3 | M_NB,M_H_DC |test-data/I073_LOI_TEST/I073_0405_mx3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I073_LOI_TEST/" with prefix name "I073_0405" 
     Then The different result should be empty