<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style type="text/css">
        .row img{
       		margin-left: 48px;
       		/* padding-right: 48px; */
       		
        }
        .row h3{
        	margin-top: 20px;
        	}
		.row a{
		margin-top: 10px;
		margin-bottom: 20px;
		text-decoration: none;
		}
		.anh img{
		width: 170px;
		height: 170px;
		}
		.card {
		padding-right: 50px;
		padding-bottom: 20px;
		}
		
		.card h3{
		padding-bottom: 20px;
		}
		.card a{
		text-decoration: none;
		padding-top: 20px;
		padding-left: 48px;
		text-align: left;
		}
        </style>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
        <marquee><b style="font-size:15px;color:red"><i>ElecSM siêu thị điện máy uy tín hàng đầu Việt Nam</i></b>
		</marquee>
        <section class="jumbotron text-center">
   
        <h1 class="jumbotron-heading"><img alt="" src="image/banner3.jpg" height="400px" width="1267px"></h1>
        <p style="font-size:24px;color:red"><b><i>--------------------->Uy tín tạo nên thương hiệu<----------------------</i></b></p>
        <br>
        <br>
        <div class = "row">
        <div class= "col-md-4">
        	<div class = "card">
        	<h3><b>ElecSMBasics</b></h3>
        	<img src="image/basic.jpg" height="250px" width="367px">
        	<a href="#">
        	Mua sắm ngay
        	</a>
        	</div>
        </div>
        <div class= "col-md-4">
             <div class = "card">
             <h3><b>Tìm TV lý tưởng cho bạn</b></h3>
        	<img src="image/Access.jpg" height="250px" width="367px">
        	<a href="#">
        	Mua sắm ngay
        	</a>
        	 </div>
        </div>
        <div class= "col-md-4">
            <div class = "card">
            <h3><b>Máy tính & Phụ kiện</b></h3>
        	<img src="image/TV.jpg" height="250px" width="367px">
        	<a href="#">
        	Xem thêm
        	</a>
        	</div>
        </div>
        </div>
        <br>
        <div class = "row">
        <div class= "col-md-4">
        	<div class = "card">
        	<h3><b>Oculus</b></h3>
        	<img src="image/Oculus.jpg" height="250px" width="367px">
        	<a href="#">
        	Mua sắm ngay
        	</a>
        	</div>
        </div>
        <div class= "col-md-4">
             <div class = "card">
             <h3><b>Dụng cụ</b></h3>
        	<img src="image/thehinh.jpg" height="250px" width="367px">
        	        	<a href="#">
        	Xem thêm
        	</a>
        	 </div>
        </div>
        <div class= "col-md-4">
            <div class = "card">
            <h3><b>Góc Gaming</b></h3>
        	<img src="image/Gaming.jpg" height="250px" width="367px">
        	        	<a href="#">
        	Xem thêm
        	</a>
        	</div>
        </div>
        </div>
        <br>
        <div class = "anh">
        <div class = "card">
        		  <br>

                  <h3><b>Sản phẩm bán chạy</b></h3>
        <div class = "row">
        
        <div class= "col-md-2">

  
        	<img src="image/2.jpg">

        	</div>
			<div class= "col-md-2">

            
        	<img src="image/4.jpg">

        	</div>
			<div class= "col-md-2">

            
        	<img src="image/6.jpg">

        	</div>

			<div class= "col-md-2">

            
        	<img src="image/8.jpg">

        	</div>
			<div class= "col-md-2">

            
        	<img src="image/10.jpg">

        	</div>
 			<div class= "col-md-2">

            
        	<img src="image/12.jpg">

                  <h3>Sản phẩm mới</h3>
            <c:forEach items="${listNew}" var="o">
            <div class = "row">
        	<div class= "col-md-2">
			<img src="/image/${o.image}">

        	</div>
				  </div>
			</c:forEach>
		    <a href="#">
        	Xem thêm
        	</a>
        </div>
        <br>
                <div class = "card">
        		  <br>
                  <h3><b>Đang khuyến mãi</b></h3>
        <div class = "row">
        
        	<div class= "col-md-2">
        	<img src="image/1.jpg">
        	</div>
			<div class= "col-md-2"> 
        	<img src="image/3.jpg">
        	</div>
        	
			<div class= "col-md-2">
        	<img src="image/5.jpg">
        	</div>

			<div class= "col-md-2">
        	<img src="image/7.jpg">
        	</div>
        	
			<div class= "col-md-2">   
        	<img src="image/9.jpg">
        	</div>
        	
 			<div class= "col-md-2">
        	<img src="image/11.jpg">
        	</div>

		</div>
		<a href="#">
        	Xem thêm
        </a>
        </div>
        </div>
        <br>
        <br>
        <a href="#">
        <button class="btn btn-dark">Lên đầu trang</button>
        </a>
		</section>

		<hr>
        
        <jsp:include page="Footer.jsp"></jsp:include>
       
    </body>
</html>

