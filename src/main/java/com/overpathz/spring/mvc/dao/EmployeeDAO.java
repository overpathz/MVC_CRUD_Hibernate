package com.overpathz.spring.mvc.dao;

import com.overpathz.spring.mvc.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
   List<Employee> getAllEmployees();
}