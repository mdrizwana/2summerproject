package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.BloodbankDAO;
import com.ts.dao.DonorDAO;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;

@WebServlet("/RequestByLocation")
public class RequestByLocation extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		String group = request.getParameter("bloodGroup");
		String location = request.getParameter("location").toLowerCase();
		BloodbankDAO bankDao = new 	BloodbankDAO();
		List<Bloodbank> arrayList = bankDao.getBloodbankCity(location);
		out.print("<html>");
		request.setAttribute("bankData", arrayList);
		session.setAttribute("group",group);
		RequestDispatcher rd = request.getRequestDispatcher("RequestBloodbankByLocation.jsp");
			rd.include(request, response);
			out.print("</body>");			
		out.println("</html>");	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
