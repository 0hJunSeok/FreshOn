<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet"
	href="https://freshon.market/asset/css/common.css?v=20220727">
<link rel="stylesheet"
	href="https://freshon.market/asset/css/extend.css?v=20220727">
<link rel="stylesheet"
	href="https://freshon.market/asset/css/default_layout.20230223.css">
<link rel="stylesheet"
	href="https://freshon.market/asset/css/default_member.css?v=20220727">
<link rel="stylesheet"
	href="https://freshon.market/asset/css/default_shop.css?v=20220804">
<link rel="stylesheet"
	href="https://freshon.market/asset/css/default_board.css?v=20220727">
<link rel="stylesheet"
	href="https://freshon.market/asset/css/renewal_index.css?v=20220804_03">
<link rel="stylesheet"
	href="https://freshon.market/asset/css/font.css?v=20220727">
<link rel="stylesheet"
	href="https://freshon.market/asset/css/jquery.fancybox.css?v=2.1.5">
<link rel="stylesheet"
	href="https://freshon.market/asset/css/jquery.toast.css?v=20220727">
<link rel="stylesheet" href="https://freshon.market/asset/css/slick.css">
<script>
	var pd_url = "https://freshon.market";
	var pd_bbs_url = "https://freshon.market/board";
	var pd_is_member = "1";
	var pd_is_admin = "";
	var pd_is_mobile = "";
	var pd_bo_table = "";
	var pd_sca = "";
	var pd_editor = "";
	var pd_cookie_domain = "";
	var pd_routesale = "";
	var isMobile = {
		Android : function() {
			return navigator.userAgent.match(/Android/i);
		},
		BlackBerry : function() {
			return navigator.userAgent.match(/BlackBerry/i);
		},
		iOS : function() {
			return navigator.userAgent.match(/iPhone|iPad|iPod/i);
		},
		Opera : function() {
			return navigator.userAgent.match(/Opera Mini/i);
		},
		Windows : function() {
			return navigator.userAgent.match(/IEMobile/i);
		},
		any : function() {
			return (isMobile.Android() || isMobile.BlackBerry()
					|| isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
		}
	};
</script>
<script src="https://freshon.market/asset/js/jquery-1.8.3.min.js"></script>
<script src="https://freshon.market/asset/js/jquery.rwdImageMaps.min.js"></script>
<script src="https://freshon.market/asset/js/placeholder.js"></script>
<script src="https://freshon.market/asset/js/common.js?v=20220727"></script>
<script src="https://freshon.market/asset/js/wrest.js"></script>
<script src="https://freshon.market/asset/js/add.js?v=20221122"></script>
<script src="https://freshon.market/asset/js/jquery.toast.js?v=20220727"></script>
<script src="https://freshon.market/asset/js/slick.min.js"></script>
<script src="https://freshon.market/asset/js/bridge.js"></script>
<script src="https://freshon.market/asset/js/bridgeCore.js"></script>
<script src="https://freshon.market/asset/js/bridgeCallback.js"></script>
<script src="https://freshon.market/asset/js/bridgeReady.js"></script>
<script src="https://freshon.market/asset/js/iscroll.js"></script>
<script src="https://freshon.market/asset/js/extend.js?v=20220725"></script>
<script
	src="https://freshon.market/asset/js/shopping-cart.js?v=20220725"></script>
<script src="https://freshon.market/asset/js/jquery.fancybox.js?v=2.1.5"></script>
<script src="https://freshon.market/asset/js/kakao.min.js"></script>
<script>
	$(document)
			.ready(
					function() {
						if (window.AndroidBridge
								|| typeof IosBridge != 'undefined') {

							$(
									"input[type=text], input[type=tel], input[type=email], input[type=number]")
									.focus(
											function() {
												$('#header').css('position',
														'absolute');
												$('.mobile_foot_bar').css(
														'position', 'absolute');
												$('.head_search_wrap').css(
														'position', 'absolute');
												$('.hopen_bg').css('position',
														'absolute');

											});
							$(
									"input[type=text], input[type=tel], input[type=email], input[type=number]")
									.blur(
											function() {
												$('#header').css('position',
														'fixed');
												$('.mobile_foot_bar').css(
														'position', 'fixed');
												$('.head_search_wrap').css(
														'position', 'fixed');
												$('.hopen_bg').css('position',
														'fixed');
											});

						}

						$('input').attr("autocomplete", "off");

					});
</script>

</head>
<header>
	<div id="wrap">
		<div class="icon_quick_top">
			<button type="button">위로</button>
		</div>
		<div id="header">

			<div class="header_inner">
				<div class="cart_layer">
					<ul>
						<li class="arrow"></li>
						<li><a href="#" class="cf"> <span class="amount">1</span>
								<img src="" alt="상품샘플" class="photo" /> <span class="txt">치킨브레스트
									120g</span>
						</a></li>
					</ul>
				</div>
				<!-- //장바구니 담기 레이어 -->
				<h1>
					<a href="${pageContext.request.contextPath }/product/list">Freshon Market</a>
				</h1>
				<div class="search_text">프레시온마켓은 사장님의 성공을 배달합니다</div>
				<div class="tnb_wrap">
					<ul class="tnb cf">

						<li class="no01"><a href="#" class="link">앱 다운로드</a>
							<ul class="dep2">
								<li><a href="#">앱스토어</a></li>
								<li><a
									href="#">구글
										플레이스토어</a></li>
							</ul></li>

						<li class="no03"><a href="#"
							target="_blank" class="no_a">브랜드소개</a></li>
						<li class="no02"><a href="#" class="link bor_left_bar">고객센터</a>
							<ul class="dep2">
								<li><a
									href="#">공지사항</a>
								</li>
							</ul></li>
					</ul>
				</div>
				<div class="head">

					<div class="head_quick_wrap">
						<div class="head_quick_mypage">
							<c:if test="${user.id == null }">
							<a class="btn_login" href="${pageContext.request.contextPath }/member/login">로그인</a>
                            <a href="${pageContext.request.contextPath }/member/join" class="btn_m_join lm10">회원가입</a>
                            </c:if>
							<c:if test="${user.id != null && user.id != 'admin' }">
							<!-- 로그인 후 관리자와 마이페이지 -->
							<div class="my_page_btn">
								<div class="tobtn">
									마이페이지 <span class="arrow"></span>
								</div>

								<div class="mypage_pop">
									<div class="mypage_pop_inner">

										<div class="pop_top">
											<a href="#"><span
												class="name">${user.name} </span>님 반갑습니다.</a>
										</div>
										<div class="pop_list">
											<ul>
												<li><a
													href="${pageContext.request.contextPath }/product/orders">주문조회</a>
												</li>
												<li><a
													href="#">
														내 정보 </a></li>
											</ul>
										</div>
										<div class="pop_logout">
											<a href="${pageContext.request.contextPath }/member/logout">로그아웃</a>
										</div>
									</div>
								</div>
							</div>


							<!-- 로그인후 장바구니와 로그아웃 -->
							<button class="cart_open cursor lm10 pg_head_cart"><a href="${pageContext.request.contextPath }/product/cart">
							<span class="icon_badge"> ${cookie.count.value } </span>장바구니</a>  <!--  -->
							</button>
							</c:if>
							<c:if test="${user.id != null && user.id == 'admin' }">
								<div class="my_page_btn">
								<div class="tobtn">
									관리자 <span class="arrow"></span>
								</div>

								<div class="mypage_pop">
									<div class="mypage_pop_inner">

										<div class="pop_top">
											<a href="#"><span
												class="name">${user.name} </span>님 반갑습니다.</a>
										</div>
										<div class="pop_list">
											<ul>
												<li><a
													href="${pageContext.request.contextPath }/admin/goods">상품등록</a>
												</li>
												<li><a
													href="${pageContext.request.contextPath }/admin/list">상품목록</a>
												</li>
											</ul>
										</div>
										<div class="pop_logout">
											<a href="${pageContext.request.contextPath }/member/logout">로그아웃</a>
										</div>
									</div>
								</div>
							</div>

							</c:if>


						</div>
						<!-- //head_quick_mypage -->


					</div>
					<!-- //head_quick_wrap -->


				</div>
				<!-- //head -->


			</div>
			<!-- //header_inner -->
		</div>
		<!-- //header -->
	</div>

	<style type="text/css">
	.input[type=text] {
	-webkit-ime-mode: active;
	-moz-ime-mode: active;
	-ms-ime-mode: active;
	ime-mode: active;
}
</style>

	<!-- head_search_wrap -->
	<div class="head_search_wrap">
		<form name="frmsearch1"
			action="#"
			onsubmit="return search_submit(this);">
			<fieldset>
				<legend>검색</legend>
				<label for="sch_str" class="sound_only">검색어<strong
					class="sound_only"> 필수</strong></label> <input type="text" name="q"
					value="" id="sch_str" placeholder="상품명을 입력하세요." class="box">
				<input type="submit" value="검색" id="sch_submit">
			</fieldset>
		</form>
		<script>
			function search_submit(f) {
				if (f.q.value.length < 1) {
					f.q.select();
					f.q.focus();
					return false;
				}
				return true;
			}
		</script>
	</div>
</header>
<nav>
	<div class="sc_y">
		<div class="category ">
			<h3 class="title">카테고리</h3>	<!-- ≡ -->
			<ul id="gnb" class="category_link">
				<li class="full_wrap"><a class="full_btn_wrap"
					href="javascript:"> <span class="full_btn"></span>
				</a>
					<div class="full_menu">
						<ul class="full_menu_ul">
							<li class="full_menu_li">
								<ul class="full_menu_dep2 ">
									<li>
										<div>
											<a
												href="#">
												<p>
													양곡류 <span class="icon_dep2"></span>			
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													채소류 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													과일류 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
								</ul>
							</li>
							<li class="full_menu_li">
								<ul class="full_menu_dep2 ">
									<li>
										<div>
											<a
												href="#">
												<p>
													생선류 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													갑각류 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													패류 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
								</ul>
							</li>
							<li class="full_menu_li">
								<ul class="full_menu_dep2 ">
									<li>
										<div>
											<a
												href="#">
												<p>
													우육 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													돈육 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													오리 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													닭고기 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
								</ul>
							</li>
							<li class="full_menu_li">
								<ul class="full_menu_dep2">
									<li>
										<div>
											<a
												href="#">
												<p>
													햄 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													만두 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													튀김 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													부침 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													조미료 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>
													장류 <span class="icon_dep2"></span>
												</p>
											</a>
										</div>
									</li>
								</ul>
							</li>
							<li class="full_menu_li">
								<ul class="full_menu_dep2 ">
									<li>
										<div>
											<a
												href="#">
												<p>일회용품</p>
											</a>
										</div>
									</li>
									<li>
										<div>
											<a
												href="#">
												<p>기타 소모품</p>
											</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div></li>

				<!-- nav -->
				<li class="cacategory_list on"><a href="${pageContext.request.contextPath }/product/list?category=농산물"> 농산 <span  
						class="icon_dep2"></span>
				</a>
					<ul class="sub_category_s ">
						<li>
							<div>
								<a
									href="#">
									<p>
										양곡류 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										채소류 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										과일류 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
					</ul>
				</li>

				<li class="cacategory_list on"><a href="${pageContext.request.contextPath }/product/list?category=수산물"> 수산 <span
						class="icon_dep2"></span>
				</a>
					<ul class="sub_category_s ">
						<li>
							<div>
								<a
									href="#">
									<p>
										생선류 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										갑각류 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										패류 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
					</ul>
				</li>

				<li class="cacategory_list on"><a href="${pageContext.request.contextPath }/product/list?category=축산물"> 축산 <span
						class="icon_dep2"></span>
				</a>
					<ul class="sub_category_s ">
						<li>
							<div>
								<a
									href="#">
									<p>
										우육 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										돈육 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										오리 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										닭고기 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
					</ul>
				</li>

				<li class="cacategory_list on"><a href="${pageContext.request.contextPath }/product/list?category=가공식품"> 가공식품 <span
						class="icon_dep2"></span>
				</a>
					<ul class="sub_category_s ">
						<li>
							<div>
								<a
									href="#">
									<p>
										햄 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										만두 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										튀김 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										부침 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										조미료 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>
										장류 <span class="icon_dep2"></span>
									</p>
								</a>
							</div>
						</li>
					</ul>
				</li>

				<li class="cacategory_list on"><a href="${pageContext.request.contextPath }/product/list?category=소모품"> 소모품 <span
						class="icon_dep2"></span>
				</a>
					<ul class="sub_category_s ">
						<li>
							<div>
								<a
									href="#">
									<p>일회용품</p>
								</a>
							</div>
						</li>
						<li>
							<div>
								<a
									href="#">
									<p>기타 소모품</p>
								</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>
<main style="padding-top: 200px;"></main>

