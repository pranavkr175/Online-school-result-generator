package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DbConnect;
import dao.marksheetdao;
import entity.Marks;

@WebServlet("/marks")
public class AddMarks extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddMarks() {
		super();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		int roll = Integer.parseInt(request.getParameter("roll"));
		int c = Integer.parseInt(request.getParameter("c"));
		int web = Integer.parseInt(request.getParameter("web"));
		int java = Integer.parseInt(request.getParameter("java"));
		int network = Integer.parseInt(request.getParameter("network"));
		int python = Integer.parseInt(request.getParameter("python"));
		HttpSession session = request.getSession();
		
		PrintWriter out = response.getWriter();
		if(c<=100&&web<=100&&java<=100&&network<=100&&python<=100) {
			marksheetdao dao=new marksheetdao(DbConnect.getCon());
			Marks mr=new Marks(roll, c, web, java, network, python);
			boolean f=dao.setMarksOnMarksheet(mr);
			
			if(f) {
				session.setAttribute("succ", "Marks added succes fullly");
				response.sendRedirect("admin/viewStudent.jsp");
				System.out.println("marks added"); 
			}else {
				session.setAttribute("error", "Something went wrong");
				response.sendRedirect("admin/addMarks.jsp");
				System.out.println(" mark not added");
			}
	}else {
		session.setAttribute("error", "enter marks less then 100");
		request.getRequestDispatcher("admin/addMarks.jsp").include(request, response);  
	     
		System.out.println(" add marks under 100");
	}

		

	}

}
