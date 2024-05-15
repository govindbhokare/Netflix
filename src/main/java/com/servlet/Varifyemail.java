package com.servlet;

import java.io.IOException;

import com.database.Database;
import com.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Varifyemail
 */
public class Varifyemail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Varifyemail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String pword=request.getParameter("pword");
		String pack=request.getParameter("pack");
		String price=request.getParameter("price");
		User user=new User();
		user.setEmail(email);
		user.setPword(pword);
		user.setPack(pack);
		user.setPrice(price);
		new Database().addUser(user);
		response.sendRedirect("signup/varifyemail.jsp?pack="+pack+"&price="+price+"&email="+email);
	}

}
