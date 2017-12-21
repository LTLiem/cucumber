Feature: Demo Reconciliation

  # Recocile dyn table:
  # Computing date
  		# Date 0: NA
  		# Date 1: NA
  		# Date 2: DENV("CRT_BND12")
  # Filter
  # View
  @R045_SQL_TEMP
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/R045/R045_MX2_NA_NA_201500506_ACTUATE.csv |
    	| MX.3_R001  | M_NB |test-data/R045/R045_MX3_NA_NA_201500506_ACTUATE.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R045/" with prefix name "R045_NA_NA_201500506_ACTUATE____"
     Then The different result should be empty