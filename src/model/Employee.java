package model;

public class Employee {
	private String empId,name;
	private Department department;
	
	public Employee() {
		// TODO Auto-generated constructor stub
	}
	public Employee(String empId, String name, Department department) {
		
		this.empId = empId;
		this.name = name;
		this.department = department;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
}
