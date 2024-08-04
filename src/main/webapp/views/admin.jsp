<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" type="text/css" href="index.css">
     <style type="text/css">
     a{
     color:black;
     }
     </style>
</head>
<% int r = 122; %>
<body>
<div class="container">
<div class="min-vh-100 bg-light text-dark">
  <div class="d-flex">
    <aside class="w-64 bg-card p-4">
      <div class="d-flex align-items-center mb-6">
        <img src="image/logo/logo.png" alt=" logo" class="me-2" />

      </div>
      <br>
      <br>
      <nav>
        <ul class="list-unstyled">
          <li class="mb-4"><a href="admin.jsp" class="text-muted-dark hover-text-dark"><i class="fa-solid fa-house"></i> Trang chủ</a></li>
          <li class="mb-4"><a href="SanPham.jsp" class="text-muted-dark hover-text-dark"><i class="fa-solid fa-bars"></i> Sản phẩm</a></li>
          <li class="mb-4"><a href="GiamGia.jsp" class="text-muted-dark hover-text-dark"><i class="fa-solid fa-ticket"></i> Mã giảm giá</a></li>
        </ul>
      </nav>
    </aside>
    
      <main class="flex-grow-1 p-6">
      <header class="d-flex justify-content-between align-items-center mb-6">
        <h1 class="fs-2 fw-bold">Chào buổi sáng!</h1>
        <div class="d-flex align-items-center">
          <input type="text" placeholder="Tìm kiếm" class="border border-input rounded p-2 me-4" />
        
        </div>
      </header>
<br>
      <section class="row row-cols-3 g-6 mb-6">
        <div class="col bg-card p-4 rounded">
          <h2 class="fs-5 fw-bold">236</h2>
          <p class="text-muted-dark">Tổng số khách hàng</p>
        </div>
        <div class="col bg-card p-4 rounded">
          <h2 class="fs-5 fw-bold">180</h2>
          <p class="text-muted-dark">Tổng doanh thu</p>
        </div>
        <div class="col bg-card p-4 rounded">
          <h2 class="fs-5 fw-bold">364</h2>
          <p class="text-muted-dark">Tổng hóa đơn</p>
        </div>
      </section>

      <section class="row row-cols-2 g-6">
        <div class="col-8">
          <h2 class="fs-5 fw-bold mb-4">Doanh thu</h2>
   <canvas id="revenueChart"></canvas>
        </div>
      
      </section>
    </main>
  </div>
</div>
</div>

  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
  // Revenue chart setup
  var revenueChart = document.getElementById('revenueChart').getContext('2d');
  var myChart = new Chart(revenueChart, {
    type: 'line',
    data: {
      labels: ['2006', '2007', '2008', '2009', '2010', '2011', '2012'],
      datasets: [{
        label: 'Doanh thu',
        data: [<%=r %>, 76, 70, 88, 55, 60, 70],
        backgroundColor: 'rgba(200, 162, 235, 0.2)',
        borderColor: 'rgba(54, 162, 235, 1)',
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>