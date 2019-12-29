package com.carl_the_creator.autoschedule.service;

import com.carl_the_creator.autoschedule.entities.Employee;

import java.util.List;

public interface EmployeeService {
    Employee saveEmployee(Employee employee);

    Employee updateEmployee(Employee employee);

    void deleteEmployee(Employee employee);

    Employee getEmployeeById(int id);

    List<Employee> getAllEmployees();

    List<Employee> searchEmployee(String name);
}
