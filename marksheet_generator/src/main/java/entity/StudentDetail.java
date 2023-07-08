package entity;

public class StudentDetail {
private int roll;
private String name;
private String add;
private String fname;
private String dob;
public StudentDetail(int roll, String name, String add, String fname, String dob) {
	super();
	this.roll = roll;
	this.name = name;
	this.add = add;
	this.fname = fname;
	this.dob = dob;
}
public StudentDetail(String name, String add, String fname, String dob) {
	super();
	this.name = name;
	this.add = add;
	this.fname = fname;
	this.dob = dob;
}
public StudentDetail() {

}
public int getRoll() {
	return roll;
}
public void setRoll(int roll) {
	this.roll = roll;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAdd() {
	return add;
}
public void setAdd(String add) {
	this.add = add;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}





}


