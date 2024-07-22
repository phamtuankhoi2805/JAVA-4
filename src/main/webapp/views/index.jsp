<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" type="text/css" href="index.css">
     

</head>

<body>
  <!-- bat đầu nav -->
  <jsp:include page="modul/nav.jsp"></jsp:include>


<!-- end nav  -->
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

<!-- 
star carosel -->
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="img/slider/home3-slide1.jpg" class="d-block w-100 " alt="...">
      
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="img/slider/home3-slide2.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- 
end carosel -->


<!-- support -->
<div class="container my-5">
  <div class="row align-items-center">
    <div class="col-md-4">
      <div class="card shadow-sm border-0 h-100">
        <div class="card-body text-center">
          <img src="img/icon/free_shipping.png" alt="..">
          <h5 class="card-title">GIAO HÀNG MIỄN PHÍ</h5>
          <p class="card-text">Giao hàng miễn phí cho tất cả các đơn hàng</p>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card shadow-sm border-0 h-100">
        <div class="card-body text-center">
          <img src="img/icon/support247.png" alt="">
          <h5 class="card-title">HỖ TRỢ 24/7</h5>
          <p class="card-text">Hỗ trợ 24 giờ một ngày</p>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card shadow-sm border-0 h-100">
        <div class="card-body text-center">
          <img src="img/icon/money_back.png" alt="">
          <h5 class="card-title">TRẢ LẠI TIỀN</h5>
          <p class="card-text">30 ngày trả lại miễn phí</p>
        </div>
      </div>
    </div>
 
  </div>
</div>
<!-- end support -->
   <!-- ưu đãi của tháng -->
<div class="container my-5">
  <h1 class="text-center mb-4">Ưu đãi của tháng</h1>
  <div id="carouselExample" class="carousel slide">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="row">
          <div class="col-md-6">
            <div class="product-card">
              <div class="row">
                <div class="col-md-6">
                  <img src="img/product/product-1.jpg" alt="Jasmine flowers white" class="product-image">
                </div>
                <div class="col-md-6">
                  <h5>Hoa lài trắng</h5>
                  <div class="mb-3">
                    <span class="original-price">70.00 VND</span>
                    <span class="text-danger">50.00 VND</span>
                  </div>
                  <div class="countdown">
                    <div class="d-flex justify-content-between">
                      <div>
                        <span class="days">132</span> Ngày
                      </div>
                      <div>
                        <span class="hours">12</span> Giờ
                      </div>
                      <div>
                        <span class="mins">45</span> Phút
                      </div>
                      <div>
                        <span class="secs">32</span> Giây
                      </div>
                    </div>
                  </div>
                  <br>
                  <a href="ChiTietSP.jsp" class="btn btn-success">Xem chi tiết</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="product-card">
              <div class="row">
                <div class="col-md-6">
                  <img src="img/product/product-2.jpg" alt="Hoa cúc hồng" class="product-image">
                </div>
                <div class="col-md-6">
                  <h5>Hoa cúc hồng</h5>
                  <div class="mb-3">
                    <span class="original-price">45.00 VND</span>
                    <span class="text-danger">35.00 VND</span>
                  </div>
                  <div class="countdown">
                    <div class="d-flex justify-content-between">
                      <div>
                        <span class="days">162</span> Ngày
                      </div>
                      <div>
                        <span class="hours">12</span> Giờ
                      </div>
                      <div>
                        <span class="mins">45</span> Phút
                      </div>
                      <div>
                        <span class="secs">32</span> Giây
                      </div>
                    </div>
                  </div>
                  <br>
                    <a href="ChiTietSP.jsp" class="btn btn-success">Xem chi tiết</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item ">
        <div class="row">
          <div class="col-md-6">
            <div class="product-card">
              <div class="row">
                <div class="col-md-6">
                  <img src="img/product/product-1.jpg" alt="Jasmine flowers white" class="product-image">
                </div>
                <div class="col-md-6">
                  <h5>Hoa lài trắng</h5>
                  <div class="mb-3">
                    <span class="original-price">70.00 VND</span>
                    <span class="text-danger">50.00 VND</span>
                  </div>
                  <div class="countdown">
                    <div class="d-flex justify-content-between">
                      <div>
                        <span class="days">132</span> Ngày
                      </div>
                      <div>
                        <span class="hours">12</span> Giờ
                      </div>
                      <div>
                        <span class="mins">45</span> Phút
                      </div>
                      <div>
                        <span class="secs">32</span> Giây
                      </div>
                    </div>
                  </div>
                  <br>
             <a href="ChiTietSP.jsp" class="btn btn-success">Xem chi tiết</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="product-card">
              <div class="row">
                <div class="col-md-6">
                  <img src="img/product/product-2.jpg" alt="Hoa cúc hồng" class="product-image">
                </div>
                <div class="col-md-6">
                  <h5>Hoa cúc hồng</h5>
                  <div class="mb-3">
                    <span class="original-price">45.00 VND</span>
                    <span class="text-danger">35.00 VND</span>
                  </div>
                  <div class="countdown">
                    <div class="d-flex justify-content-between">
                      <div>
                        <span class="days">162</span> Ngày
                      </div>
                      <div>
                        <span class="hours">12</span> Giờ
                      </div>
                      <div>
                        <span class="mins">45</span> Phút
                      </div>
                      <div>
                        <span class="secs">32</span> Giây
                      </div>
                    </div>
                  </div>
                  <br>
                  <a href="product-detail.html" class="btn btn-success">Xem chi tiết</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div>

