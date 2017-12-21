Feature: Demo Reconciliation
  
  @I032_E2E_LLE1
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                           |
    	| MxG2K_I032 | Liem_Recon/I032_E2E/MX_FX_TXN_20160509.TXT|
    	| MX.3_I032  | Liem_Recon/I032_E2E/MX_FX_TXN.TXT  |
      And The data structure of these data is at "Liem_Recon/I032_E2E/I032_Layout.csv"
     When I compare these data with difference result is generated at "Liem_Recon/I032_E2E/" with prefix name "I032_E2E_" 
     Then The different result should be empty
