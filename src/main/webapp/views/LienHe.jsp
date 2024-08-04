<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liện Hệ</title>
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
	<br>
	<div class="bg-light py-8">
		<div class="container mx-auto text-center">
			<h1 class="fs-3 fw-semibold text-body">Liên Hệ</h1>
			<div
				class="d-flex justify-content-center align-items-center gap-2 mt-2 text-muted">
				<i class="fa-solid fa-house"></i> <span>/</span> <span
					class="text-danger">Liên Hệ</span>
			</div>
		</div>
	</div>

	<div class="container py-5">
		<div class="row">
			<div class="col-lg-6">
				<h2>Cho chúng tôi biết về góp ý của bạn</h2>
				<form>
					<div class="mb-3">
						<label for="name" class="form-label">Tên *</label> <input
							type="text" class="form-control" id="name"
							aria-describedby="nameHelp" required>
					</div>
					<div class="mb-3">
						<label for="phone" class="form-label">Số điện thoại *</label> <input
							type="tel" class="form-control" id="phone"
							aria-describedby="phoneHelp" required>
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Email *</label> <input
							type="email" class="form-control" id="email"
							aria-describedby="emailHelp" required>
					</div>
					<div class="mb-3">
						<label for="subject" class="form-label">Chủ đề *</label> <input
							type="text" class="form-control" id="subject"
							aria-describedby="subjectHelp" required>
					</div>
					<div class="mb-3">
						<label for="message" class="form-label">Tin nhắn *</label>
						<textarea class="form-control" id="message" rows="3" required></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Gửi tin nhắn</button>
				</form>
			</div>
			<div class="col-lg-6">
				<h2>Liên hệ với chúng tôi</h2>
				<p>Chúng tôi luôn sẵn sàng hỗ trợ và tư vấn cho khách hàng 24/7.</p>
				<p>Với đội ngũ nhân viên chuyên nghiệp và nhiệt tình, chúng tôi
					tin rằng sẽ mang lại trải nghiệm mua sắm tuyệt vời cho quý khách.</p>
				<p>
					<i class="bi bi-house"></i> Địa chỉ: 123 Đường Lê Lợi, Quận 1,
					Thành phố Hồ Chí Minh
				</p>
				<p>
					<i class="bi bi-envelope"></i> cskh@tenmienwebsite.vn
				</p>
				<p>
					<i class="bi bi-phone"></i> 1900 1234
				</p>
				<p>Giờ làm việc</p>
				<p>Thứ Hai - Chủ Nhật: 8:00 - 22:00</p>
			</div>
		</div>
	</div>

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