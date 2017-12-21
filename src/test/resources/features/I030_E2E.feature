Feature: Demo Reconciliation
  
  @I030_E2E
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                           |
    	| MxG2K_R001 | Liem_Recon/I030/MX_FX_OPTION_22042016.txt|
    	| MX.3_R001  | Liem_Recon/I030/MX_FX_OPTION.txt  |
      And The data structure of these data is at "Liem_Recon/I030/I030_Layout.csv"
     When I compare these data with difference result is generated at "Liem_Recon/I030/" with prefix name "I030_E2E_" 
     Then The different result should be empty
