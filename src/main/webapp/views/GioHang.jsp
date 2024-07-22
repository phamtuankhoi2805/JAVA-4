<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="index.css">
</head>

<body>
  <!-- bat đầu nav -->
  <jsp:include page="modul/nav.jsp"></jsp:include>

  <div class="offcanvas offcanvas-end" data-bs-backdrop="static" tabindex="-1" id="searchOffcanvas" aria-labelledby="searchOffcanvasLabel">
    <div class="offcanvas-header">
      <h5 class="offcanvas-title" id="searchOffcanvasLabel">Search</h5>
      <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
      <div>
        Your search options will be displayed here.
      </div>
    </div>
  </div>


  <!-- end nav -->

  <div class="container my-5">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
        <li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
      </ol>
    </nav>
  
    <h1 class="mb-4">Giỏ hàng</h1>
  
    <div class="table-responsive">
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th>Sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Tổng cộng</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>
              <div class="d-flex align-items-center">
                <img src="img/product/product-10.jpg" alt="Hoa Bouquet Hồng" class="img-fluid me-3" style="max-width: 80px;">
                <div>
                  <h5 class="mb-1">Hoa Bouquet Hồng</h5>
                  <p class="mb-0">Mã: 123456</p>
                </div>
              </div>
            </td>
            <td>295,00 VND</td>
            <td>
              <div class="input-group input-group-sm" style="max-width: 150px;">
                <button class="btn btn-outline-secondary" type="button">-</button>
                <input type="text" class="form-control text-center" value="1">
                <button class="btn btn-outline-secondary" type="button">+</button>
              </div>
            </td>
            <td>295,00 VND</td>
            <td>
              <button type="button" class="btn btn-danger btn-sm">Xóa</button>
            </td>
          </tr>
          <tr>
            <td>
              <div class="d-flex align-items-center">
                <img src="img/product/product-12.jpg" alt="Hoa Jasmine Trắng" class="img-fluid me-3" style="max-width: 80px;">
                <div>
                  <h5 class="mb-1">Hoa Jasmine Trắng</h5>
                  <p class="mb-0">Mã: 123457</p>
                </div>
              </div>
            </td>
            <td>275,00 VND</td>
            <td>
              <div class="input-group input-group-sm" style="max-width: 150px;">
                <button class="btn btn-outline-secondary" type="button">-</button>
                <input type="text" class="form-control text-center" value="2">
                <button class="btn btn-outline-secondary" type="button">+</button>
              </div>
            </td>
            <td>550,00 VND</td>
            <td>
              <button type="button" class="btn btn-danger btn-sm">Xóa</button>
            </td>
          </tr>
          <!-- Thêm các dòng bảng khác tại đây -->
        </tbody>
      </table>
    </div>
  
    <div class="d-flex justify-content-end">
      <div class="card p-4 mb-4" style="max-width: 300px;">
        <h4 class="mb-3">Tóm tắt giỏ hàng</h4>
        <div class="d-flex justify-content-between mb-2">
          <span>Tổng phụ:</span>
          <span>295,00 VND</span>
        </div>
        <div class="d-flex justify-content-between mb-2">
          <span>Phí vận chuyển:</span>
          <span>15,00 VND</span>
        </div>
        <hr>
        <div class="d-flex justify-content-between mb-3">
          <h5 class="mb-0">Tổng cộng: </h5>
          <h5 class="mb-0"> 900,00 VND</h5>
        </div>
        <a href="ThanhToan.jsp" class="btn btn-success">Tiến hành thanh toán</a>
      </div>
    </div>
  </div>

<!-- foooter -->
  <jsp:include page="modul/footer.jsp"></jsp:include>
<!-- end foooter -->
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>