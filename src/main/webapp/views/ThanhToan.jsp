<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>
</head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" type="text/css" href="index.css">
<body>
   <div class="container">
   <jsp:include page="modul/nav.jsp"></jsp:include>
   <br>
   <form>
  <div class="row">
    <div class="col-md-6 mb-3">
      <label for="firstName" class="form-label">Tên</label>
      <input type="text" class="form-control" id="firstName" placeholder="Nhập tên" required>
    </div>
    <div class="col-md-6 mb-3">
      <label for="lastName" class="form-label">Họ</label>
      <input type="text" class="form-control" id="lastName" placeholder="Nhập họ" required>
    </div>
  </div>

  <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" placeholder="name@example.com" required>
  </div>

  <div class="mb-3">
    <label for="address" class="form-label">Địa chỉ</label>
    <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
  </div>

  <div class="row">
    <div class="col-md-5 mb-3">
      <label for="country" class="form-label">Quốc gia</label>
      <select class="form-select" id="country" required>
        <option value="">Chọn...</option>
        <option>Việt Nam</option>
        <option>United States</option>
        <option>Canada</option>
        <option>Other</option>
      </select>
    </div>
    <div class="col-md-4 mb-3">
      <label for="state" class="form-label">Tỉnh/Thành phố</label>
      <input type="text" class="form-control" id="state" placeholder="" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="zip" class="form-label">Mã ZIP</label>
      <input type="text" class="form-control" id="zip" placeholder="" required>
    </div>
  </div>

  <hr class="my-4">

  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="sameAddress">
    <label class="form-check-label" for="sameAddress">Địa chỉ giao hàng giống với địa chỉ thanh toán</label>
  </div>

  <div class="my-3">
    <label for="cardName" class="form-label">Tên chủ thẻ</label>
    <input type="text" class="form-control" id="cardName" placeholder="Nhập tên chủ thẻ" required>
    <small class="text-muted">Tên đầy đủ như in trên thẻ</small>
  </div>

  <div class="my-3">
    <label for="cardNumber" class="form-label">Số thẻ</label>
    <input type="text" class="form-control" id="cardNumber" placeholder="xxxx-xxxx-xxxx-xxxx" required>
  </div>

  <div class="row">
    <div class="col-md-3 mb-3">
      <label for="expMonth" class="form-label">Tháng hết hạn</label>
      <input type="text" class="form-control" id="expMonth" placeholder="MM" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="expYear" class="form-label">Năm hết hạn</label>
      <input type="text" class="form-control" id="expYear" placeholder="YYYY" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="cvv" class="form-label">CVV</label>
      <input type="text" class="form-control" id="cvv" placeholder="xxx" required>
    </div>
  </div>

  <hr class="my-4">

  <button class="w-100 btn btn-primary btn-lg" type="submit">Thanh toán</button>
</form>
<br>
<jsp:include page="modul/footer.jsp"></jsp:include>
   </div>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>