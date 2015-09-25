package cn.ssh.domain;

import java.util.Date;

/**
 * 员工表
 */
public class Employee {
	
	private Integer id;
	// 不能被修改
	private String lastName;
	private String email;
	// 从前端传入的是 String 类型, 所以需要注意转换
	private Date birth;

	// 不能被修改
	private Date createTime;
	// 单向 n-1 的关联关系
	private Department department;
	
	public Employee() {
		super();
	}
	
	public Employee(Integer id, String lastName, String email, Date birth,
			Date createTime) {
		super();
		this.id = id;
		this.lastName = lastName;
		this.email = email;
		this.birth = birth;
		this.createTime = createTime;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	
	@Override
	public String toString() {
		return "Employee [id=" + id + ", lastName=" + lastName + ", email="
				+ email + ", birth=" + birth + ", createTime=" + createTime
				+ ", department=" + department + "]";
	}
}