<!-- end ưu đãi của tháng  -->
<!-- sản phẩm mới -->
<div class="container my-5">
  <h1 class="text-center mb-4">Sản phẩm mới</h1>
  <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
    <div class="col">
      <a href="ChiTietSP.jsp">
        <div class="card card-hover">
          <img src="img/product/product-12.jpg" class="card-img-top" alt="Bó hoa màu hồng">
          <div class="card-body">
            <h5 class="card-title">Bó hoa màu hồng</h5>
            <p class="card-text">
              <span class="text-decoration-line-through text-secondary">70.00 VND</span>
              <span class="text-danger fw-bold">60.00 VND</span>
            </p>
          </div>
        </div>
      </a>
    </div>
    <div class="col">
      <a href="#">
        <div class="card card-hover">
          <img src="img/product/product-12.jpg" class="card-img-top" alt="Bó hoa màu hồng">
          <div class="card-body">
            <h5 class="card-title">Bó hoa màu hồng</h5>
            <p class="card-text">
              <span class="text-decoration-line-through text-secondary">70.00 VND</span>
              <span class="text-danger fw-bold">60.00 VND</span>
            </p>
          </div>
        </div>
      </a>
    </div>
    <div class="col">
      <a href="#">
        <div class="card card-hover">
          <img src="img/product/product-12.jpg" class="card-img-top" alt="Bó hoa màu hồng">
          <div class="card-body">
            <h5 class="card-title">Bó hoa màu hồng</h5>
            <p class="card-text">
              <span class="text-decoration-line-through text-secondary">70.00 VND</span>
              <span class="text-danger fw-bold">60.00 VND</span>
            </p>
          </div>
        </div>
      </a>
    </div>
    <div class="col">
      <a href="#">
        <div class="card card-hover">
          <img src="img/product/product-12.jpg" class="card-img-top" alt="Bó hoa màu hồng">
          <div class="card-body">
            <h5 class="card-title">Bó hoa màu hồng</h5>
            <p class="card-text">
              <span class="text-decoration-line-through text-secondary">70.00 VND</span>
              <span class="text-danger fw-bold">60.00 VND</span>
            </p>
          </div>
        </div>
      </a>
    </div>
    <div class="col">
      <a href="#">
        <div class="card card-hover">
          <img src="img/product/product-12.jpg" class="card-img-top" alt="Bó hoa màu hồng">
          <div class="card-body">
            <h5 class="card-title">Bó hoa màu hồng</h5>
            <p class="card-text">
              <span class="text-decoration-line-through text-secondary">70.00 VND</span>
              <span class="text-danger fw-bold">60.00 VND</span>
            </p>
          </div>
        </div>
      </a>
    </div>
    <div class="col">
      <a href="#">
        <div class="card card-hover">
          <img src="img/product/product-12.jpg" class="card-img-top" alt="Bó hoa màu hồng">
          <div class="card-body">
            <h5 class="card-title">Bó hoa màu hồng</h5>
            <p class="card-text">
              <span class="text-decoration-line-through text-secondary">70.00 VND</span>
              <span class="text-danger fw-bold">60.00 VND</span>
            </p>
          </div>
        </div>
      </a>
    </div>
    <div class="col">
      <a href="#">
        <div class="card card-hover">
          <img src="img/product/product-12.jpg" class="card-img-top" alt="Bó hoa màu hồng">
          <div class="card-body">
            <h5 class="card-title">Bó hoa màu hồng</h5>
            <p class="card-text">
              <span class="text-decoration-line-through text-secondary">70.00 VND</span>
              <span class="text-danger fw-bold">60.00 VND</span>
            </p>
          </div>
        </div>
      </a>
    </div>
    <div class="col">
      <a href="#">
        <div class="card card-hover">
          <img src="img/product/product-12.jpg" class="card-img-top" alt="Bó hoa màu hồng">
          <div class="card-body">
            <h5 class="card-title">Bó hoa màu hồng</h5>
            <p class="card-text">
              <span class="text-decoration-line-through text-secondary">70.00 VND</span>
              <span class="text-danger fw-bold">60.00 VND</span>
            </p>
          </div>
        </div>
      </a>
    </div>
    <!-- Tiếp tục với các sản phẩm khác -->
  </div>
  <div class="text-center mt-4">
    <a href="#" class="btn btn-outline-success">View More Products</a>
  </div>
