Feature: Demo Reconciliation

  # Recocile dyn table:
  # Computing date
  		# Date 0: NA
  		# Date 1: NA
  		# Date 2: DENV("CRT_BND12")
  # Filter
  # View
  @R042_SQL_TEMP
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_NB |test-data/R042/R042_MX2_NA_NA_06052015.csv |
    	| MX.3_R001  | M_NB |test-data/R042/R042_MX3_NA_NA_06052015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R042/" with prefix name "R042_NA_NA_06052015_____"
     Then The different result should be empty