package com.dn.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dn.Beans.RegisterBean;
import com.dn.Model.PassengerDB;

/**
 * Servlet implementation class AirServlet
 */
public class AirServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AirServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("index.jsp").forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out = response.getWriter();
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		long phoneNum = Long.parseLong(request.getParameter("phoneNum"));
		
		RegisterBean rb = new RegisterBean(lastName, firstName, phoneNum);
		
		PassengerDB pdb = new PassengerDB();
		String s1 = pdb.insertPassenger(rb);
		System.out.println(s1);
		}

}
