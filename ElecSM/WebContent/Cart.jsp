<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        
    </head>

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
        
            <div class="shopping-cart">
                <div class="px-4 px-lg-0">

                    <div class="pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                    <!-- Shopping cart table -->
                                    <div class="table-responsive">
                                    <ol class="breadcrumb">
                                    <h3>Giỏ hàng</h3><br>
                                    </ol>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Đơn Giá</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Số Lượng</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Xóa</div>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${list}" var="o">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle"><strong>${o.price}</strong></td>
                                                    <td class="align-middle">
                                                        <a href="sub?id=${o.id}"><button class="btnSub">-</button></a>&nbsp;&nbsp;
                                                        <strong>${o.amount}</strong>&nbsp;&nbsp;
                                                        <a href="cart?id=${o.id}"><button class="btnAdd">+</button></a>
                                                    </td>
                                                    <td class="align-middle"><a href="remove?id=${o.id}" class="text-dark">
                                                            <button type="button" class="btn btn-danger">Delete</button>
                                                        </a>
                                                    </td>
                                                </tr> 
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
                                <div class="p-4">
                                    <div class="input-group mb-4 border rounded-pill p-2">
                                        <input type="text" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                                        <div class="input-group-append border-0">
                                            <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Sử dụng</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong>${total}</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>${vat}</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                            <h5 class="font-weight-bold">${sum} đ</h5>
                                        </li>
                                    </ul><button class="btn btn-dark rounded-pill py-2 btn-block" data-toggle="modal" data-target="#myModal">Thanh toán</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            
        </div>

<div class="modal fade" id="myModal">

                  <div class="modal fade" id="myModal">

         <div class="modal-dialog modal-lg">
         
            <div class="modal-content">
               <!-- Modal Header -->
               <div class="modal-header bg-dark" style="color: white;">
                  <h4 class="modal-title">Thanh toán</h4>
                  <button type="button" class="close" data-dismiss="modal" style="color: white;">&times;</button>
               </div>
               <!-- Modal body -->
               <div class="modal-body">
               <section class="jumbotron" style="padding-bottom: 50px; padding-top: 20px;">
 
				<div class= "row">
				<div class="col-md-6">
				    Tên
				    <input type="text" class="form-control" id="staticEmail2" placeholder="Họ và tên">
				</div>

				<div class="col-md-6">
				    Số điện thoại
				    <input type="text" class="form-control" id="staticEmail2" placeholder="Vui lòng nhập số điện thoại">
				</div>	
				</div>
				<br>
				<div class= "row">
				<div class="col-md-6">
                 Địa chỉ nhận hàng
                 <input name="user"  type="text"  class="form-control" placeholder="Vui lòng nhập địa chỉ" required=""  >
                 </div>
                 <div class="col-md-6">
                 Tỉnh/ Thành phố
                 <select class="custom-select d-block w-100" id="state" required>
              	 <option value="">Đã chọn...</option>
              	 <option>Hà Nội</option>
              	 <option>Huế</option>
              	 <option>Đà Nẵng</option>
              	 <option>TP Hồ Chí Minh</option><br>
              	 </select>
				</div>
				</div>
				<br>
								<div class= "row">
				<div class="col-md-6">
              	 Phương thức thanh toán
                 <select class="custom-select d-block w-100" id="" required>
              	 <option value="">Đã chọn...</option>
              	 <option>Banking</option>
              	 <option>Visa</option>
              	 <option>Thẻ ghi nợ</option>
              	 <option>Paypal</option>
            	 </select>
            	 </div>
            	
				<div class="col-md-6">
            	 <br>
                 <input name="user"  type="number"  class="form-control" placeholder="Số thẻ" required=""  ><br>
                 </div>
                 </div>
                 				<div class= "row">
				<div class="col-md-6">
                 <input name="user"  type="text"  class="form-control" placeholder="Họ và tên chủ thẻ" required=""  ><br>
                 </div>
                 
				<div class="col-md-6">
                 <input name="user"  type="date"  class="form-control" placeholder="Ngày hiệu lực (MMYY)" required=""  ><br>
                 </div>
                 </div>
                  <h5>Thành tiền: ${sum} đ</h5>
                  </section>
               </div>
               
               <!-- Modal footer -->
               <div class="modal-footer bg-dark">
 
               <div class="col-md-6">
               	<a href="order" class="btn btn-danger rounded-pill py-2 btn-block">Xác nhận</a>
               	</div>
               <div class="col-md-6">
               	<a href="" class="btn btn-danger rounded-pill py-2 btn-block" data-dismiss="modal" >Hủy</a>
               	</div>

				
               </div>
            </div>
         </div>
      </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>

</html>
</html>
