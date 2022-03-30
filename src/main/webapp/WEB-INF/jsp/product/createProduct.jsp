<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="/css/Backstage/ordersystem.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">

//頁面載入完成時執行

function sendOrder(){
  var name = $("#ProductName").val();
  var category = $("#ProductCategory").val();
  var price = $("#ProductUnitPrice").val();
  var frr = $("#uploadFile").val();

  if($.trim(name)==''){
	   alert('請輸入產品名稱');
	   return;
  }

  if($.trim(price)==''){
	   alert('請輸入產品價格');
	   return;
   }


  var params = {
          "productname":name,
          "productcategory":category,
          "productunitprice":price,
          "preview":frr,
  }
  
  console.log("SUCCESS : ", JSON.stringify(params));
  $.ajax({
	   type:'post',
	   url:'/product/insertProduct.controller',
	   dataType:'JSON',
	   contentType:'application/json',
	   data: JSON.stringify(params),
	   success: function(data) {
	      var json = JSON.stringify(data);
	      
	      console.log("SUCCESS : ", json);
//	      $('#feedback').html("新增成功");
	      
	      var parsedObjinArray = JSON.parse(json);
	      $.each(parsedObjinArray, function(index, value) {
	          console.log(value);
	      });
	   },
	   error: function() {
	      console.log("error");
      }
  });
}
///////////////////////////////////////////////////////////////
$(function () {            
    //當選檔變更時，立即預覽之前被選擇的照片
    $("#uploadFile").change(function () { 
        previewImg(this.files);
    });
});
function previewImg(files) {
    if (files.length == 0)
        return;
    var file = files[0];
    var fr = new FileReader();
    //註冊當選檔被讀取完成後之事件處理器
    fr.readAsDataURL(file);
    fr.onload =
        function () {
            $("#img-preview").attr({ src: fr.result});
            /*  fr.result: The file's contents. 內容如下:
                data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA ...
            */
        };
}
$(function () {
    //當使用者上傳一個檔案後將進入Web Server回應的新頁面。
    //又當使用者「返回前頁」時，需要「重新預覽」前回點選擬上傳的圖片。
    previewImg($("#uploadFile")[0].files);
});

</script>

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>後台管理</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/css/Backstage/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- 導航欄品牌-->
            <a class="navbar-brand ps-3" href="/login/welcome">後台頁面</a>
            <!-- 側邊欄切換-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- 導航欄搜索-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- 右上角導航欄-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">設定</a></li>
                        <li><a class="dropdown-item" href="#!">廠商資料</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">登出</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="/login/welcome">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                商家資訊
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">

                                    <a class="nav-link" href='/product/storeCreateProduct.controller?'> 商家資料修改</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">訂單</a>
                                </nav>
                            </div>
                            
                        	<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts2" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                商家餐點
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>                               
                            <div class="collapse" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">

                                    <a class="nav-link" href='/product/storeCreateProduct.controller?'> 新增餐點</a>
                                    <a class="nav-link" href="/product/mainacction.controller">餐點列表</a>
                                </nav>
                            </div>                            
                            
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                歷史訂單
                            </a>
                        </div>
                    </div>


                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">儀錶板</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">訂單資訊</li>
                        </ol>

        <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">新增餐點</h2>
                <!-- Icon Divider-->
				</br>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form id="contactForm"  method="post" enctype="multipart/form-data" action="/test2">
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="ProductName" name="ProductName" type="text" placeholder="Enter your productname..." data-sb-validations="required" />
                                <label for="ProductName" >餐點名稱</label>
                                <div class="invalid-feedback" data-sb-feedback="ProductName:required">餐點名稱還未輸入</div>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="ProductCategory" name="ProductCategory" type="text" placeholder="Enter your ProductCategory..." data-sb-validations="required" />
                                <label for="ProductCategory">餐點類別</label>
                                <div class="invalid-feedback" data-sb-feedback="ProductCategory:required">餐點類別還未輸入</div>
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="ProductUnitPrice" name="ProductUnitPrice" type="text" placeholder="Enter your ProductUnitPrice..." data-sb-validations="required" />
                                <label for="ProductUnitPrice">餐點單價</label>
                                <div class="invalid-feedback" data-sb-feedback="ProductUnitPrice:required">餐點單價還未輸入</div>
                            </div>

							<!--  圖片上傳部分 -->
		                    <div class="mb-3">
		                        <div class="row">
		                            <div class="col-sm-8">
		                                <label for="uploadFile" class="form-label">上傳餐點照片</label>
		                                <input class="form-control" type="file" name="uploadFile" id="uploadFile" accept="image/*" />
		                            </div>
		                            <div class="col-sm-4">
		                                <div class="form-control text-center" style="height:120px ;">
		                                    <img src="" id="img-preview" class="h-100"/>
		                                </div>
		                            </div>
		                        </div>
		                    </div>

                            <!-- Submit Button-->
                            <button class="btn btn-primary " id="submitButton" type="button" onclick='sendOrder()'>新增</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>


  


                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/js/Backstage/scripts.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/js/Backstage/datatables-simple-demo.js"></script>
    </body>
</html>