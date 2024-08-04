<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%  String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ request.getContextPath(); %>
  <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">Floda</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">Trang chủ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="GioiThieu.jsp">Giới Thiệu</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Cửa hàng
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="DanhMuc.jsp">Hoa Tươi</a></li>
              <li><a class="dropdown-item" href="DanhMuc.jsp">Hoa Khô</a></li>
           <li><a class="dropdown-item" href="DanhMuc.jsp">Top Friday</a></li>
                      <li><a class="dropdown-item" href="DanhMuc.jsp">Black Friday</a></li>
                                   <li><a class="dropdown-item" href="DanhMuc.jsp">10% Off</a></li>
            </ul>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="LienHe.jsp">Liên hệ</a>
          </li>
        </ul>
      </div>
      <div class="d-flex">
        <a href="#" class="btn btn-link text-dark me-2" data-bs-toggle="offcanvas" data-bs-target="#searchOffcanvas" aria-controls="searchOffcanvas">
          <i class="fa-solid fa-magnifying-glass"></i>
        </a>
        <a href="GioHang.jsp" class="btn btn-link text-dark position-relative me-2" data-bs-toggle="offcanvas" data-bs-target="#cartOffcanvas" aria-controls="cartOffcanvas">
          <i class="fa-solid fa-cart-shopping"></i>
          <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
            3
            <span class="visually-hidden">tin nhắn chưa đọc</span>
          </span>
        </a>
        
<a href="yeuThich.jsp" class="btn btn-link text-dark me-2 position-relative">
  <i class="fa-regular fa-heart"></i>
  <span class="badge bg-danger position-absolute top-0 start-100 translate-middle">5</span>
</a>
   <c:if test="${sessionScope.user == null}">
  <a href="Login.jsp" class="btn btn-link text-dark">
    <i class="fa-solid fa-user"></i>
  </a>
</c:if>
        <c:if test="${ sessionScope.user !=null}">
<div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fa-solid fa-right-from-bracket"></i>
  </a>

  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="<%= url %>/User?hanhDong=thoat">Thoát</a></li>
  </ul>
</div>
                </c:if>
      </div>
    </div>
  </nav>

  <div class="offcanvas offcanvas-end" data-bs-backdrop="static" tabindex="-1" id="cartOffcanvas" aria-labelledby="cartOffcanvasLabel">
    <div class="offcanvas-header">
      <h5 class="offcanvas-title" id="cartOffcanvasLabel">Giỏ Hàng</h5>
      <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
<div class="minicart-content-box">
  <div class="minicart-item-wrapper">
    <ul class="list-unstyled">
      <li class="minicart-item d-flex align-items-center">
        <div class="minicart-thumb">
          <a href="product-details.html" style="color: black;">
            <img src="img/product/product-1.jpg" alt="product" class="img-fluid">
          </a>
        </div>
        <div class="minicart-content flex-grow-1 ms-3">
          <h3 class="product-name">
            <a href="product-details.html" style="color: black;">Bó hoa hồng cho người yêu hoa</a>
          </h3>
          <p class="mb-0">
            <span class="cart-quantity">1 <strong>×</strong></span>
            <span class="cart-price">$100.00</span>
          </p>
        </div>
        <button class="minicart-remove btn btn-danger btn-sm" style="background-color: black; color: white;"><i class="fa-solid fa-trash"></i></button>
      </li>
      <li class="minicart-item d-flex align-items-center">
        <div class="minicart-thumb">
          <a href="product-details.html" style="color: black;">
            <img src="img/product/product-11.jpg" alt="product" class="img-fluid">
          </a>
        </div>
        <div class="minicart-content flex-grow-1 ms-3">
          <h3 class="product-name">
            <a href="product-details.html" style="color: black;">Hoa nhài trắng cho người yêu hoa</a>
          </h3>
          <p class="mb-0">
            <span class="cart-quantity">1 <strong>×</strong></span>
            <span class="cart-price">$80.00</span>
          </p>
        </div>
        <button class="minicart-remove btn btn-danger btn-sm" style="background-color: black; color: white;"><i class="fa-solid fa-trash"></i></button>
      </li>
    </ul>
  </div>

  <div class="minicart-pricing-box">
    <ul class="list-unstyled">
      <li class="d-flex justify-content-between">
        <span style="color: black;">Tổng tiền</span>
        <span><strong style="color: black;">$180.00</strong></span>
      </li>
      <li class="d-flex justify-content-between">
        <span style="color: black;">Thuế môi trường (-2.00)</span>
        <span><strong style="color: black;">$10.00</strong></span>
      </li>
      <li class="d-flex justify-content-between">
        <span style="color: black;">Thuế VAT (20%)</span>
        <span><strong style="color: black;">$38.00</strong></span>
      </li>
      <li class="d-flex justify-content-between total">
        <span style="color: black;">Tổng cộng</span>
        <span><strong style="color: black;">$228.00</strong></span>
      </li>
    </ul>
  </div>

  <div class="minicart-button d-flex justify-content-between">
    <a href="GioHang.jsp" class="btn btn-primary" style="background-color: black; color: white;"><i class="fa fa-shopping-cart"></i> Xem giỏ hàng</a>
    <a href="ThanhToan.jsp" class="btn btn-success" style="background-color: black; color: white;"><i class="fa fa-share"></i> Thanh toán</a>
  </div>
</div>
    </div>
  </div>
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