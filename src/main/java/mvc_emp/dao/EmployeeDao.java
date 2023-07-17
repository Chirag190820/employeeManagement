package mvc_emp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import mvc_emp.dto.Employee;

@Component
public class EmployeeDao {
EntityManagerFactory emf = Persistence.createEntityManagerFactory("chirag");
EntityManager em = emf.createEntityManager();
EntityTransaction et = em.getTransaction();

public void saveEmployee(Employee employee) {
	et.begin();
	em.persist(employee);
	et.commit();
}
public Employee getEmployee(int id)
{
	return em.find(Employee.class, id);
}

public List<Employee> getAllEmployee(){
	Query query = em.createQuery("select e from Employee e");
	List<Employee> employees = query.getResultList();
	return employees;
}
public void updateEmployee(Employee employee)
{
	et.begin();
	em.merge(employee);
	et.commit();
	}

public void deleteEmployee(int id) {
	et.begin();
	em.remove(em.find(Employee.class,id));
	et.commit();
	
}
}
