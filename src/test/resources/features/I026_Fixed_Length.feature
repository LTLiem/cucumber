Feature: Demo Reconciliation
  
  @I026_E2E
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                           |
    	| MxG2K_R001 | Liem_Recon/I026/MX_FOREX_13092016_MX2_UAT2.TXT|
    	| MX.3_R001  | Liem_Recon/I026/MX_FOREX_MX2_UAT2.TXT  |
      And The data structure of these data is at "Liem_Recon/I026/Layout.csv"
     When I compare these data with difference result is generated at "Liem_Recon/I026/" with prefix name "I026_E2E_" 
     Then The different result should be empty

  @I026_E2E_MX2UAT2_MX3UAT6
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                           |
    	| MxG2K_R001 | Liem_Recon/I026/MX_FOREX_MX2_UAT2.TXT|
    	| MX.3_R001  | Liem_Recon/I026/MX_FOREX_28092016_MX3_UAT6.TXT  |
      And The data structure of these data is at "Liem_Recon/I026/Layout.csv"
     When I compare these data with difference result is generated at "Liem_Recon/I026/" with prefix name "I026_E2E_MX2UAT2_MX3UAT6_" 
     Then The different result should be empty
     
     
      @I026_E2E_SIT_MX3UAT6
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                           |
    	| MxG2K_R001 | Liem_Recon/I026/MX_FOREX_MX3_SIT.TXT|
    	| MX.3_R001  | Liem_Recon/I026/MX_FOREX_28092016_MX3_UAT6.TXT  |
      And The data structure of these data is at "Liem_Recon/I026/Layout.csv"
     When I compare these data with difference result is generated at "Liem_Recon/I026/" with prefix name "I026_E2E_SIT_MX3UAT6_" 
     Then The different result should be empty