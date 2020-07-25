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

@WebServlet("/DonorsNearby")
public class DonorsNearby extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String group = request.getParameter("bloodGroup");
		String city = request.getParameter("location").toLowerCase();
		DonorDAO bankDao = new 	DonorDAO();
		List<Donor> arrayList = bankDao. getDonorCityBloodGroup(city,group,"good");
		out.print("<html>");
		if(!(arrayList.isEmpty())){
			request.setAttribute("DonorData", arrayList);
		    RequestDispatcher rd = request.getRequestDispatcher("DonorsNearby.jsp");
		    rd.forward(request, response);
			
		}
		else
		{
			out.print("<body>");
			out.print("<center><h1>No donors are available..</h1></center>");
			RequestDispatcher rd = request.getRequestDispatcher("locationdonor.jsp");
			rd.include(request, response);
			out.print("</body>");			
		}
		out.println("</html>");		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
