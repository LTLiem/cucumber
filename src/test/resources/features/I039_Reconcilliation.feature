Feature: Demo Reconciliation

  # Recocile dyn table:
  # Computing date
  		# Date 0: NA
  		# Date 1: NA
  		# Date 2: DENV("CRT_BND12")
  # Filter
  # View
  @I039_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_NB |test-data/I039/I039_MX2_NA_NA_20150418.csv |
    	| MX.3_R001  | M_H_NB |test-data/I039/I039_MX3_NA_NA_20150418_sql_2.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I039/" with prefix name "I039_NA_NA_20150418"
     Then The different result should be empty
     
  # Recocile dyn table:
  # Computing date
  		# Date 0: NA
  		# Date 1: NA
  		# Date 2: DENV("CRT_BND12")
  # Filter
  # View
  @I039_DYN_MMFLW
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_NB,M_H_VALUE,M_H_TYPELAB0,M_H_TYPELAB1,M_H_TYPELAB2,M_H_AMT,M_H_CCNOM |test-data/I039/i039_mmflw_mx2_na_na_na.csv |
    	| MX.3_R001  | M_H_NB,M_H_VALUE,M_H_TYPELAB0,M_H_TYPELAB1,M_H_TYPELAB2,M_H_AMT,M_H_CCNOM |test-data/I039/i039_mmflw_mx3_na_na_na.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I039/" with prefix name "i039_mmflw_na_na_na_"
     Then The different result should be empty
     
  # Recocile dyn table:
  # Computing date
  		# Date 0: NA
  		# Date 1: NA
  		# Date 2: DENV("CRT_BND12")
  # Filter
  # View
  @I039_SQL_ACTUATE
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_NB |test-data/I039/I039_MX2_NA_NA_20150418_sql_actuate.csv |
    	| MX.3_R001  | M_H_NB |test-data/I039/I039_MX3_NA_NA_20150418_sql_actuate.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I039/" with prefix name "I039_NA_NA_20150418_sql_actuate_"
     Then The different result should be empty