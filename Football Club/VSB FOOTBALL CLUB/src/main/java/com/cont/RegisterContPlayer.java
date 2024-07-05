package com.cont;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Register;
import com.model.RegisterDao;

/**
 * Servlet implementation class RegisterContPlayer
 */
@WebServlet("/RegisterCont")
public class RegisterContPlayer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name").trim();
		String date=request.getParameter("date").trim();
		String gender= request.getParameter("gender");
		String contact= request.getParameter("contact").trim();
		String experiencelevel= request.getParameter("experiencelevel");
		String position= request.getParameter("position").trim();
		String email= request.getParameter("email").trim();
		
		ArrayList<String> list=new ArrayList<String>();
		if(name.isEmpty())
			list.add("Enter name field");
		if(date.isEmpty()) 
			list.add("Enter date field");
		if(gender.isEmpty())
			list.add("Enter gender field");
		if(contact.isEmpty())
			list.add("Enter contact field");
		if(experiencelevel.isEmpty())
			list.add("Enter experiencelevel field");
		if(position.isEmpty())
			list.add("Enter position field");
		if(email.isEmpty())
			list.add("Enter email field");
	
			
		if(!list.isEmpty()) {
			request.setAttribute("errors",list);
			RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
			rd.forward(request, response);
			return;
		}
		
		Register r=new Register(name, date, gender, contact, experiencelevel, position, email);
		RegisterDao gd=new RegisterDao();
		gd.storeData(r);
		RequestDispatcher rd1=request.getRequestDispatcher("Acknowledgement1.html");
		rd1.forward(request, response);
	}

}
