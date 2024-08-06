<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" type="text/css" href="index.css">
    
</head>
<body>
<%  String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ request.getContextPath(); %>
  <!-- bat đầu nav -->
   <jsp:include page="modul/nav.jsp"></jsp:include>

 <div class="container">
  <form class="mt-4" action="<%= url %>/User" method="post">
    <div class="mb-3">
      <label for="ten" class="form-label">Tên</label>
      <input type="text" class="form-control" id="fullName" value="${fullName}" name="fullName" required>
    </div>
    <div class="mb-3">
      <label for="tenDangNhap" class="form-label">Tên Đăng Nhập</label>
      <input type="text" class="form-control" id="tenDangNhap" name="tenDangNhap" value="${tenDangNhap}" required>
    </div>
    <div class="mb-3">
      <label for="dangKyEmail" class="form-label">Địa chỉ email</label>
      <div class="input-group">
        <input type="email" class="form-control" id="email" name="email" value="${email}" aria-describedby="emailHelp" required>
        <button class="btn btn-outline-secondary" type="submit" id="send-code" name="hanhDong" value="guiMa">Gửi Mã</button>
      </div>
    </div>
    <c:if test="${trangThaiGui ==true }">
      <div class="mb-3">
        <label for="mã-xác-nhận" class="form-label">Mã xác nhận</label>
        <div class="input-group">
          <input type="text" class="form-control" name="maXacNhan" id="verification-code" required>
        </div>
      </div>
    </c:if>
    <div class="mb-3">
      <label for="đăng-ký-password" class="form-label">Mật khẩu</label>
      <input type="password" class="form-control" value="${password}" id="password" name="password" required>
    </div>
    <c:if test="${trangThaiGui ==true }">
      <div class="mb-3">
        <button type="submit" name="hanhDong" value="dangKy" class="btn btn-primary w-100">Đăng ký</button>
      </div>
    </c:if>
  </form>
  <div class="mt-3">
    <a href="<%=url %>/views/Login.jsp" class="text-secondary">Quay về trang đăng nhập</a>
  </div>
</div>
<br>
 <jsp:include page="modul/footer.jsp"></jsp:include>

      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>