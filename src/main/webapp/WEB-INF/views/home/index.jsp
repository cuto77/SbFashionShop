<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<div class="slideshow">
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-9 ">

				<div class="homeslider">
					<div id="owl-slider" class="owl-carousel owl-carousel-banner">
						<c:forEach var="ab" items="${anhbiaAll}">
							<div class="item">
								<a href="#"><img
									src="/assets/user/100004/images/slide/${ab.imgUrl }" alt="1"></a>
							</div>
						</c:forEach>
					</div>
				</div>
				<!--Template--
--End-->
			</div>
		</div>
	</div>
</div>


<div class="adv">

	
	<!--Begin-->
	<!--End-->
</div>


<div class="main">
	<div class="container">
		<div class="row">
			<div class="col-md-3">

				<script src="/assets/user/100004/js/moduleServices.js"></script>
				<script src="/assets/user/100004/js/moduleController.js"></script>
				<!--Begin-->
				<div class="box-adv" ng-controller="moduleController"
					ng-init="initAdvMenuController('AdvMenus')">
					<div class="sidebar_banner" ng-repeat="item in AdvMenus">
						<div class="img_banner">
							<a href="/home/sanpham"> <img ng-src="{{item.Image}}"
								data-original="{{item.Image}}" alt="{{item.Name}}"
								class="img-responsive lazy">
								<div class="figcaption"></div>
							</a>
						</div>
					</div>
				</div>
				<!--End-->
				<script type="text/javascript">
					window.AdvMenus = [
							{
								"Id" : 5695,
								"ShopId" : 2005,
								"AdvType" : 1,
								"AdvTypeName" : "Menu 2 bên",
								"Name" : "1",
								"Image" : "/assets/user/100004/images/mnu3.jpg",
								"ImageThumbnai" : "/assets/user/100004/images/mnu1.jpg",
								"Link" : "#",
								"IsVideo" : false,
								"Index" : 1,
								"Inactive" : false,
								"Timestamp" : "AAAAAAAoh7c="
							},
							{
								"Id" : 5696,
								"ShopId" : 2005,
								"AdvType" : 1,
								"AdvTypeName" : "Menu 2 bên",
								"Name" : "2",
								"Image" : "/assets/user/100004/images/mnu2.webp",
								"ImageThumbnai" : "/assets/user/100004/images/banner_sidebar_img_2.png",
								"Link" : "#",
								"IsVideo" : false,
								"Index" : 2,
								"Inactive" : false,
								"Timestamp" : "AAAAAAAoh7Y="
							} ];
				</script>
				<!-- Blog sidebar -->
				<div class="sidebar_blogs">
					
				</div>
				<!-- End blog sidebar -->
			</div>
			<div class="col-md-9">
				<div class="product-content">
					<div class="product_home_image">
						<a href="/home/sanpham/"> <img
							src="/assets/user/100004/images/sliderv.webp"
							alt="thời trang nam nữ">
							<div class="figcaption"></div>
						</a>
					</div>
					<div class="clearfix">
						<div class="section-heading">
							<h2 title="thời trang nam nữ">
								<span>THỜI TRANG NAM NỮ</span>
							</h2>
						</div>
					</div>
					<div class="product_list grid clearfix">
						<c:forEach var="p" items="${sanphamAll}">
							<div
								class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
								<div class="product-block product-resize m-b-20">
									<div class="product-image image-resize">
										<a href="/sanpham/chitiet/${p.maSanPham}"> <img
											class="first-img"
											src="/assets/user/100004/images/product/${p.imgUrl}">
										</a>
										<div data-id="${p.maSanPham }"
											class="product-actions hidden-xs">
											<button class="btn-add-to-cart btn-cart">
												<i class="fa fa-shopping-bag" aria-hidden="true"></i>
											</button>
											<button class="btn_quickview btn-star">
												<i class="glyphicon glyphicon-heart"></i>
											</button>
											<button class="btn_quickview btn-send-open-dialog"
												data-toggle="modal" data-target="#myModal">
												<i class="glyphicon glyphicon-envelope"></i>
											</button>
										</div>
									</div>
									<div class="product-info text-center m-t-xxs-20">
										<h3 class="pro-name">
											<a href="/sanpham/chitiet/${p.maSanPham}">${p.tenSanPham}</a>
										</h3>
										<div class="pro-prices">
											<span class="pro-price"><f:formatNumber
													value="${p.giaGoc}" pattern="#,###" />${p.donViTinh}</span>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

						<div class="icon-loading" style="display: none;">
							<div class="uil-ring-css">
								<div></div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>
<jsp:include page="dialog.jsp" />
