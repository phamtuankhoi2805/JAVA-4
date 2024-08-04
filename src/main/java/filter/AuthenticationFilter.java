package filter;


import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

public class AuthenticationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
       System.out.println("Run Filter");
    }
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		 HttpServletRequest httpRequest = (HttpServletRequest) request;
	        HttpServletResponse httpResponse = (HttpServletResponse) response;
	        HttpSession session = httpRequest.getSession();

	        // Lấy đối tượng User từ session
	        User user = (User) session.getAttribute("user");

	        // Kiểm tra nếu user là Admin thì cho phép truy cập
	        if (user != null && user.getUserType().equals("Admin")) {
	            chain.doFilter(request, response);
	        } else {
	            // Nếu không phải Admin, chuyển hướng về trang khác
	            httpResponse.sendRedirect(httpRequest.getContextPath() + "/views/Login.jsp");
	        }
		
	}

    @Override
    public void destroy() {
       
    }

}
