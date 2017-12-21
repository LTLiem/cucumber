package upskills.com;

import java.io.File;
import java.util.List;

import org.junit.Assert;

import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.formatter.model.DataTableRow;
import upskills.com.model.CompareRequest;
import upskills.com.utils.CompareUtils;
import upskills.com.utils.ReaderUtils;

public final class Stepdefs {
	
	public static final String RESOURCE_FOLDER = System.getProperty("user.dir") + "\\src\\test\\resources\\";
    ThreadLocal<CompareRequest> compareRequestThreadLocal = new ThreadLocal<>();
    

    public CompareRequest initCompareRequest(boolean isFixLength) {
    	compareRequestThreadLocal.set(new CompareRequest(isFixLength));
        return compareRequestThreadLocal.get();
    }

    public CompareRequest getCompareRequest() {
        return compareRequestThreadLocal.get();
    }
    
    @Given("^I have two CSV files separated by \"(.*?)\" as below$")
	public void getCompareCSVRequest(String dataSeparator, DataTable csvDataSources) throws Throwable {
		CompareRequest compareRequest = initCompareRequest(false);
		List<DataTableRow> rows = csvDataSources.getGherkinRows();
	
		compareRequest.setDataSeparator(dataSeparator);
		
		compareRequest.setDsName1(rows.get(1).getCells().get(0));
		compareRequest.setKeyFieldsStr1(rows.get(1).getCells().get(1));
		compareRequest.setFileName1(getAbsolutePath(rows.get(1).getCells().get(2)));
		
		compareRequest.setDsName2(rows.get(2).getCells().get(0));
		compareRequest.setKeyFieldsStr2(rows.get(2).getCells().get(1));
		compareRequest.setFileName2(getAbsolutePath(rows.get(2).getCells().get(2)));
		
		compareRequest.setDataSeparator(dataSeparator);
	}

	@Given("^I have two CSV files as below$")
    public void getCSVDataSourceInfos(DataTable csvDataSources) throws Throwable {
    	CompareRequest compareRequest = initCompareRequest(false);
    	List<DataTableRow> rows = csvDataSources.getGherkinRows();

    	compareRequest.setDsName1(rows.get(1).getCells().get(0));
    	compareRequest.setDsName2(rows.get(2).getCells().get(0));
    	compareRequest.setFileName1(getAbsolutePath(rows.get(1).getCells().get(1)));
    	compareRequest.setFileName2(getAbsolutePath(rows.get(2).getCells().get(1)));
    }


    public static String getAbsolutePath(String classPath) {
	    return Stepdefs.class.getClassLoader().getResource(classPath).getPath();
	}

	@Given("^I have two fixed-length text files as below$")
    public void getDatasourceInfos(DataTable testingDataSources) throws Throwable {
        List<DataTableRow> rows = testingDataSources.getGherkinRows();
        CompareRequest compareRequest = initCompareRequest(true);
        compareRequest.setDsName1(rows.get(1).getCells().get(0));
        compareRequest.setDsName2(rows.get(2).getCells().get(0));
        compareRequest.setFileName1(getAbsolutePath(rows.get(1).getCells().get(1)));
        compareRequest.setFileName2(getAbsolutePath(rows.get(2).getCells().get(1)));
    }

    @Given("^The data structure of these data is at \"(.*?)\"$")
    public void getDataStructureFile(String dataStructureFile) throws Throwable {
        getCompareRequest().setMetaDataFileName(getAbsolutePath(dataStructureFile));
    }

    @When("^I compare these data with difference result is generated at \"(.*?)\" with prefix name \"(.*?)\"$")
    public void compareSpecifiedData(String resultDirRelativePath, String prefix) throws Throwable {

        //String resultDirAbsolutePath = Stepdefs.class.getClassLoader().getResource(resultDirRelativePath).getPath();
        if (prefix == null) {
            prefix = "";
        }
        getCompareRequest()
                .setResultFileName(RESOURCE_FOLDER + resultDirRelativePath + prefix + ReaderUtils.getDefaultTimeStr() + ".csv");

        CompareUtils.compareData(getCompareRequest());
    }

    @When("^I compare these \"(.*?)\" data with difference result is generated at \"(.*?)\" with prefix name \"(.*?)\"$")
    public void compareDate(String dataFormatType, String resultDirRelativePath, String prefix) throws Throwable {
    	// dataFormatType: only CSV for now
    	
        if (prefix == null) {
            prefix = "";
        }
        getCompareRequest()
                .setResultFileName(RESOURCE_FOLDER + resultDirRelativePath + prefix + ReaderUtils.getDefaultTimeStr() + ".csv");

        CompareUtils.compareCSV(getCompareRequest());
    }
    
    @Then("^The different result should be empty$")
    public void validateResult() throws Throwable {
    	/**
         * Loc delete file CSV
         */
    	if (getCompareRequest().getShowCSV().equalsIgnoreCase("TRUE")){
    		File file = new File(getCompareRequest()
                    .getResultFileName());
            if (file.exists()){
            	file.delete();
            }
    	}
        try{
        	List<String> result = ReaderUtils.readFile(getCompareRequest().getResultFileName().replace(".csv", ".xls"));
            Assert.assertEquals(true, result == null || result.size() == 1 || result.size() == 0);
        }catch(Exception e){
        	
        }
    }
}
