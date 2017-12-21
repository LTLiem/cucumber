package upskills.utils;

public class RequestInfo {
	private String dataSource1;
	private String dataSource2;
	private String timeStamp;
	private String testcase;
	private Integer mRefId;
	
	public RequestInfo() {
		
	}

	public String getDataSource1() {
		return dataSource1;
	}

	public void setDataSource1(String dataSource1) {
		this.dataSource1 = dataSource1;
	}

	public String getDataSource2() {
		return dataSource2;
	}

	public void setDataSource2(String dataSource) {
		this.dataSource2 = dataSource;
	}

	public String getTimeStamp() {
		return timeStamp;
	}

	public void setTimeStamp(String timeStamp) {
		this.timeStamp = timeStamp;
	}

	public String getTestcase() {
		return testcase;
	}

	public void setTestcase(String testcase) {
		this.testcase = testcase;
	}

	public Integer getmRefId() {
		return mRefId;
	}

	public void setmRefId(Integer mRefId) {
		this.mRefId = mRefId;
	}
}
