package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;

import com.ts.dao.DonorDAO;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int donorId = Integer.parseInt(request.getParameter("donorId"));
		DonorDAO donordao = new DonorDAO();
		Donor donor = donordao.getDonor(donorId);
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String city = request.getParameter("city");
		String phoneNumber = request.getParameter("phoneNumber");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String bloodGroup = request.getParameter("bloodGroup");
		String healthstatus = request.getParameter("healthstatus");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		System.out.println(donor.getDateOfDonation());
        Donor donor1 = new Donor( donorId, firstName, lastName, phoneNumber,  city, gender,
				 email,  bloodGroup,  healthstatus,  userName,
				 password,  age,donor.getDateOfDonation());
		int x = donordao.editDonor(donor1);
		RequestDispatcher rd = request.getRequestDispatcher("Update.jsp");
		rd.include(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
