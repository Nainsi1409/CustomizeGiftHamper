package com.univ.serv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.univ.DAO.CustomerRegDAO;
import com.univ.DTO.CustomerRegDTO;


/**
 * Servlet implementation class CustomerRegServ
 */
@WebServlet("/CustomerRegServ")
public class CustomerRegServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerRegServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CustomerRegDTO d1=new CustomerRegDTO();
		d1.setName(request.getParameter("name"));
		d1.setEmail(request.getParameter("email"));
		d1.setMob(request.getParameter("mob"));
		d1.setCity(request.getParameter("city"));
		d1.setUnm(request.getParameter("unm"));
		d1.setPsw(request.getParameter("psw"));
		

		CustomerRegDAO data=new CustomerRegDAO();
		int x=data.insertData(d1);
		if(x==1) {
			response.sendRedirect("Login.jsp");
			
		}
		else {
			response.sendRedirect("Registration.jsp");
		}
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
