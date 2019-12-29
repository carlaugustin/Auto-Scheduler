package com.carl_the_creator.autoschedule.repos;

import com.carl_the_creator.autoschedule.entities.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    List<Employee> findByNameLike(String name);
}
