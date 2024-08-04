package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/User")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String hanhDong = request.getParameter("hanhDong");
		if(hanhDong != null && hanhDong.equals("login")) {
			login(request, response);
		
		} else 	if(hanhDong != null && hanhDong.equals("thoat")) {
			exit(request, response);
		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	    	String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	    	+ request.getContextPath();
	        String tenDangNhap = request.getParameter("tenDangNhap");
	        String matKhau = request.getParameter("matKhau");
	        User user1 = new User();
	        user1.setUsername(tenDangNhap);
	        user1.setPasswordHash(matKhau);
	        UserDao userdao = new UserDao();
	        User user = userdao.getInstance().selectUserNameAndPass(user1);
	        if (user != null &&  user.getUserType().equals("Admin")) {
	            HttpSession session = request.getSession();
	            session.setAttribute("user", user);
	            response.sendRedirect(url+"/views/admin.jsp");
	        }else if (user != null &&  user.getUserType().equals("User")) {
	        	 HttpSession session = request.getSession();
		            session.setAttribute("user", user);
		            response.sendRedirect(url+"/views/index.jsp");
	        	
	        } else {
	            response.sendRedirect(url+"/views/Login.jsp");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	protected void exit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			// Huy bo session
			session.invalidate();

			String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath();

			response.sendRedirect(url + "/views/index.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
