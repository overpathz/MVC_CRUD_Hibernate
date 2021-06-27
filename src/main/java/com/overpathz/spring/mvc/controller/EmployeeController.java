package com.overpathz.spring.mvc.controller;

import com.overpathz.spring.mvc.dao.EmployeeDAO;
import com.overpathz.spring.mvc.dao.EmployeeDAOImpl;
import com.overpathz.spring.mvc.entity.Employee;
import com.overpathz.spring.mvc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping
    public String showAllEmployees(Model model) {
        model.addAttribute("employees", employeeService.getAllEmployees());
        return "employee/all-employees";
    }

    @GetMapping("/addNewEmployee")
    public String addNewEmployee(Model model) {
        model.addAttribute("employee", new Employee());
        return "employee/employee-info";
    }

    @PostMapping("/addNewEmployee")
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.saveEmployee(employee);
        return "redirect:/employees";
    }

    @GetMapping("/updateEmployee")
    public String updateUser(@RequestParam("empId") int id, Model model) {
        model.addAttribute("employee", employeeService.getEmployee(id));
        return "employee/employee-info";
    }

    @GetMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("empId") int id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employees";
    }
}
