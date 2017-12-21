Feature: Demo Reconciliation
     
  #Date-0: NA
  #Date-1: NA
  #Date-2: 06/05/2015
  #Global Filter:Bond Performance AFS
  #Viewer: PERF_REPORT_TRADE_LIVE2
  @R385_BondPerformance_AFS
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformanceAFS_NA_NA_20150506_MX2.csv |
    	| MX.3_MMReport  |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformanceAFS_NA_NA_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R385/" with prefix name "R385_BondPerformanceAFS_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: NA
  #Date-2: 06/05/2015
  #Global Filter:Bond Performance
  #Viewer: PERF_REPORT_TRADE_LIVE
  @R385_BondPerformance
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformance_NA_NA_20150506_MX2.csv |
    	| MX.3_MMReport  |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformance_NA_NA_20150506_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R385/" with prefix name "R385_BondPerformance_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: NA
  #Date-2: Today
  #Global Filter:Bond Performance
  #Viewer: PERF_REPORT_TRADE_LIVE
  @R385_BondPerformance_Today_LessThan
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformance_TODAY_LessThan_MX2.csv |
    	| MX.3_MMReport  |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformance_TODAY_LessThan_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R385/" with prefix name "R385_BondPerformance_Today_LessThan_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: NA
  #Date-2: Today
  #Global Filter:Bond Performance
  #Viewer: PERF_REPORT_TRADE_LIVE2
  @R385_BondPerformanceAFS_Today_90DAY
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformance_TODAY_90DAY_MX2.csv |
    	| MX.3_MMReport  |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformance_TODAY_90DAY_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R385/" with prefix name "R385_BondPerformanceAFS_Today_90DAY_" 
     Then The different result should be empty
     
   #Date-0: NA
  #Date-1: NA
  #Date-2: 6/5/2016
  #Global Filter:Bond Performance
  #Viewer: PERF_REPORT_TRADE_LIVE2
  @R385_PEFR_TRADE
  Scenario: Reconcile dynamic viewer
    Given I have two CSV files separated by ";" as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_MMReport |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformance_TODAY_SellToday_0605_MX2.csv |
    	| MX.3_MMReport  |Trn# (Internal),BUY/SELL|test-data/R385/R385_BondPerformance_TODAY_SellToday_0605_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R385/" with prefix name "R385_PEFR_TRADE_" 
     Then The different result should be empty