<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" type="text/css" href="index.css">
    
</head>

<body>
<%  String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ request.getContextPath();


%>
  <!-- bat đầu nav -->
   <jsp:include page="modul/nav.jsp"></jsp:include>

<!-- login -->
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="form-container">
        <h2 class="nav-link active" style="width: 100% ;text-align: center;" id="đăng-nhập-tab" data-bs-target="đăng-nhập" role="tab" aria-controls="đăng-nhập">Đăng nhập</h2>
                 <p class="alert " id="error-message" role="alert">
  ${mes}
</p>
        <form class="mt-4" action="<%= url %>/User" method="post">
            <div class="mb-3">
                <label for="đăng-nhập-email" class="form-label">Tên Đăng Nhập</label>
                <input type="text" class="form-control" id="TenDangNhap" name="tenDangNhap" aria-describedby="emailHelp" required>
            </div>
            <div class="mb-3">
                <label for="đăng-nhập-password" class="form-label">Mật khẩu</label>
                <input type="password" class="form-control" name="matKhau" id="đăng-nhập-password" required>
            </div>

            <button type="submit" class="btn btn-primary w-100" name="hanhDong" value="login">Đăng nhập</button>
            <a href="<%=url %>/views/dangky.jsp" class="btn btn-secondary w-100 mt-3">Đăng ký</a>
        </form>
    </div>
</div>


<!-- end login -->
<!-- foooter -->
   <jsp:include page="modul/footer.jsp"></jsp:include>
<!-- end foooter -->


<!-- Custom JavaScript -->
<script>
  // Handle form submission
  document.getElementById('login-tab').addEventListener('click', () => {
    document.getElementById('loginEmail').value = '';
    document.getElementById('loginPassword').value = '';
  });

  document.getElementById('register-tab').addEventListener('click', () => {
    document.getElementById('registerName').value = '';
    document.getElementById('registerEmail').value = '';
    document.getElementById('registerPassword').value = '';
  });

  // Handle email sending
  document.querySelectorAll('form').forEach(form => {
    form.addEventListener('submit', (e) => {
      e.preventDefault();

      // Get form data
      const formData = new FormData(e.target);
      const email = formData.get('email');

      // Simulate email sending
      alert(`An email has been sent to ${email}.`);

      // Reset form
      e.target.reset();
    });
  });
  
</script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>