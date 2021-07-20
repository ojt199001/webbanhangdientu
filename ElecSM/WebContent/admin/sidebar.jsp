<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">

                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                        </div>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-user fa-fw"></i> Quản lý tài khoản<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="admin.jsp"> Admin</a>
                            </li>
                            <li>
                                <a href="user.jsp"> User</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Quản lý danh mục<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="category.jsp">Danh mục</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bars fa-fw"></i> Quản lý sản phẩm<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="product.jsp">Sản phẩm</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart fa-fw"></i> Quản lý doanh thu<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="month.jsp">Doanh thu theo tháng</a>
                            </li>
                            <li>
                                <a href="#">Doanh thu theo quý <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="preciousI.jsp">Quý I</a>
                                        </li>
                                        <li>
                                            <a href="preciousII.jsp">Quý II</a>
                                        </li>
                                        <li>
                                            <a href="preciousIII.jsp">Quý III</a>
                                        </li>
                                        <li>
                                            <a href="preciousIV.jsp">Quý IV</a>
                                        </li>
                                    </ul>
                            </li>
                            <li>
                                <a href="year.jsp">Doanh thu theo năm</a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>
        </div>