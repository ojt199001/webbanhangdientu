<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
        <style>
        @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
				/*reset css*/
				div,label{margin:0;padding:0;}
				h1{font-size:1.5em;margin:10px;}
				/****** Style Star Rating Widget *****/
				#rating{border:none;float:left;}
				#rating>input{display:none;}/*ẩn input radio - vì chúng ta đã có label là GUI*/
				#rating>label:before{margin:5px;font-size:1.25em;font-family:FontAwesome;display:inline-block;content:"\f005";}/*1 ngôi sao*/
				#rating>.half:before{content:"\f089";position:absolute;}/*0.5 ngôi sao*/
				#rating>label{color:#ddd;float:right;}/*float:right để lật ngược các ngôi sao lại đúng theo thứ tự trong thực tế*/
				/*thêm màu cho sao đã chọn và các ngôi sao phía trước*/
				#rating>input:checked~label,
				#rating:not(:checked)>label:hover, 
				#rating:not(:checked)>label:hover~label{color:#FFD700;}
				/* Hover vào các sao phía trước ngôi sao đã chọn*/
				#rating>input:checked+label:hover,
				#rating>input:checked~label:hover,
				#rating>label:hover~input:checked~label,
				#rating>input:checked~label:hover~label{color:#FFED85;}
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
            .thu-nghiem-zoom .col-md-2{display:block;transition: all .3s ease;}
			.thu-nghiem-zoom .col-md-2:hover{transform: scale(1.08);}
			.thu-nghiem-zoom p{display:block;overflow: hidden;}
        </style>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
                        <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Chi tiết</a></li>
                                
                            </ol>
                        </nav>
                    </div>
                </div>
        <br>
            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>
                <div class="col-sm-9">
                    <div class="container">
                        <div class="card">
                            <div class="row">
                                <aside class="col-sm-5 border-right">
                                    <article class="gallery-wrap"> 
                                        <div class="img-big-wrap">
                                            <div> <a href="#"><img src="<%=request.getContextPath()%>/image/${detail.image}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${detail.name}</h3>

                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 

                                                <span class="num"><fmt:formatNumber type = "number"  maxFractionDigits = "3" value = "${detail.price}" /></span><span class="currency"> đ(VND)</span>

                                            </span> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Thông tin chi tiết</dt>
                                            <dd><p>
                                                    ${detail.description}
                                                </p></dd>
                                        </dl>

                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <dl class="param param-inline">
                  
                                                </dl>  <!-- item-property .// -->
                                            </div> <!-- col.// -->

                                        </div> <!-- row.// -->
                                        <hr>
                                        
                                        <div class = "row">
                                        <div class="col-md-5">
                                        <a href="Detail.jsp" class="btn btn-danger text-uppercase"><b>Mua ngay</b></a>
                                        </div>
                                        <div class="col-md-6">
                                        <a href="cart?id=${detail.id}" class="btn btn-warning text-uppercase"> <i class="fa fa-shopping-cart"></i><b style="front-size:20px">Thêm vào giỏ hàng</b></a>
                                        </div>
                                        </div>
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->
                    </div>
                </div>
            </div>
            <br>
                   <div class="col text-center">
					<div class="section_title new_arrivals_title">
						<u><h4>NHẬN XÉT</h4></u>
					</div>
					<hr>
			</div>
            <div class="row">
            <div class="col-md-6">
                  <h5>Nhận xét(0)</h5>
                  <br>
                  <p style="color: gray;">Hãy để lại ý kiến...</p>
            </div>
            <div class="col-md-6">
            <h5>Thông tin</h5>
            <input type="text" class="form-control" id="staticEmail2" placeholder="Họ và tên*">
            <br>
            <input type="text" class="form-control" id="staticEmail2" placeholder="Email*">
            <br>
            <h5>Đánh giá:</h5>
            <div id="rating">
			    <input type="radio" id="star5" name="rating" value="5" />
			    <label class = "full" for="star5" title="Awesome - 5 stars"></label>
			 
			    <input type="radio" id="star4" name="rating" value="4" />
			    <label class = "full" for="star4" title="Pretty good - 4 stars"></label>
			 
			    <input type="radio" id="star3" name="rating" value="3" />
			    <label class = "full" for="star3" title="Meh - 3 stars"></label>
			 
			    <input type="radio" id="star2" name="rating" value="2" />
			    <label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
			 
			    <input type="radio" id="star1" name="rating" value="1" />
			    <label class = "full" for="star1" title="Sucks big time - 1 star"></label>
			</div>
            <textarea class="form-control" id="" placeholder="Nhận xét của bạn"></textarea><br>
            <a href="order" class="btn btn-danger rounded-pill py-2 btn-block"><b>Gửi</b></a>
            </div>
            </div>
            <br>
            <hr>
            <div class="col text-center">
					<div class="section_title new_arrivals_title">
						<h4>CÓ THỂ BẠN SẼ THÍCH</h4>
					</div>
			</div>
			<br>
			<div class="thu-nghiem-zoom">
				<div class="row">
					<c:forEach items="${list_sp}" var="list_sp">
						<div class="col-md-2">
						<a href="detail?pid=${list_sp.id}" title="Xem Ngay" style="text-decoration: none">
							<img class="card-img-top"
								src="<%=request.getContextPath()%>/image/${list_sp.image}"
								alt="Card image cap" width="90px" height="150px">
								</a>
						</div>
					</c:forEach>
				</div>
				</div>
				<br>
				<br>
				<br>

             <!-- Sản phẩm liên quan -->
        </div>
       <hr>
       <script type="text/javascript">
	       function calcRate(r) {
	    	   const f = ~~r,//Tương tự Math.floor(r)
	    	   id = 'star' + f + (r % f ? 'half' : '')
	    	   id && (document.getElementById(id).checked = !0)
	    	  }</script>
       <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
