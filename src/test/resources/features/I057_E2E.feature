Feature: Demo Reconciliation
  
  @I057_E2E
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                           |
    	| MxG2K_R001 | Liem_FixedLength_Recon/MXGLBAL_MX2.txt|
    	| MX.3_R001  | Liem_FixedLength_Recon/MXGLBAL_MX3.txt  |
      And The data structure of these data is at "Liem_FixedLength_Recon/I057_Layout.csv"
     When I compare these data with difference result is generated at "Liem_FixedLength_Recon/" with prefix name "I057_E2E_" 
     Then The different result should be empty
