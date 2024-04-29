package com.example.safertek21000316555;

public class Employee {
int Id;
String FirstName;
String LastName;
String Gender;
int Age;
double Salary;
String Department;
String Pos;


public String getPos() {
	return Pos;
}
public void setPos(String pos) {
	Pos = pos;
}
public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}
public String getFirstName() {
	return FirstName;
}
public void setFirstName(String firstName) {
	FirstName = firstName;
}
public String getLastName() {
	return LastName;
}
public void setLastName(String lastName) {
	LastName = lastName;
}
public String getGender() {
	return Gender;
}
public void setGender(String gender) {
	Gender = gender;
}
public String getDepartment() {
	return Department;
}
public void setDepartment(String department) {
	Department = department;
}
public Double getSalary() {
	return Salary;
}
public void setSalary(Double salary) {
	Salary = salary;
}
public int getAge() {
	return Age;
}
public void setAge(int age) {
	Age = age;
}
public Employee(int id, String firstName, String lastName, String gender, int age, double salary, String department, String pos) {
	super();
	Id = id;
	FirstName = firstName;
	LastName = lastName;
	Gender = gender;
	Age = age;
	Salary = salary;
	Department = department;
	Pos=pos;
	
}
public Employee() {
	
}
}

