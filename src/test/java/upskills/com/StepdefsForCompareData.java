package upskills.com;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.formatter.model.DataTableRow;
import upskills.utils.RequestInfo;

public class StepdefsForCompareData {
	
	RequestInfo requestInfo = null;
	
	@Given("^I have two data sources as below$")
	public void i_have_two_data_sources_as_below(DataTable testingDataSources) throws Throwable {
		 List<DataTableRow> rows = testingDataSources.getGherkinRows();
		 requestInfo = new RequestInfo();
		 requestInfo.setDataSource1(rows.get(1).getCells().get(0));
		requestInfo.setDataSource2(rows.get(2).getCells().get(0));
	}
	
	@Given("^Test case is \"(.*?)\"$")
	public void test_case_is(String arg1) throws Throwable {
	   requestInfo.setTestcase(arg1);
	}

	@Given("^Time stamp is \"(.*?)\"$")
	public void time_stamp_is(String arg1) throws Throwable {
	    requestInfo.setTimeStamp(arg1);
	}
		
	@Given("^M_Ref_ID is '(\\d+)'$")
	public void m_ref_id_is(int m_ref_id) throws Throwable {
		requestInfo.setmRefId(m_ref_id);
	}

	@When("^compare data$")
	public void compare_data() throws Throwable {
		compare();
	}

	@Then("^compare data is complete$")
	public void compare_data_is_complete() throws Throwable {
	   
	}
	
	public boolean compare() {
		Connection conn = null;
   	 	CallableStatement stmt = null;
   	 	String call = "{ call Reconcile.pkg_reconcile.compare_Data(?,?,?,?,?) }";
   	    try {
   	    	Class.forName ("oracle.jdbc.OracleDriver");
   	        conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","reconcile", "reconcile123");
   	        stmt = conn.prepareCall(call);
   	        stmt.setString(1, requestInfo.getDataSource1());
   	        stmt.setString(2, requestInfo.getDataSource2());
   	        stmt.setString(3, requestInfo.getmRefId().toString());
   	        stmt.setString(4, requestInfo.getTimeStamp());
   	        stmt.setString(5, requestInfo.getTestcase());
   	        stmt.execute();

   	        stmt.close();
   	        conn.close();
   	        	
   	  } catch (Exception e) {
   	        System.err.println("Error extracting " + e.getMessage());
   	        return false;
   	    } finally {
   	    }
   	    return true;
	}
	
}
