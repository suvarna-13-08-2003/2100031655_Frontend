package com.example.safertek21000316555;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Rest {
	
	
	ArrayList<Employee> employees=new ArrayList<Employee>();
	@GetMapping("/")
	public String h() {
		
		
		return "Index";
		
	}
	@GetMapping("/employee")
		public String employee(Model model) {
		model.addAttribute("employees",employees);
		return "employee";
	}
	@GetMapping("/add")
	public String add() {
		return "add";
	}
	public static final String capitalize(String str)   
	{  
	if (str == null || str.length() == 0) return str;  
	return str.substring(0, 1).toUpperCase() + str.substring(1);  
	}
	@PostMapping("/addEmp")
		public String addEmp(@ModelAttribute("employee") Employee e) {
		int l=employees.size();
		e.setId(l+1);
		if(e.getAge()>40) {
			e.setPos("Sr. Employee");
			e.setSalary((double)e.getAge()*10+50);
		}
		else {
			e.setPos("Jr. Employee");
			e.setSalary((double)e.getAge()*5+50);
		}
		e.setFirstName(capitalize(e.getFirstName()));
		e.setLastName(capitalize(e.getLastName()));
		employees.add(e);
		return "redirect:/employee";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		if(id!=employees.size()) {
			for(int i=id;i<employees.size();i++) {
				employees.get(i).setId(employees.get(i).getId()-1);
			}
		}
		employees.remove(id-1);
		return "redirect:/employee";
	}
	@GetMapping("/eform/{id}")
	public String eform(@PathVariable int id,Model model) {
		model.addAttribute("emp",employees.get(id-1));
		return "eform";
	}
	@PostMapping("/edit/{id}")
	public String edit(@PathVariable int id,@ModelAttribute("neww") Employee nemp) {
		employees.get(id-1).setFirstName(nemp.getFirstName());
		employees.get(id-1).setLastName(nemp.getLastName());
		employees.get(id-1).setAge(nemp.getAge());
		employees.get(id-1).setDepartment(nemp.getDepartment());
		return "redirect:/employee";
	}
	@GetMapping("/home")
	public String home() {
		return "index";
	}
}
	

