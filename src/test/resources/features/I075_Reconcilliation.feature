Feature: Demo Reconciliation

  # Recocile dyn table:
  # Computing date
  		# Date 0: NA
  		# Date 1: NA
  		# Date 2: NA
  # Filter
  # View
  @I075_SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_EMP_ID,M_EMP_NAME,M_CREATE_DATE,M_SESS_DATE,M_OUT_DATE,M_BSUSPEN_DATE,M_ESUSPEN_DATE,M_NOD  |test-data/I075/I075_MX2_NA_NA_NA.csv |
    	| MX.3_R001  | M_EMP_ID,M_EMP_NAME,M_CREATE_DATE,M_SESS_DATE,M_OUT_DATE,M_BSUSPEN_DATE,M_ESUSPEN_DATE,M_NOD  |test-data/I075/I075_MX3_NA_NA_NA.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I075/" with prefix name "I075_NA_NA_NA_"
     Then The different result should be empty