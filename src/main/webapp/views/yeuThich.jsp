<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yêu thích</title>
</head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" type="text/css" href="index.css">
<body>
 <jsp:include page="modul/nav.jsp"></jsp:include>
 <br>
 	<div class="bg-light py-8">
		<div class="container mx-auto text-center">
			<h1 class="fs-3 fw-semibold text-body">Yêu Thích</h1>
			<div
				class="d-flex justify-content-center align-items-center gap-2 mt-2 text-muted">
				<i class="fa-solid fa-house"></i> <span>/</span> <span
					class="text-danger">Yêu Thích</span>
			</div>
		</div>
	</div>
	
	<div class="container-fluid">
  <div class="row">
    <div class="col-12">
      <table class="table table-dark table-striped table-hover">
        <thead>
          <tr>
            <th>THUMBNAIL</th>
            <th>PRODUCT</th>
            <th>PRICE</th>
            <th>STOCK STATUS</th>
            <th>ADD TO CART</th>
            <th>REMOVE</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><img src="image/product/product-13.jpg" class="img-fluid thumbnail" alt="Rose Bouquet White" width="20%"></td>
            <td>Rose Bouquet White</td>
            <td>$295.00</td>
            <td><span class="badge bg-success">In Stock</span></td>
            <td><button class="btn btn-danger">Add To Cart</button></td>
            <td><button class="btn btn-danger"><i class="fa-regular fa-trash-can"></i></button></td>
          </tr>
          <tr>
        <td><img src="image/product/product-13.jpg" class="img-fluid thumbnail" alt="Rose Bouquet White" width="20%"></td>            <td>Orchid Flower Red Stick</td>
            <td>$275.00</td>
            <td><span class="badge bg-success">In Stock</span></td>
            <td><button class="btn btn-danger">Add To Cart</button></td>
            <td><button class="btn btn-danger"><i class="fa-regular fa-trash-can"></i></button></td>
          </tr>
        
        </tbody>
      </table>
    </div>
  </div>
</div>


  <jsp:include page="modul/footer.jsp"></jsp:include>
<!-- end foooter -->
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>