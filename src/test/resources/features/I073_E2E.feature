Feature: Demo Reconciliation
  
  @I073_E2E
  Scenario: Reconcile fixed length text files from two datasources 
    Given I have two fixed-length text files as below
    	| Data Name  | File path                           |
    	| MxG2K_I073 | Liem_Recon/I073/MX_GL_MX2_20160506.TXT|
    	| MX.3_I073  | Liem_Recon/I073/MX_GL_MX3_20160506.TXT  |
      And The data structure of these data is at "Liem_Recon/I073/I073_Layout.csv"
     When I compare these data with difference result is generated at "Liem_Recon/I073/" with prefix name "I073_E2E_" 
     Then The different result should be empty
