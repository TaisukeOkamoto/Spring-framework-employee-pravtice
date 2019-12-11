package jp.ken.employees;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.ken.employees.model.EmployeeModel;
import jp.ken.employees.model.ListDataModel;

@Controller
public class EmployeeController {


	private ArrayList<ListDataModel> getNumberList(int start,int end) {

		ArrayList<ListDataModel> numberList = new ArrayList<ListDataModel>();

		for(int i = start; i <= end; i ++) {
			numberList.add(new ListDataModel(Integer.toString(i),Integer.toString(i)));
		}
		return numberList;
	}

	private HashMap<String,String> getPostMap() {
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("passport","ITパスポート");
		map.put("kihon","基本情報処理技術者");
		map.put("ouyou","応用情報処理技術者");
		map.put("other","その他");
		return map;
	}

	@RequestMapping(value="/employees", method=RequestMethod.GET)
	public String displayEmployeeForm(@ModelAttribute EmployeeModel Employeemodel,Model model) {

		Calendar calendar = Calendar.getInstance();

		model.addAttribute("byear",getNumberList(1900,calendar.get(Calendar.YEAR)));
		model.addAttribute("bmonth",getNumberList(1,12));
		model.addAttribute("bday",getNumberList(1,31));

		model.addAttribute("post",getPostMap());

		model.addAttribute("eyear",getNumberList(2000,calendar.get(Calendar.YEAR)));
		model.addAttribute("emonth",getNumberList(1,12));
		model.addAttribute("eday",getNumberList(1,31));


		return "employeesRegistration";
	}


}
