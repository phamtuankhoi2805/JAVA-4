package Controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Util.Email;
import Util.MaHoa;
import dao.UserDao;
import model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/User")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String captra;
       
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String hanhDong = request.getParameter("hanhDong");
		if(hanhDong != null && hanhDong.equals("login")) {
			login(request, response);
		
		} else 	if(hanhDong != null && hanhDong.equals("thoat")) {
			exit(request, response);
		
		}
		 else if(hanhDong != null && hanhDong.equals("guiMa")) {
		   guiMa(request, response);
			}
		 else if(hanhDong != null && hanhDong.equals("dangKy")) {
			   dangky(request, response);
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
		String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
    	+ request.getContextPath();
	    try {
	    
	        String tenDangNhap = request.getParameter("tenDangNhap");
	        String mk = request.getParameter("matKhau");
	        String matKhau = MaHoa.toSHA1(mk);
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
	        	
	        }
	        else {
	            request.setAttribute("mes", "Sai tên đăng nhập hoặc mật khẩu");
	            request.getRequestDispatcher("/views/Login.jsp").forward(request, response);
	        }
	    } catch (Exception e) {
	    	e.printStackTrace();
	        request.setAttribute("mes", "Lỗi đăng nhập, vui lòng thử lại sau");
	        request.getRequestDispatcher("/views/Login.jsp").forward(request, response);
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
	protected void dangky(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		UserDao userdao =  new UserDao();
		String fullName =  request.getParameter("fullName");
		String tenDangNhap = request.getParameter("tenDangNhap");
		String pass =  request.getParameter("password");
		String password  =  MaHoa.toSHA1(pass);
		String email =  request.getParameter("email");
		String maXacNhan =  request.getParameter("maXacNhan");
		if(maXacNhan.equals(captra)) {
		    User user = new User();
		    user.setFullName(fullName);
		    user.setUsername(tenDangNhap);
		    user.setPasswordHash(password);
		    user.setEmail(email);
		    user.setUserType("User");
		    userdao.getInstance().insert(user);
		    System.out.println("thêm thành công");
		    request.getRequestDispatcher("/views/Login.jsp").forward(request, response);
		} else {
			System.out.println("lỗi captra");
		}
	} catch (Exception e) {
	e.printStackTrace();
	}
	
	}
	 public static String generateCaptcha() {
	        String characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	        StringBuilder captcha = new StringBuilder();
	        Random random = new Random();

	        for (int i = 0; i < 6; i++) {
	            int index = random.nextInt(characters.length());
	            captcha.append(characters.charAt(index));
	        }

	        return captcha.toString();
	    }
	 
		protected void guiMa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	    	+ request.getContextPath();
		boolean trangThaiGui =  true;
		request.setAttribute("trangThaiGui", trangThaiGui);
		  captra =  generateCaptcha();
		 String email =  request.getParameter("email");
		Email.sendEmail(email,"Khoi DEV","Mã Xác Nhận Của bạn Là: "+captra);
		String ten = request.getParameter("fullName");
		String tenDangNhap =  request.getParameter("tenDangNhap");

		String password =  request.getParameter("password");
		
		request.setAttribute("fullName", ten);
		request.setAttribute("tenDangNhap", tenDangNhap);
		request.setAttribute("email", email);
		request.setAttribute("password", password);
		   request.getRequestDispatcher("/views/dangky.jsp").forward(request, response);
		
	 }
}
