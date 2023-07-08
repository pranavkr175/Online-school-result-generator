package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DbConnect;
import dao.marksheetdao;
import entity.StudentDetail;

/**
 * Servlet implementation class UpdateStudent
 */
@WebServlet("/update")
public class UpdateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudent() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int roll=Integer.parseInt(req.getParameter("roll"));
		String name=req.getParameter("name");
		String fname=req.getParameter("fname");
		String add=req.getParameter("add");
		String dob=req.getParameter("dob");
		StudentDetail sd=new StudentDetail(roll, name, add, fname, dob);
		marksheetdao dao=new marksheetdao(DbConnect.getCon());
		boolean f=dao.updateStudent(sd);
		HttpSession session=req.getSession();
		if(f) {
			session.setAttribute("succ", "Student updated successfully");
			resp.sendRedirect("admin/viewStudent.jsp");
			System.out.println("reg");
		}else {
			session.setAttribute("error", "Something went wrong");
			resp.sendRedirect("admin/viewStudent.jsp");
			System.out.println(" not reg");
		}
	}

}
