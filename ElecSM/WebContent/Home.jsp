
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
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style type="text/css">
        
        .row a {
        text-decoration: none;
        }
        </style>
        
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>

                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Cửa hàng</a></li>
                                
                            </ol>
                        </nav>
                    </div>
                </div>

 
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>

                    <div class="col-sm-9">
                        <div id="content" class="row">
                        
                        <c:forEach items="${listP}" var="o">
                            <div class="product col-12 col-md-6 col-lg-3">
                                <div class="card" style="margin-right: 20px;">
                                    <img class="card-img-top" src="<%=request.getContextPath()%>/image/${o.image}" alt="Card image cap" width="100px", height="250px">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product" style="text-decoration: none">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        
                                        <b><p>${o.price} k đ</p></b>
                                        <div class="row">
                                            <div class="col">
                                                <a href="cart?id=${o.id}"><button class="btn btn-success btn-block" data-toggle="modal" data-target="#myModal">Thêm vào giỏ hàng</button></a>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <br>
                            </div>
                        </c:forEach>
            			</div>
            		</div>           		 
            	</div>
            	
			<br>
			<div class="clearfix">
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item ">
							<c:forEach begin="1" end="${endP}" var="i">
								<a href="home?index=${i}"> ${i} </a>
							</c:forEach>
					</li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
	        <a href="#" style="margin-left: 1375px;">
	       
	        <button class="btn btn-dark">Lên đầu trang</button>
	        </a>


			<hr>
        <jsp:include page="Footer.jsp"></jsp:include>
          <div class="modal" id="myModal">
         <div class="modal-dialog">
            <div class="modal-content">
               <!-- Modal Header -->
               <div class="modal-header">
                  <h4 class="modal-title">Thông báo</h4>
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
               </div>
               <!-- Modal body -->
               <div class="modal-body">
                  Thêm vào giỏ hàng thành công
               </div>
               <!-- Modal footer -->
               <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>

