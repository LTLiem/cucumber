Feature: Demo Reconciliation
    
  @fxsp
  Scenario: Reconcile extraction sql
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_SS | fxsp:pair |test-data/SS/mx2_fxsp_pair.csv |
    	| MX.3_SS  | fxsp:pair |test-data/SS/mx3_fxsp_pair.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/SS/" with prefix name "fxsp_" 
     Then The different result should be empty
     
     
     
   @fxsw
  Scenario: Reconcile extraction sql
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_SS | fxsw:pair,fxsw:curveLabel,fxsw:type,fxsw:generator,fxsw:market,fxsw:maturity |test-data/SS/mx2_fxsw_maturity.csv |
    	| MX.3_SS  | fxsw:pair,fxsw:curveLabel,fxsw:type,fxsw:generator,fxsw:market,fxsw:maturity |test-data/SS/mx3_fxsw_maturity.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/SS/" with prefix name "fxsw_" 
     Then The different result should be empty
     
     
     
     @rtcs
  Scenario: Reconcile extraction sql
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_SS | rtcs:index,rtcs:pillar,rtcs:ordinate |test-data/SS/mx2_rtcs_ordinate.csv |
    	| MX.3_SS  | rtcs:index,rtcs:pillar,rtcs:ordinate |test-data/SS/mx3_rtcs_ordinate.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/SS/" with prefix name "rtcs_" 
     Then The different result should be empty
     
     
     @rtsh
  Scenario: Reconcile extraction sql
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_SS | rtsh:currency,rtsh:type,rtsh:generator,rtsh:maturity |test-data/SS/mx2_rtsh_maturity.csv |
    	| MX.3_SS  | rtsh:currency,rtsh:type,rtsh:generator,rtsh:maturity |test-data/SS/mx3_rtsh_maturity.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/SS/" with prefix name "rtsh_" 
     Then The different result should be empty
     
     
     @rtsv
  Scenario: Reconcile extraction sql
    Given I have two CSV files separated by "," as below
    	| Data Name  | Key Columns             | File path                            |
    	| MxG2K_SS | rtsv:swapTemplate,rtsv:swapTenor,rtsv:maturity |test-data/SS/mx2_rtsv_maturity.csv |
    	| MX.3_SS  | rtsv:swapTemplate,rtsv:swapTenor,rtsv:maturity |test-data/SS/mx3_rtsv_maturity.csv |
     When I compare these "CSV" data with difference result is generated at "test-result/SS/" with prefix name "rtsv_" 
     Then The different result should be empty