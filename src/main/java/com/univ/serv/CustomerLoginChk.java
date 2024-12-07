package com.univ.serv;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.univ.DAO.CustomerRegDAO;

import com.univ.DTO.CustomerRegDTO;


/**
 * Servlet implementation class CustomerLoginChk
 */
@WebServlet("/CustomerLoginChk")
public class CustomerLoginChk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLoginChk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession hs=request.getSession(false);
		if(hs!=null) {
			hs.invalidate();
		}
		CustomerRegDTO d1=new CustomerRegDTO();
		
		d1.setUnm(request.getParameter("unm"));
		d1.setPsw(request.getParameter("psw"));
		
		CustomerRegDAO data=new CustomerRegDAO();
		List lst= data.CustomerloginChk(d1);
		
		if(lst==null || lst.isEmpty()) {
			response.sendRedirect("Login.jsp");
			
		}
		else {
			hs=request.getSession(true);
			hs.setAttribute("user",lst);
			response.sendRedirect("index.jsp");
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
