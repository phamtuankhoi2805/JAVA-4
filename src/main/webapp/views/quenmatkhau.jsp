<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dổi mật khẩu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" type="text/css" href="index.css">
    
</head>

<body>
<%  String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ request.getContextPath();

 boolean me =false ;
%>
  <!-- bat đầu nav -->
   <jsp:include page="modul/nav.jsp"></jsp:include>
  <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
    <div class="row w-100">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h1 class="card-title text-center mb-4">Quên mật khẩu</h1>
            <form>
              <div class="mb-3">
                <label for="username" class="form-label">Tên đăng nhập</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tên đăng nhập của bạn" required>
              </div>
              <div class="mb-3">
                <label for="email" class="form-label">Địa chỉ email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Nhập địa chỉ email của bạn" required>
              </div>
              <button type="submit" class="btn btn-primary w-100">Đặt lại mật khẩu</button>
            </form>
            <div class="alert alert-success mt-3 <%= me ? "d-flex" : "d-none" %>" role="alert">
              Hướng dẫn đặt lại mật khẩu đã được gửi đến email của bạn.
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h1 class="card-title text-center mb-4">Đổi mật khẩu</h1>
            <form>
              <div class="mb-3">
                <label for="username" class="form-label">Tên đăng nhập</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tên đăng nhập của bạn" required>
              </div>
              <div class="mb-3">
                <label for="old-password" class="form-label">Mật khẩu cũ</label>
                <input type="password" class="form-control" id="old-password" name="old-password" placeholder="Nhập mật khẩu cũ của bạn" required>
              </div>
              <div class="mb-3">
                <label for="new-password" class="form-label">Mật khẩu mới</label>
                <input type="password" class="form-control" id="new-password" name="new-password" placeholder="Nhập mật khẩu mới của bạn" required>
              </div>
              <button type="submit" class="btn btn-primary w-100">Đổi mật khẩu</button>
            </form>
            <div class="alert alert-success mt-3 d-none" role="alert">
              Đổi mật khẩu thành công.
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<!-- foooter -->
   <jsp:include page="modul/footer.jsp"></jsp:include>
<!-- end foooter -->


<!-- Custom JavaScript -->

      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>