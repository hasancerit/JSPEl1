package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Department;
import model.Employee;

@WebServlet("/sendattr")
public class SendAttr extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Department department = new Department("1","Yazilim");
		Employee employee = new Employee("2", "Hasan Cerit", department);
		req.setAttribute("myemployee", employee);
		
		
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("key1", "value1");
		map.put("key2", "value2");
		map.put("key3", "value3");
		req.setAttribute("map", map);
		req.setAttribute("key","key2");
		
		ArrayList<String> arrayList = new ArrayList<String>();
		arrayList.add("listEleman1");
		arrayList.add("listEleman2");
		arrayList.add("listEleman3");
		req.setAttribute("arrayList", arrayList);
		req.setAttribute("index","2");

		req.setAttribute("hasan","cerit");
		req.getServletContext().setAttribute("deniz","inan");
		Cookie cookie = new Cookie("myCookie", "cookie");
		resp.addCookie(cookie);
		
		RequestDispatcher view = req.getRequestDispatcher("JSPs/eljsp.jsp");
		view.forward(req, resp);
	}
}
