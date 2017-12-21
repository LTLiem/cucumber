Feature: Demo Reconciliation
  
  @I031_E2E
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                           |
    	| MxG2K_R001 | Liem_Recon/I031/MX_FX_SWAP_MX2_UAT2.TXT|
    	| MX.3_R001  | Liem_Recon/I031/MX_FX_SWAP_MX3_UAT6.TXT|
      And The data structure of these data is at "Liem_Recon/I031/I031_Layout.csv"
     When I compare these data with difference result is generated at "Liem_Recon/I030/" with prefix name "I031_E2E_" 
     Then The different result should be empty
