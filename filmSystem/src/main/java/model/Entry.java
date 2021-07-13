package model;

import org.hibernate.validator.constraints.NotEmpty;

public class Entry {
	@NotEmpty(message="반드시 입력해야 합니다.")
	private String id;
	@NotEmpty(message="반드시 입력해야 합니다.")
	private String password;
	@NotEmpty(message="반드시 입력해야 합니다.")
	private String gender;
	private String address;
	@NotEmpty(message="반드시 입력해야 합니다.")
	private String name;
	private String phonenumber;
	private String joindate;
	private String email;
	private String job;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
}
