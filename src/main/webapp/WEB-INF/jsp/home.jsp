<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>home</title>
<!-- STYLE CSS -->
<link href="https://fonts.googleapis.com/css?family=Raleway:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Yellowtail"
	rel="stylesheet">
<link href="/css/front/styles.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING:Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div id="page" class="hfeed site">
		<!-- start page wrapper -->

		<header id="masthead" class="site-header navbar-fixed-top">
			<div class="header-navigation">
				<div class="container-fluid">

					<div class="row">

						<div class="col col-md-2">
							<div class="site-branding navbar-brand">
								<!-- 左上logo圖片////////////////////////////////////////////////////////////////////////// -->
								<a href="#"><img src="/images/logo-2.png"
									alt="Food Recipe Web Template" title="Taplak"></a>
							</div>
							<!-- end logo -->
						</div>
						<!-- end col-md-3 -->

						<div class="col-12 col-md-8">
							<nav class="site-navigation navbar navbar-expand-lg navbar-light">

								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#navbarSupportedContent"
									aria-controls="navbarSupportedContent" aria-expanded="false"
									aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>

								<div class="collapse navbar-collapse"
									id="navbarSupportedContent">
									<!-- header 標題列///////////////////////////////////////////////////////////////////// -->
									<ul class="navbar-nav">
										<li class="nav-item active"><a class="nav-link"
											href="index.html">Home <span class="sr-only">(current)</span></a>
										</li>
										<li class="nav-item"><a class="nav-link" href="about.html">關於我們</a>
										</li>
										<li class="nav-item"><a class="nav-link" href="typography.html">最新消息</a>
										</li>
										<li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" 
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">餐點資訊</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                                                <a class="dropdown-item" href="recipes.html">Recipe List</a>
                                                <a class="dropdown-item" href="recipe-single.html">Recipe Single</a>
                                                <a class="dropdown-item" href="recipe-index.html">Recipe Index</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="submit-recipe.html">Submit Recipe</a>
                                            </div>
                                        </li>
										<li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" 
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">店家資訊</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                                                <a class="dropdown-item" href="recipes.html">Recipe List</a>
                                                <a class="dropdown-item" href="recipe-single.html">Recipe Single</a>
                                                <a class="dropdown-item" href="recipe-index.html">Recipe Index</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="submit-recipe.html">Submit Recipe</a>
                                            </div>
                                        </li>
										<li class="nav-item dropdown"><a
											class="nav-link dropdown-toggle" href="#"
											id="navbarDropdown4" role="button" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">服務資源</a>
											<div class="dropdown-menu" aria-labelledby="navbarDropdown4">
												<a class="dropdown-item" href="contact.html">聯絡我們</a> 
												<a class="dropdown-item" href="faq.html">FAQ</a> 
											</div></li>
										
										<li class="nav-item dropdown"><a
											class="nav-link dropdown-toggle" href="#"
											id="navbarDropdown4" role="button" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">會員中心</a>
											<div class="dropdown-menu" aria-labelledby="navbarDropdown4">
												<a class="dropdown-item" href="login.html">登入</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">註冊</a>
											</div>
										</li>
										<li class="nav-item"><a class="nav-link" href="typography.html">購物車</a></li>
									</ul>
								</div>
								<!-- end navbar-collapse -->
							</nav>
							<!-- end site-navigation -->
						</div>
						<!-- end col-md-8 -->

						<!-- 刪除社群icon、搜尋icon-->	
                            
					</div>
					<!-- end row -->

				</div>
				<!-- end container-fluid -->
			</div>
			<!-- end header-navigation -->
		</header>
		<!-- end #masthead -->

		<!-- 刪除搜尋列 -->
		
		<!-- 幻燈片 輪播圖 SLIDER SECTION /////////////////////////////////////////////////////////////////////-->
		<div class="owl-carousel owl-theme">
			<div class="item">
				<img src="/images/content/slide-13.png" alt="slide 1">
				<div class="caption">
					<h2 class="animated bounce">Our 10 Most Popular Recipes</h2>
					<!-- <button class="btn btn-primary">EXPLORE NOW</button> -->
				</div>
			</div>
			<!-- end item -->
			<div class="item">
				<img src="/images/content/slide-14.png" alt="slide 2">
				<div class="caption">
					<h2 class="animated bounce">Best Review Recipe 2019</h2>
					<!-- <button class="btn btn-primary">READ MORE</button> -->
				</div>
			</div>
			<!-- end item -->
			<div class="item">
				<img src="/images/content/slide-15.png" alt="slide 3">
				<div class="caption">
					<h2 class="animated bounce">Most Popular Homemade Recipes</h2>
					<!-- <button class="btn btn-primary">EXPLORE NOW</button> -->
				</div>
			</div>
			<!-- end item -->
		</div>
		<!-- end owl-carousel -->


		<div class="choice-section">
			<div class="container">
				<div class="section-title">
					<!-- 刪除12張圖片組 -->

					<!-- 刪除中間大圖1 -->

					<!-- 產品圖 /////////////////////////////////////////////////////////////////////-->
					<div class="recipes-section">
						<div class="container">
							<div class="section-title">
								<h3>餐點展示</h3>
							</div>
							<!-- end section-title -->
							<div class="row">
								<div class="col-6 col-md-3">
									<div class="recipe-thumb">
										<img src="/images/content/thumb-1.png" alt="Recipe Image">
										<a href="#" class="bookmarker"><i class="fas fa-bookmark"></i></a>
										<a href="#" class="view-recipe">VIEW RECIPE</a>
									</div>
									<div class="recipe-desc">
										<h2 class="recipe-title">
											<a href="#">Salad Nicoise</a>
										</h2>
										<p>
											<em>By Lina Sukowati</em>
										</p>
										<span><i class="fas fa-clock"></i>&nbsp;9 Minutes</span>
									</div>
									<!-- end recipe-desc -->
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3">
									<div class="recipe-thumb">
										<img src="/images/content/thumb-2.png" alt="Recipe Image"><a
											href="#" class="bookmarker"><i class="fas fa-bookmark"></i></a><a
											href="#" class="view-recipe">VIEW RECIPE</a>
									</div>
									<div class="recipe-desc">
										<h2 class="recipe-title">
											<a href="#">Grilled Beef Steak</a>
										</h2>
										<p>
											<em>By Eka Nurwasilah</em>
										</p>
										<span><i class="fas fa-clock"></i>&nbsp;26 Minutes</span>
									</div>
									<!-- end recipe-desc -->
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3">
									<div class="recipe-thumb">
										<img src="/images/content/thumb-3.png" alt="Recipe Image"><a
											href="#" class="bookmarker"><i class="fas fa-bookmark"></i></a><a
											href="#" class="view-recipe">VIEW RECIPE</a>
									</div>
									<div class="recipe-desc">
										<h2 class="recipe-title">
											<a href="#">Tiger Prawns Roasted</a>
										</h2>
										<p>
											<em>By Nurjanah</em>
										</p>
										<span><i class="fas fa-clock"></i>&nbsp;27 Minutes</span>
									</div>
									<!-- end recipe-desc -->
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3">
									<div class="recipe-thumb">
										<img src="/images/content/thumb-4.png" alt="Recipe Image"><a
											href="#" class="bookmarker"><i class="fas fa-bookmark"></i></a><a
											href="#" class="view-recipe">VIEW RECIPE</a>
									</div>
									<div class="recipe-desc">
										<h2 class="recipe-title">
											<a href="#">Korean Soup</a>
										</h2>
										<p>
											<em>By Lina Sukowati</em>
										</p>
										<span><i class="fas fa-clock"></i>&nbsp;45 Minutes</span>
									</div>
									<!-- end recipe-desc -->
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3">
									<div class="recipe-thumb">
										<img src="/images/content/thumb-5.png" alt="Recipe Image"><a
											href="#" class="bookmarker"><i class="fas fa-bookmark"></i></a><a
											href="#" class="view-recipe">VIEW RECIPE</a>
									</div>
									<div class="recipe-desc">
										<h2 class="recipe-title">
											<a href="#">Roast Aubergine</a>
										</h2>
										<p>
											<em>By Lina Sukowati</em>
										</p>
										<span><i class="fas fa-clock"></i>&nbsp;1 Hour</span>
									</div>
									<!-- end recipe-desc -->
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3">
									<div class="recipe-thumb">
										<img src="/images/content/thumb-6.png" alt="Recipe Image"><a
											href="#" class="bookmarker"><i class="fas fa-bookmark"></i></a><a
											href="#" class="view-recipe">VIEW RECIPE</a>
									</div>
									<div class="recipe-desc">
										<h2 class="recipe-title">
											<a href="#">Indian Mixed Rice</a>
										</h2>
										<p>
											<em>By Eka Nurwasilah</em>
										</p>
										<span><i class="fas fa-clock"></i>&nbsp;26 Minutes</span>
									</div>
									<!-- end recipe-desc -->
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3">
									<div class="recipe-thumb">
										<img src="/images/content/thumb-7.png" alt="Recipe Image"><a
											href="#" class="bookmarker"><i class="fas fa-bookmark"></i></a><a
											href="#" class="view-recipe">VIEW RECIPE</a>
									</div>
									<div class="recipe-desc">
										<h2 class="recipe-title">
											<a href="#">Black Red Cake</a>
										</h2>
										<p>
											<em>By Nurjanah</em>
										</p>
										<span><i class="fas fa-clock"></i>&nbsp;27 Minutes</span>
									</div>
									<!-- end recipe-desc -->
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3">
									<div class="recipe-thumb">
										<img src="/images/content/thumb-8.png" alt="Recipe Image"><a
											href="#" class="bookmarker"><i class="fas fa-bookmark"></i></a><a
											href="#" class="view-recipe">VIEW RECIPE</a>
									</div>
									<div class="recipe-desc">
										<h2 class="recipe-title">
											<a href="#">Fresh Spaghetti with Tuna</a>
										</h2>
										<p>
											<em>By Lina Sukowati</em>
										</p>
										<span><i class="fas fa-clock"></i>&nbsp;45 Minutes</span>
									</div>
									<!-- end recipe-desc -->
								</div>
								<!-- end col -->
							</div>
							<!-- end row -->
							<div class="row">
								<div class="centered">
									<a href="#" class="btn btn-line">VIEW ALL RECIPES</a>
								</div>
								<!-- end centered -->
							</div>
							<!-- end row -->

						</div>
						<!-- end container -->
					</div>
					<!-- end recipes -->

					<!-- 刪除作者群介紹 -->

					<!-- 刪除中間大圖2 -->

					<!-- 文章分享(可改為餐廳簡介) /////////////////////////////////////////////////////////////////////-->
					<div class="blog-section">
						<div class="container">
							<div class="section-title">
								<h3>店家展示</h3>
							</div>
							<!-- end section-title -->
							<div class="row">
								<div class="col-6 col-md-3 blog-list">
									<figure class="blog-thumb">
										<img src="/images/content/blog-1.png" alt="blog">
									</figure>
									<div class="entry-header">
										<h2 class="post-title entry-title">
											<a href="#">Claritas est etiam processus dynamicus,qui
												sequitur nembuz</a>
										</h2>
									</div>
									<!-- end entry-header -->
									<div class="post-meta">
										<div class="cat">
											<a href="#">Cooking Tips</a>
										</div>
										<time class="published" datetime="2019-03-03"
											title="March 3, 2019 - 21:12 pm">Mar 3,2019</time>
									</div>
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3 blog-list">
									<figure class="blog-thumb">
										<img src="/images/content/blog-2.png" alt="blog">
									</figure>
									<div class="entry-header">
										<h2 class="post-title entry-title">
											<a href="#">Anteposuerit litterarum formas humanitatis
												per seacula</a>
										</h2>
									</div>
									<!-- end entry-header -->
									<div class="post-meta">
										<div class="cat">
											<a href="#">How to</a>
										</div>
										<time class="published" datetime="2019-03-03"
											title="March 3, 2019 - 21:12 pm">Mar 3,2019</time>
									</div>
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3 blog-list">
									<figure class="blog-thumb">
										<img src="/images/content/blog-3.png" alt="blog">
									</figure>
									<div class="entry-header">
										<h2 class="post-title entry-title">
											<a href="#">Lorem ipsum dolor sit amet,consectetuer
												adipiscing elit</a>
										</h2>
									</div>
									<!-- end entry-header -->
									<div class="post-meta">
										<div class="cat">
											<a href="#">Cooking Tips</a>
										</div>
										<time class="published" datetime="2019-03-03"
											title="March 3, 2019 - 21:12 pm">Mar 3,2019</time>
									</div>
								</div>
								<!-- end col -->

								<div class="col-6 col-md-3 blog-list">
									<figure class="blog-thumb">
										<img src="/images/content/blog-4.png" alt="blog">
									</figure>
									<div class="entry-header">
										<h2 class="post-title entry-title">
											<a href="#">Mirum est notare quam littera gothica</a>
										</h2>
									</div>
									<!-- end entry-header -->
									<div class="post-meta">
										<div class="cat">
											<a href="#">Cooking Tips</a>
										</div>
										<time class="published" datetime="2019-03-03"
											title="March 3, 2019 - 21:12 pm">Mar 3,2019</time>
									</div>
								</div>
								<!-- end col -->
							</div>
							<!-- end row -->
						</div>
						<!-- end container -->
					</div>
					<!-- end blog-section -->

					<!-- 刪除社群分享 -->


					<div class="bottom">
						<div class="container">

							<!-- 刪除關於我們 -->

							<!-- 頁尾 /////////////////////////////////////////////////////////////////////-->
							<div class="row no-gutters">
								<div class="col-md-6">
									<div class="copy">
										<p>
											&copy; copyright 2022 by iii-Java-123-group1
											<i class="fas fa-heart"></i>
										</p>
									</div>
									<!-- end copy -->
								</div>
								<!-- end col -->
								<div class="col-md-6">
									<ul class="bottom-nav">
										<li><a href="http://www.bootstrapmb.com/">Home</a></li>
										<li><a href="#">Contact Us</a></li>
										<li><a href="#">Privacy Policy</a></li>
										<li><a href="#">Terms and Conditions</a></li>
									</ul>
								</div>
								<!-- end col -->
							</div>
							<!-- end row -->
						</div>
						<!-- end container -->
					</div>
					<!-- end bottom -->
				</div>
			</div>
		</div>


	</div>
	<!-- end #page hfeed site -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="/js/front/modernizr-3.7.1.min.js"></script>
	<script src="/js/front/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins(below),or include individual files as needed -->
	<script src="/js/front/bootstrap.bundle.min.js"></script>
	<script src="/js/front/plugin.js"></script>
	<script src="/js/front/main.js"></script>
</body>
</html>