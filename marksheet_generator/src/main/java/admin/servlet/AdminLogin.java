package admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.StudentDetail;

@WebServlet("/adminlogin")

public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String email=req.getParameter("email");
			String pass=req.getParameter("password");
			HttpSession session=req.getSession();
			if("admin@gmail.com".equals(email) && "12345".equals(pass)){
				session.setAttribute("adminobj", new StudentDetail());
				resp.sendRedirect("admin/index.jsp");
			} else {
				session.setAttribute("error", "Invalid email/password");
				resp.sendRedirect("adminLogin.jsp");
			}
			
		} catch (Exception e) {
		
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
