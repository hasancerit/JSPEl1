package model;

public class Department {
	private String departmentId,departmentName;
	
	public Department() {
		// TODO Auto-generated constructor stub
	}
	
	public Department(String departmentId, String departmentName) {
		this.departmentId = departmentId;
		this.departmentName = departmentName;
	}


	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
}
