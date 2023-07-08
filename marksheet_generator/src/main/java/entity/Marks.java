package entity;

public class Marks {
private int roll;
private int c;
private int web_tech;
private int java;
private int networking;
private int python;



public Marks(int roll, int c, int web_tech, int java, int networking, int python) {
	super();
	this.roll = roll;
	this.c = c;
	this.web_tech = web_tech;
	this.java = java;
	this.networking = networking;
	this.python = python;
}
public Marks(int roll) {
	super();
	this.roll = roll;
}
public Marks() {
	super();
	// TODO Auto-generated constructor stub
}
public int getRoll() {
	return roll;
}
public void setRoll(int roll) {
	this.roll = roll;
}
public int getC() {
	return c;
}
public void setC(int c) {
	this.c = c;
}
public int getWeb_tech() {
	return web_tech;
}
public void setWeb_tech(int web_tech) {
	this.web_tech = web_tech;
}
public int getJava() {
	return java;
}
public void setJava(int java) {
	this.java = java;
}
public int getNetworking() {
	return networking;
}
public void setNetworking(int networking) {
	this.networking = networking;
}
public int getPython() {
	return python;
}
public void setPython(int python) {
	this.python = python;
}



}
