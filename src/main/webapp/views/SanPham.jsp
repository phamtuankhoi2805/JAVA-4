<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" type="text/css" href="index.css">
<style type="text/css">
a {
	color: black;
}
</style>
<body>
 <jsp:include page="modul/nav.jsp"></jsp:include>
	<div class="container">
		<div class="min-vh-100 bg-light text-dark">
			<div class="d-flex">
				<aside class="w-64 bg-card p-4">
					<div class="d-flex align-items-center mb-6">
						<img src="image/logo/logo.png" alt=" logo" class="me-2" />

					</div>
					<br> <br>
					<nav>
						<ul class="list-unstyled">
				    <li class="mb-4"><a href="admin.jsp" class="text-muted-dark hover-text-dark"><i class="fa-solid fa-house"></i> Trang chủ</a></li>
          <li class="mb-4"><a href="SanPham.jsp" class="text-muted-dark hover-text-dark"><i class="fa-solid fa-bars"></i> Sản phẩm</a></li>
          <li class="mb-4"><a href="GiamGia.jsp" class="text-muted-dark hover-text-dark"><i class="fa-solid fa-ticket"></i> Mã giảm giá</a></li>
						</ul>
					</nav>
				</aside>

				<div class="p-4">
					<div class="d-flex justify-content-between align-items-center mb-4">
						<h2 class="text-lg font-semibold">Danh sách sản phẩm</h2>

					</div>
					<div class="d-flex space-x-4 mb-4">

						<select class="form-select border border-border rounded px-4 py-2"
							style="width: 40%;">
							<option>Chọn trạng thái</option>
						</select> <input type="text"
							class="form-input border border-border rounded px-4 py-2 flex-1"
							placeholder="Tìm kiếm sản phẩm" style="margin: 0 1%; width: 40%;" />
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#staticBackdrop">
							Thêm Sản Phẩm</button>

						<!-- Modal -->
						<div class="modal fade" id="staticBackdrop"
							data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-5" id="staticBackdropLabel">Thêm
											Sản phẩm</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="p-6 bg-light">

											<form class="row g-4">
												<div class="col-12 col-md-6">
													<label for="product-id" class="form-label text-muted">ID</label>
													<input type="text" id="product-id" value="KFC0001"
														class="form-control bg-light border-secondary" readonly>
												</div>
												<div class="col-12 col-md-6">
													<label for="product-name" class="form-label text-muted">Tên
														sản phẩm</label> <input type="text" id="product-name"
														placeholder="Nhập tên sản phẩm"
														class="form-control bg-light border-secondary">
												</div>
												<div class="col-12 col-md-6">
													<label for="quantity" class="form-label text-muted">Số
														lượng</label> <input type="number" id="quantity" value="10"
														class="form-control bg-light border-secondary">
												</div>
												<div class="col-12 col-md-6">
													<label for="price" class="form-label text-muted">Đơn
														giá</label> <input type="text" id="price" value="100.000đ"
														class="form-control bg-light border-secondary">
												</div>
												<div class="col-12">
													<label for="image" class="form-label text-muted">Ảnh</label>
													<input type="file" id="image"
														class="form-control bg-light border-secondary">
												</div>

											</form>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Hủy</button>
										<button type="button" class="btn btn-primary">Lưu</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row row-cols-4 g-4">
						<div class="col">
							<div class="border border-border rounded p-2">
								<img src="image/product/product-10.jpg" alt="Fried chicken"
									class="w-100 h-48 object-cover rounded mb-2" />
								<h5 class="text-center font-semibold">Hoa Cúc Hồng Phấn</h5>
								<p class="text-center text-muted-foreground">138.000₫</p>
							</div>
						</div>
						<div class="col">
							<div class="border border-border rounded p-2">
								<img src="image/product/product-10.jpg" alt="Fried chicken"
									class="w-100 h-48 object-cover rounded mb-2" />
								<h5 class="text-center font-semibold">Hoa Cúc Hồng Phấn</h5>
								<p class="text-center text-muted-foreground">138.000₫</p>
							</div>
						</div>
						<div class="col">
							<div class="border border-border rounded p-2">
								<img src="image/product/product-10.jpg" alt="Fried chicken"
									class="w-100 h-48 object-cover rounded mb-2" />
								<h5 class="text-center font-semibold">Hoa Cúc Hồng Phấn</h5>
								<p class="text-center text-muted-foreground">138.000₫</p>
							</div>
						</div>
						<div class="col">
							<div class="border border-border rounded p-2">
								<img src="image/product/product-10.jpg" alt="Fried chicken"
									class="w-100 h-48 object-cover rounded mb-2" />
								<h5 class="text-center font-semibold">Hoa Cúc Hồng Phấn</h5>
								<p class="text-center text-muted-foreground">138.000₫</p>
							</div>
						</div>
						<div class="col">
							<div class="border border-border rounded p-2">
								<img src="image/product/product-10.jpg" alt="Fried chicken"
									class="w-100 h-48 object-cover rounded mb-2" />
								<h5 class="text-center font-semibold">Hoa Cúc Hồng Phấn</h5>
								<p class="text-center text-muted-foreground">138.000₫</p>
							</div>
						</div>
						<div class="col">
							<div class="border border-border rounded p-2">
								<img src="image/product/product-10.jpg" alt="Fried chicken"
									class="w-100 h-48 object-cover rounded mb-2" />
								<h5 class="text-center font-semibold">Hoa Cúc Hồng Phấn</h5>
								<p class="text-center text-muted-foreground">138.000₫</p>
							</div>
						</div>
						<div class="col">
							<div class="border border-border rounded p-2">
								<img src="image/product/product-10.jpg" alt="Fried chicken"
									class="w-100 h-48 object-cover rounded mb-2" />
								<h5 class="text-center font-semibold">Hoa Cúc Hồng Phấn</h5>
								<p class="text-center text-muted-foreground">138.000₫</p>
							</div>
						</div>
						<div class="col">
							<div class="border border-border rounded p-2">
								<img src="image/product/product-10.jpg" alt="Fried chicken"
									class="w-100 h-48 object-cover rounded mb-2" />
								<h5 class="text-center font-semibold">Hoa Cúc Hồng Phấn</h5>
								<p class="text-center text-muted-foreground">138.000₫</p>
							</div>
						</div>
					</div>
				</div>


			</div>

		</div>

	</div>
 <jsp:include page="modul/footer.jsp"></jsp:include>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>