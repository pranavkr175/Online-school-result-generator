package admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminlogout")

public class AdminLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AdminLogout() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		session.removeAttribute("adminobj");
		session.setAttribute("succ","Logout successfully");
		resp.sendRedirect("adminLogin.jsp");
		
	}

}
