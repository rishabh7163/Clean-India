package com.exampl.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exampl.dao.UserDao;
import com.exampl.model.User;

@WebServlet("/usercontroller")
public class UserController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String opt = req.getParameter("opt");
		if (opt != null) {
			int choice = Integer.parseInt(opt);
			switch (choice) {
			case 1:
				register(req, resp);
				break;
			case 2:
				login(req, resp);
				break;

			default:
				break;
			}
		}
	}

	private void register(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PrintWriter pw = resp.getWriter();
		String name = req.getParameter("name");
		String uname = req.getParameter("uname");
		String pass = req.getParameter("pass");
		String mobile = req.getParameter("mobile");
		String email = req.getParameter("email");

		System.out.println(name + "\t" + uname + "\t" + pass + "\t" + mobile + "\t" + email);

		User u = new User();
		u.setName(name);
		u.setUname(uname);
		u.setPass(pass);
		u.setMobile(mobile);
		u.setEmail(email);
		
		int i=UserDao.getUserDao().insert(u);
	if(i>0){
		pw.print("successfully Register");
	}else{
		pw.print("registeration failed.");
	}
	pw.close();
	}

	private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PrintWriter pw = resp.getWriter();
		resp.setContentType("text/html");
		String uname = req.getParameter("uname");
		String pass = req.getParameter("pass");
		System.out.println( uname + "\t" + pass );
		User u=UserDao.getUserDao().login(uname, pass);
		if(u!=null){
			HttpSession hs=req.getSession();
			hs.setAttribute("user",u);
			resp.sendRedirect("index.jsp");
		}
		else{
			pw.print("Invalid username/password!");
		}
		pw.close();
	}
}
