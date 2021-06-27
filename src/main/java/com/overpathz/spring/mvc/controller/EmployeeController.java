package com.overpathz.spring.mvc.controller;

import com.overpathz.spring.mvc.dao.EmployeeDAO;
import com.overpathz.spring.mvc.dao.EmployeeDAOImpl;
import com.overpathz.spring.mvc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employees")
public class MyController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping
    public String showAllEmployees(Model model) {
        model.addAttribute("employees", employeeService.getAllEmployees());
        return "employee/all-employees";
    }

    @GetMapping("/addNewEmployee")
    public String addNewEmployee() {
        
    }
}
