<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" type="text/css" href="index.css">
</head>

<body>
  <!-- bat đầu nav -->
  <jsp:include page="modul/nav.jsp"></jsp:include>
  <!-- bat đầu product -->
  <div class="container my-5">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
        <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
        <li class="breadcrumb-item active" aria-current="page">Thông tin sản phẩm</li>
      </ol>
    </nav>
  
    <div class="row">
      <div class="col-lg-6">
        <img src="img/product/product-details-img1.jpg" alt="Bông hoa cúc hồng" class="img-fluid">
      </div>
      <div class="col-lg-6">
        <h1>Bông hoa cúc hồng</h1>
        <p class="lead">1 Đánh giá</p>
        <h2 class="mb-4">70.00 VND <small class="text-muted"><del>90.00 VND</del></small></h2>
  
       
 
  
        <p class="text-success">200 SẢN PHẨM CÒN HÀNG</p>
  
        <div class="d-flex align-items-center mb-4">
            <div class="input-group me-4">
              <label for="quantity" class="form-label me-2">Số lượng:</label>
              <button class="btn btn-outline-secondary" type="button">-</button>
              <input type="text" class="form-control text-center" id="quantity" value="1">
              <button class="btn btn-outline-secondary" type="button">+</button>
            </div>
          
            <div class="input-group">
              <label for="size" class="form-label me-4">Kích thước:</label>
              <select class="form-select" id="size">
                <option value="s">S</option>
                <option value="m">M</option>
                <option value="l">L</option>
              </select>
            </div>
          </div>
          
  
        <div class="mb-4">
          <label for="color" class="form-label">Màu sắc:</label>
          <div class="d-flex">
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="color" id="color1" value="option1" checked>
              <label class="form-check-label" for="color1">
                <div class="color-swatch bg-primary"></div>
              </label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="color" id="color2" value="option2">
              <label class="form-check-label" for="color2">
                <div class="color-swatch bg-secondary"></div>
              </label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="color" id="color3" value="option3">
              <label class="form-check-label" for="color3">
                <div class="color-swatch bg-success"></div>
              </label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="color" id="color4" value="option4">
              <label class="form-check-label" for="color4">
                <div class="color-swatch bg-warning"></div>
              </label>
            </div>
          </div>
        </div>
  
        <div class="d-grid gap-2 d-md-flex justify-content-md-start">
          <button class="btn btn-success me-md-2" type="button">Thêm vào giỏ hàng</button>
          
        </div>
  
        <div class="mt-4">
          <p>Bản thân nỗi đau là quan trọng, giới thượng lưu đang theo dõi sẽ tuân theo, nhưng diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Như tôi đã thấy, tôi sẽ đạt đến mức tối thiểu, ai sẽ tham gia vào hoạt động của cơ thể để được hưởng lợi từ nó theo một cách nào đó.</p>
        </div>
      </div>
    </div>
  </div>
  <!-- end product -->

  <div class="container my-5">
    <nav>
      <div class="nav nav-tabs" id="nav-tab" role="tablist">
        <button class="nav-link active" id="nav-description-tab" data-bs-toggle="tab" data-bs-target="#nav-description" type="button" role="tab" aria-controls="nav-description" aria-selected="true">MÔ TẢ</button>
        <button class="nav-link" id="nav-information-tab" data-bs-toggle="tab" data-bs-target="#nav-information" type="button" role="tab" aria-controls="nav-information" aria-selected="false">THÔNG TIN</button>
        <button class="nav-link" id="nav-reviews-tab" data-bs-toggle="tab" data-bs-target="#nav-reviews" type="button" role="tab" aria-controls="nav-reviews" aria-selected="false">ĐÁNH GIÁ (1)</button>
      </div>
    </nav>
    <div class="tab-content" id="nav-tabContent">
      <div class="tab-pane fade show active" id="nav-description" role="tabpanel" aria-labelledby="nav-description-tab">
        <p>Khách hàng rất quan trọng, khách hàng sẽ được khách hàng theo đuổi. Bởi Fringilla không phải là một tác giả buồn bã. Nỗi sợ hãi của feugiat sem, kẻ muốn lên men của trái đất xấu xí. Thật không may và thời gian trước đó. Một khối vết loét lạnh. Fusce aliquam, purus eget scelerisque vulputate, sem libero hendrerit sem, sit commodore ague if not neque. Ngày mai không còn sợ hãi cũng không nịnh nọt, và từ nay trở đi sẽ buồn phiền. Ngay cả những phương tiện hạng nặng của đất nước cũng cần có Euismod để tài trợ cho lưới điện. Trẻ em đang sống với bệnh tật, tuổi già và trẻ em, đang phải chịu cảnh đói nghèo. Thực ra đó là vì tôi, tôi lo lắng về tình hình.</p>
      </div>
      <div class="tab-pane fade" id="nav-information" role="tabpanel" aria-labelledby="nav-information-tab">
        <!-- Nội dung thông tin sẽ đặt ở đây -->
      </div>
      <div class="tab-pane fade" id="nav-reviews" role="tabpanel" aria-labelledby="nav-reviews-tab">
        <div class="card my-3">
          <div class="card-body">
            <div class="d-flex justify-content-between align-items-center">
              <h5 class="card-title mb-0">Sản phẩm tuyệt vời!</h5>
              <div class="text-warning">
                <i class="bi bi-star-fill"></i>
                <i class="bi bi-star-fill"></i>
                <i class="bi bi-star-fill"></i>
                <i class="bi bi-star-fill"></i>
                <i class="bi bi-star-half"></i>
              </div>
            </div>
            <p class="card-text">Tôi đã sử dụng sản phẩm này được vài tuần và thực sự rất ấn tượng. Chất lượng thật tuyệt vời và nó đã vượt xa mọi mong đợi của tôi. Tôi rất khuyên bạn nên thử sản phẩm này.</p>
            <p class="card-text"><small class="text-muted">Nguyễn Văn A - Ngày 16 tháng 7 năm 2024</small></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- sản phẩm tương tự  -->
  <div class="container my-5">
    <h1 class="text-center mb-4">Sản phẩm tương tự</h1>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
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

  </div>
  <!-- end san phẩm  -->
<!-- foooter -->
  <jsp:include page="modul/footer.jsp"></jsp:include>
<!-- end foooter -->
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>