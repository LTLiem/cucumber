Feature: Demo Reconciliation

  # Recocile dyn table:
  # Computing date
  		# Date 0: NA
  		# Date 1: NA
  		# Date 2: DENV("CRT_BND12")
  # Filter
  # View
  @I040_DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_NB,M_H_VALUE,M_H_TYPELAB0,M_H_TYPELAB1,M_H_TYPELAB2,M_H_TYPELAB3 |test-data/I040/I040_LOXTN_MX2_NA_NA_30122015.csv |
    	| MX.3_R001  | M_H_NB,M_H_VALUE,M_H_TYPELAB0,M_H_TYPELAB1,M_H_TYPELAB2,M_H_TYPELAB3 |test-data/I040/I040_LOXTN_MX3_NA_NA_30122015.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I040/" with prefix name "I040_LOXTN_NA_NA_30122015_1___"
     Then The different result should be empty
     
     
  # Recocile dyn table:
  # Computing date
  		# Date 0: NA
  		# Date 1: NA
  		# Date 2: DENV("CRT_BND12")
  # Filter
  # View
  @I040_EXTRACTION
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R001 | M_H_TMB_REF,M_H_TRN_DTE,M_H_TRN_TYPE,M_H_AMT |test-data/I040/I040_MX2_NA_NA_30122015_ACTUATE.csv |
    	| MX.3_R001  | M_H_TMB_REF,M_H_TRN_DTE,M_H_TRN_TYPE,M_H_AMT |test-data/I040/I040_MX3_NA_NA_30122015_ACTUATE.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I040/" with prefix name "I040_LOXTN_NA_NA_30122015_1___"
     Then The different result should be empty