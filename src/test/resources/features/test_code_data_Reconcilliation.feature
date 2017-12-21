Feature: Demo Reconciliation

  @test_code_data
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | NO |test-data/test_code_data/1_.csv |
    	| MX.3_R001  | NO |test-data/test_code_data/3_.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/LOC/R050/" with prefix name "test_code_data_"
     Then The different result should be empty