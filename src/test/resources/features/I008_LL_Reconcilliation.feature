Feature: Demo Reconciliation
 
  @I008_MMGL_ACC_NA_20150506_20150506
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_H_DC,M_H_EFF_DTE,M_H_NB,M_H_REVERSE |test-data/I008_LL/I008_MMGL_ACC_MX02_NA_20150506_20150506.csv |
     | MX.3 | M_H_DC,M_H_EFF_DTE,M_H_NB,M_H_REVERSE |test-data/I008_LL/I008_MMGL_ACC_MX03_NA_20150506_20150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008_LL/" with prefix name "I008_MMGL_ACC_MX02_NA_20150506_20150506_" 
     Then The different result should be empty
     
  @I008_MMGL_REC_NA_20150506_20150506
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_H_NB |test-data/I008_LL/I008_MMGL_REC_MX02_NA_20150506_20150506.csv |
     | MX.3 | M_H_NB |test-data/I008_LL/I008_MMGL_REC_MX03_NA_20150506_20150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008_LL/" with prefix name "I008_MMGL_REC_NA_20150506_20150506_" 
     Then The different result should be empty
     
  @I008_MMGL_FST_20150506_20150506_20150506
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| M_H_DC,M_H_NB,M_H_RULE |test-data/I008_LL/I008_MMGL_FST_MX02_20150506_20150506_20150506.csv |
     | MX.3 | M_H_DC,M_H_NB,M_H_RULE |test-data/I008_LL/I008_MMGL_FST_MX03_20150506_20150506_20150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008_LL/" with prefix name "I008_MMGL_FST_20150506_20150506_20150506_" 
     Then The different result should be empty
     
  @I008_MMGL_FST_TOS_20150506_20150506_20150506
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Entry Number,H_DC |test-data/I008_LL/I008_MMGL_FST_TOS_MX02.csv |
     | MX.3 | Entry Number,H_DC |test-data/I008_LL/I008_MMGL_FST_TOS_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008_LL/" with prefix name "I008_MMGL_FST_TOS_20150506_20150506_20150506_" 
     Then The different result should be empty
     
  @I008_MMGL_FST_TOS_CON2
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Entry Number,H_DC |test-data/I008_LL/I008_MMGL_FST_TOS_CON2_MX02.csv |
     | MX.3 | Entry Number,H_DC |test-data/I008_LL/I008_MMGL_FST_TOS_CON2_MX03.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/I008_LL/" with prefix name "I008_MMGL_FST_TOS_CON2_" 
     Then The different result should be empty