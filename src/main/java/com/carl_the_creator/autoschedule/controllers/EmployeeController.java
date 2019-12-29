package com.carl_the_creator.autoschedule.controllers;

import com.carl_the_creator.autoschedule.entities.Employee;
import com.carl_the_creator.autoschedule.repos.EmployeeRepository;
import com.carl_the_creator.autoschedule.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class EmployeeController {


    @Autowired
    EmployeeService employeeService;

    @Autowired
    EmployeeRepository employeeRepository;


    @RequestMapping("showEmployee")
    public String showEmployee() {
        return "createEmployee";
    }

    @RequestMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee") Employee employee, ModelMap modelMap) {
        Employee employeeSaved = employeeService.saveEmployee(employee);
        String msg = "Employee Saved With id: " + employeeSaved.getId();
        modelMap.addAttribute("msg", msg);
        return "createEmployee";
    }

    @RequestMapping("/displayEmployees")
    public String displayEmployee(ModelMap modelMap) {
        List<Employee> employees = employeeService.getAllEmployees();
        modelMap.addAttribute("employees", employees);
        return "displayEmployees";
    }

    @RequestMapping("/schedule")
    public String generateSchedule(ModelMap modelMap) {
        List<Employee> employees = employeeService.getAllEmployees();
        modelMap.addAttribute("employees", employees);
        return "displaySchedule";
    }


    @RequestMapping("/home")
    public String home(ModelMap modelMap) {
        List<Employee> employees = employeeService.getAllEmployees();
        modelMap.addAttribute("employees", employees);
        return "home";
    }

    @RequestMapping("/home2")
    public String homeWithSearch(ModelMap modelMap, @RequestParam(defaultValue = "") String name) {
        modelMap.addAttribute("employees", employeeService.searchEmployee(name));
        return "home";
    }

    @RequestMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("id") int id, ModelMap modelMap) {
        Employee employee = employeeService.getEmployeeById(id);
        employeeService.deleteEmployee(employee);
        List<Employee> employees = employeeService.getAllEmployees();
        modelMap.addAttribute("employees", employees);
        return "displayEmployees";
    }

    @RequestMapping("/deleteEmployeeAdmin")
    public String deleteEmployeeAdmin(@RequestParam("id") int id, ModelMap modelMap) {
        Employee employee = employeeService.getEmployeeById(id);
        employeeService.deleteEmployee(employee);
        List<Employee> employees = employeeService.getAllEmployees();
        modelMap.addAttribute("employees", employees);
        return "home";
    }


    @RequestMapping("/showUpdate")
    public String showUpdate(@RequestParam("id") int id, ModelMap modelMap) {
        Employee employee = employeeService.getEmployeeById(id);
        modelMap.addAttribute("employee", employee);
        return "updateEmployee";
    }

    @RequestMapping("/updateEmployee")
    public String updateEmployee(@ModelAttribute("location") Employee employee, ModelMap modelMap) {
        employeeService.updateEmployee(employee);
        List<Employee> employees = employeeService.getAllEmployees();
        modelMap.addAttribute("employees", employees);
        return "displayEmployees";
    }


}
