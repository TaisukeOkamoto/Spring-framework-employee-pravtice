package jp.ken.employees;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.ken.employees.model.EmployeeModel;

@Controller
public class EmployeeController {

	@RequestMapping(value="/employees", method=RequestMethod.GET)
	public String displayEmployeeForm(@ModelAttribute EmployeeModel Employeemodel,Model model) {
		EmployeeModel employeeModel = new EmployeeModel();

		model.addAttribute(employeeModel);

		System.out.println(employeeModel);

		return "employeesRegistration";

	}

}
