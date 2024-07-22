<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <!-- bat đầu nav -->
   <jsp:include page="modul/nav.jsp"></jsp:include>

<!-- login -->
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="form-container">
      <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
          <button class="nav-link active" id="đăng-nhập-tab" data-bs-toggle="tab" data-bs-target="#đăng-nhập" type="button" role="tab" aria-controls="đăng-nhập" aria-selected="true">Đăng nhập</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="đăng-ký-tab" data-bs-toggle="tab" data-bs-target="#đăng-ký" type="button" role="tab" aria-controls="đăng-ký" aria-selected="false">Đăng ký</button>
        </li>
      </ul>
      
      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="đăng-nhập" role="tabpanel" aria-labelledby="đăng-nhập-tab">
          <form class="mt-4">
            <div class="mb-3">
              <label for="đăng-nhập-email" class="form-label">Địa chỉ email</label>
              <input type="email" class="form-control" id="đăng-nhập-email" aria-describedby="emailHelp" required>
            </div>
            <div class="mb-3">
              <label for="đăng-nhập-password" class="form-label">Mật khẩu</label>
              <input type="password" class="form-control" id="đăng-nhập-password" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Đăng nhập</button>
          </form>
        </div>
        
        <div class="tab-pane fade" id="đăng-ký" role="tabpanel" aria-labelledby="đăng-ký-tab">
          <form class="mt-4">
            <div class="mb-3">
              <label for="đăng-ký-tên" class="form-label">Tên</label>
              <input type="text" class="form-control" id="đăng-ký-tên" required>
            </div>
            <div class="mb-3">
              <label for="đăng-ký-email" class="form-label">Địa chỉ email</label>
              <input type="email" class="form-control" id="đăng-ký-email" aria-describedby="emailHelp" required>
              <div id="emailHelp" class="form-text">Chúng tôi sẽ không bao giờ chia sẻ email của bạn với bất kỳ ai khác.</div>
            </div>
            <div class="mb-3">
              <label for="đăng-ký-password" class="form-label">Mật khẩu</label>
              <input type="password" class="form-control" id="đăng-ký-password" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Đăng ký</button>
          </form>
        </div>
      </div>
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