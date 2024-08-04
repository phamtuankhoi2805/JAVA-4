<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Về Chúng Tôi</title>
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
	<!-- bat đầu nav -->
	<jsp:include page="modul/nav.jsp"></jsp:include>

	<section class="about-section">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="about-img">
						<img src="image/banner/banner-1.jpg" alt="Về chúng tôi"
							class="img-fluid">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about-content">
						<h2>Về Floda</h2>
						<p>Floda là cửa hàng bán hoa uy tín và chất lượng hàng đầu tại
							Việt Nam. Chúng tôi tự hào mang đến cho khách hàng những sản phẩm
							hoa tươi, đa dạng và rất chất lượng.</p>
						<p>Với hơn 10 năm kinh nghiệm trong lĩnh vực bán hoa, Floda
							cam kết mang đến cho khách hàng trải nghiệm mua sắm hoa tuyệt
							vời, từ chất lượng sản phẩm đến dịch vụ khách hàng tận tình.</p>
						<a href="#" class="btn btn-primary">Tìm hiểu thêm</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<br>
	<section class="feature-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<div class="feature-icon">
							<i class="fas fa-truck"></i>
						</div>
						<h3>Giao hàng nhanh chóng</h3>
						<p>Chúng tôi cam kết giao hoa trong vòng 2 giờ kể từ khi đặt
							hàng.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<div class="feature-icon">
							<i class="fas fa-money-bill-alt"></i>
						</div>
						<h3>Giá cả hợp lý</h3>
						<p>Với mức giá cạnh tranh, chúng tôi mang đến sự lựa chọn
							tuyệt vời cho khách hàng.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<div class="feature-icon">
							<i class="fas fa-heart"></i>
						</div>
						<h3>Chất lượng đảm bảo</h3>
						<p>Chúng tôi cam kết cung cấp những bông hoa tươi và đẹp nhất
							cho khách hàng.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<br>
	<section class="team-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title text-center" >
						<h2>Đội ngũ của chúng tôi</h2>
						<p>Gặp gỡ những người tạo nên sự thành công của Floda</p>
					</div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-4">
					<div class="team-member">
						<div class="team-img">
							<img src="https://getweeklyupdate.com/blog/wp-content/uploads/2018/02/27.jpg" alt="Team Member"
								class="img-fluid">
						</div>
						<div class="team-info">
							<h3>Phạm Tuán Khôi</h3>
							<p>Founder & CEO</p>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="team-member">
						<div class="team-img">
							<img src="https://getweeklyupdate.com/blog/wp-content/uploads/2018/02/27.jpg" alt="Team Member"
								class="img-fluid">
						</div>
						<div class="team-info">
							<h3>Nguyễn Văn Tân</h3>
							<p>Head of Operations</p>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="team-member">
						<div class="team-img">
							<img src="https://getweeklyupdate.com/blog/wp-content/uploads/2018/02/27.jpg" alt="Team Member"
								class="img-fluid">
						</div>
						<div class="team-info">
							<h3>Ngô Tuấn Anh</h3>
							<p>Lead Designer</p>
						</div>
					</div>
				</div>
		
			</div>
					<div class="row">
				<div class="col-4">
					<div class="team-member">
						<div class="team-img">
							<img src="https://getweeklyupdate.com/blog/wp-content/uploads/2018/02/27.jpg" alt="Team Member"
								class="img-fluid">
						</div>
						<div class="team-info">
							<h3>Trương Lâm An</h3>
							<p>Founder & CEO</p>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="team-member">
						<div class="team-img">
							<img src="https://getweeklyupdate.com/blog/wp-content/uploads/2018/02/27.jpg" alt="Team Member"
								class="img-fluid">
						</div>
						<div class="team-info">
							<h3>Nguyễn Ngọc Đức</h3>
							<p>Head of Operations</p>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="team-member">
						<div class="team-img">
							<img src="https://getweeklyupdate.com/blog/wp-content/uploads/2018/02/27.jpg" alt="Team Member"
								class="img-fluid">
						</div>
						<div class="team-info">
							<h3>Tuấn Đạt</h3>
							<p>Lead Designer</p>
						</div>
					</div>
				</div>
		
			</div>
		</div>
	</section>
	<jsp:include page="modul/footer.jsp"></jsp:include>
	<!-- end foooter -->
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