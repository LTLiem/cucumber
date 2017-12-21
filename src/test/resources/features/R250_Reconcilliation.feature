Feature: Demo Reconciliation
    
  @R250DM
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R250DM | "M_NB" |test-data/R250/R250_DM_MX2.csv |
    	| MX.3_R250DM | "M_NB" |test-data/R250/R250_DM_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R250/" with prefix name "R250_DM_CSV_" 
     Then The different result should be empty
     
  @R250SQL
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R250SQL | "NB_TRN","M_EN_DATE" |test-data/R250/R250_SQL_MX2_150506_150506_150506.csv |
    	| MX.3_R250SQL | "NB_TRN","M_EN_DATE" |test-data/R250/R250_SQL_MX3_150506_150506_150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R250/" with prefix name "R250_SQL_CSV_" 
     Then The different result should be empty
     
  @R250DYN
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R250DYN | "M_NB" |test-data/R250/R250_DYN_MX2_150506_150506_150506.csv |
    	| MX.3_R250DYN | "M_NB" |test-data/R250/R250_DYN_MX3_150506_150506_150506.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R250/" with prefix name "R250_DYN_CSV_" 
     Then The different result should be empty
     
  @R250PDF
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_R250DYN | PaymentDate DealNo,Customer |test-data/R250/GA_TAX_BN01_MX2.csv |
    	| MX.3_R250DYN | PaymentDate DealNo,Customer |test-data/R250/GA_TAX_BN01_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R250/" with prefix name "R250_PDF_CSV_" 
     Then The different result should be empty