</div>
<!-- 
end sản phẩn mới -->
<!-- danh muc -->
<div class="container my-5">
  <div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
      <div class="card h-100">
        <img src="img/danhmuc/img1-top-floda1.jpg" class="card-img-top" alt="Yellow Gold">
        <div class="card-body">
          <h5 class="card-title">Top Friday</h5>
          <p class="card-text">Yellow Gold</p>
          <a href="DanhMuc.jsp" class="btn btn-success">Mua Ngay</a>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card h-100">
        <img src="img/danhmuc/img1-top-floda2.jpg" class="card-img-top" alt="Orchid Stick">
        <div class="card-body">
          <h5 class="card-title">Black Friday</h5>
          <p class="card-text">Orchid Stick</p>
          <a href="#" class="btn btn-success">Mua Ngay</a>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card h-100">
        <img src="img/danhmuc/img1-top-floda3.jpg" class="card-img-top" alt="Tulip Flower">
        <div class="card-body">
          <h5 class="card-title">10% Off</h5>
          <p class="card-text">Tulip Flower</p>
          <a href="#" class="btn btn-success">Mua Ngay</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end danh muc -->

<!-- 
íntagran product -->
<div class="container my-5">
  <div class="section-title text-center">
    <h2 class="title">Instagram</h2>
    <p class="sub-title">Displays an Instagram feed of your photos from your Instagram account on your website.</p>
</div>
 <br>
  <div class="row row-cols-1 row-cols-md-3 row-cols-lg-4 g-4">
    
    <div class="col">
      <div class="card h-100">
        <img src="img/ins/instagram-1.jpg" class="card-img-top" alt="Flower 1">
      </div>
    </div>
    <div class="col">
      <div class="card h-100">
        <img src="img/ins/instagram-2.jpg" class="card-img-top" alt="Flower 2">
      </div>
    </div>
    <div class="col">
      <div class="card h-100">
        <img src="img/ins/instagram-3.jpg" class="card-img-top" alt="Tulip">
      </div>
    </div>
    <div class="col">
      <div class="card h-100">
        <img src="img/ins/instagram-4.jpg" class="card-img-top" alt="Daisies">
      </div>
    </div>
   
  </div>
</div>
<!-- end íntagran -->

<!-- foooter -->
<jsp:include page="modul/footer.jsp"></jsp:include>
<!-- end foooter -->
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>