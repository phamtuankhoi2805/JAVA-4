<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh Mục</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
	<jsp:include page="modul/nav.jsp"></jsp:include>
	<div class="bg-light py-8">
		<div class="container mx-auto text-center">
			<h1 class="fs-3 fw-semibold text-body">Giỏ Hàng</h1>
			<div
				class="d-flex justify-content-center align-items-center gap-2 mt-2 text-muted">
				<i class="fa-solid fa-house"></i> <span>/</span> <span
					class="text-danger">Giỏ Hàng</span>
			</div>
		</div>
	</div>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-3">
				<h5>Danh mục</h5>
				<ul class="list-group mb-3">
					<li class="list-group-item">Mùa thu</li>
					<li class="list-group-item">Sinh nhật</li>
					<li class="list-group-item">Bó hoa</li>
					<li class="list-group-item">Hộp</li>
					<li class="list-group-item">Quà tặng</li>
				</ul>

				<h5>Giá</h5>
				<div class="mb-3">
					<input type="range" class="form-range" min="0" max="100" step="1" />
					<div class="d-flex justify-content-between">
						<span>$0</span> <span>$100</span>
					</div>
				</div>

				<h5>Thương hiệu</h5>
				<ul class="list-group mb-3">
					<li class="list-group-item"><input type="checkbox" /> Studio
						Design</li>
					<li class="list-group-item"><input type="checkbox" />
						Bohemian</li>
					<li class="list-group-item"><input type="checkbox" /> Hiện
						đại</li>
					<li class="list-group-item"><input type="checkbox" /> Cổ điển</li>
				</ul>

				<h5>Màu sắc</h5>
				<ul class="list-group mb-3">
					<li class="list-group-item"><input type="checkbox" /> Đỏ</li>
					<li class="list-group-item"><input type="checkbox" /> Trắng</li>
					<li class="list-group-item"><input type="checkbox" /> Hồng</li>
				</ul>

				<h5>Kích cỡ</h5>
				<ul class="list-group mb-3">
					<li class="list-group-item"><input type="checkbox" /> S</li>
					<li class="list-group-item"><input type="checkbox" /> M</li>
					<li class="list-group-item"><input type="checkbox" /> L</li>
				</ul>


			</div>

			<div class="col-md-9">
				<div class="d-flex justify-content-between align-items-center mb-3">
					<span>Hiển thị 1–12 trong 20 kết quả</span> <select
						class="form-select w-auto">
						<option selected>Sắp xếp theo: Mới nhất</option>
						<option value="1">Giá: Thấp đến Cao</option>
						<option value="2">Giá: Cao đến Thấp</option>
					</select>
				</div>

				<div class="row">
					<div class="col-md-4 mb-4">
						<div class="card">
							<img src="img/product/product-11.jpg" class="card-img-top"
								alt="Hoa Cherry" />
							<div class="card-body">
								<h5 class="card-title">Hoa Cherry</h5>
								<p class="card-text">
									<span class="text-muted text-decoration-line-through">₫1,150,000</span>
									₫690,000
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-4">
						<div class="card">
							<img src="img/product/product-11.jpg" class="card-img-top"
								alt="Hoa Cherry" />
							<div class="card-body">
								<h5 class="card-title">Hoa Cherry</h5>
								<p class="card-text">
									<span class="text-muted text-decoration-line-through">₫1,150,000</span>
									₫690,000
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-4">
						<div class="card">
							<img src="img/product/product-11.jpg" class="card-img-top"
								alt="Hoa Cherry" />
							<div class="card-body">
								<h5 class="card-title">Hoa Cherry</h5>
								<p class="card-text">
									<span class="text-muted text-decoration-line-through">₫1,150,000</span>
									₫690,000
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-4">
						<div class="card">
							<img src="img/product/product-11.jpg" class="card-img-top"
								alt="Hoa Cherry" />
							<div class="card-body">
								<h5 class="card-title">Hoa Cherry</h5>
								<p class="card-text">
									<span class="text-muted text-decoration-line-through">₫1,150,000</span>
									₫690,000
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-4">
						<div class="card">
							<img src="img/product/product-11.jpg" class="card-img-top"
								alt="Hoa Cherry" />
							<div class="card-body">
								<h5 class="card-title">Hoa Cherry</h5>
								<p class="card-text">
									<span class="text-muted text-decoration-line-through">₫1,150,000</span>
									₫690,000
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-4">
						<div class="card">
							<img src="img/product/product-11.jpg" class="card-img-top"
								alt="Hoa Cherry" />
							<div class="card-body">
								<h5 class="card-title">Hoa Cherry</h5>
								<p class="card-text">
									<span class="text-muted text-decoration-line-through">₫1,150,000</span>
									₫690,000
								</p>
							</div>
						</div>
					</div>
				</div>

				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link" href="#"
							tabindex="-1">Trước</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Tiếp</a>
						</li>
					</ul>
				</nav>


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