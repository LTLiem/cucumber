Feature: Demo Reconciliation

  #Date-0: NA
  #Date-1: 05/05/2015
  #Date-2: 06/05/2015
  @R327_BONDEnter2Date
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Trn,BUY/SELL |test-data/R327/R327_BONDEnter2Date_MX2.csv |
     | MX.3 | Trn,BUY/SELL |test-data/R327/R327_BONDEnter2Date_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R327/" with prefix name "R327_BONDEnter2Date_" 
     Then The different result should be empty
     
  
  #Date-0: NA
  #Date-1: NA
  #Date-2: Contextual Today 
  @R327_BONDEnterTDYBOS
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Trn |test-data/R327/R327_BONDEnterTDYBOS_MX2.csv |
     | MX.3 | Trn |test-data/R327/R327_BONDEnterTDYBOS_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R327/" with prefix name "R327_BONDEnterTDYBOS_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: 05/05/2015
  #Date-2: 06/05/2015
  @R327_BONDSettle2Date
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Trn,BUY/SELL |test-data/R327/R327_BONDSettle2Date_MX2.csv |
     | MX.3 | Trn,BUY/SELL |test-data/R327/R327_BONDSettle2Date_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R327/" with prefix name "R327_BONDSettle2Date_" 
     Then The different result should be empty
     
  #Date-0: NA
  #Date-1: NA
  #Date-2: 06/05/2015
  @R327_BONDSettlement
  Scenario: Reconcile CSV files from two datasources driven by header row
    Given I have two CSV files separated by "!" as below
     | Data Name  | Key Columns             | File path                            |
     | MxG2K| Trn,BUY/SELL |test-data/R327/R327_BONDSettlement_MX2.csv |
     | MX.3 | Trn,BUY/SELL |test-data/R327/R327_BONDSettlement_MX3.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/R327/" with prefix name "R327_BONDSettlement_" 
     Then The different result should be empty   
    
     