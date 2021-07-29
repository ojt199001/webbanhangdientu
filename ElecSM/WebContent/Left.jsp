

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3" style="margin-left: 0px;">
    <div class="card bg-light mb-3" style="margin-left: 20px;">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i>Danh mục sản phẩm</div>
        <ul class="list-group category_block">
            <c:forEach items="${listCC}" var="o">
                <li class="list-group-item text-white ${tag == o.cid ? "active":""}"><a href="category?cid=${o.cid}" style="text-decoration: none">${o.cname}</a></li>
            </c:forEach>

        </ul>
    </div>
<div class="card bg-light mb-3" style="margin-left: 20px;">
        <div class="card-header bg-danger text-white text-uppercase">Hàng mới về</div>
        <div class="card-body">
        <c:forEach items="${listN}" var="n">
        <center>
            <img class="img-fluid" src="<%=request.getContextPath()%>/image/${n.image}" width="150px", height="120px"/>
            </center>

        </c:forEach>
        </div>
    </div>
    
</div>