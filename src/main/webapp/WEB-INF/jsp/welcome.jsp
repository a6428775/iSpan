<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="/css/Backstage/ordersystem.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	var indexPage = 1;
	
	$(document).ready(function(){
	      loadPage(indexPage);

	      loadstore();
	});

    function loadPage(indexPage){
        $.ajax({
            type:'post',
            url:'/Store/QueryAllByStoreID.controller',
            dataType:'JSON',
            contentType:'application/json',
            success: function(data){
                
                console.log(data);
                //顯示之前把Table標籤資料清空
                //清空這段<table id="showorder" border="1"></table>
                $('#showorder').empty("");
                
                
                if(data==null){
             	   $('table').prepend("<tr><td colspan='2'>暫無資料</td></tr>");
                }else{
             	   var table = $('#showorder'); 
             	   table.append("<tr id='ptitle'> <th>OrderID</th> <th>StoreID</th> <th>UserID</th> <th>OrderDate</th> <th>OrderStatus</th>  </tr>");

             	   //data:jsonArray n:jsonObject
             	   $.each(data, function(i,n){
             		   var tr = 
                 		   		"<tr align='center' >" + 
                 		   		"<td>" + n.orderid + "</td>" +
             		            "<td>" + n.storeid + "</td>" + 
             		            "<td>" + n.userid + "</td>" +
             		            "<td>" + n.orderdate + "</td>" + 
             		            "<td>" + n.orderstatus + "</td>" +
             		            "</tr>";
             		          
        //        		   		"<tr align='center' class='collapse' id='collapseLayouts"+n.orderid+"' aria-labelledby='headingOne' data-bs-parent='#sidenavAccordion'>" + 
       //          		   		"<td colspan='5' id = 'orderid"+ n.orderid +"'></td>" +
		//						"</tr>" ;

             		            
					   table.append(tr);
								// 執行 loadorder(n.orderid); 根據ordrerid 查詢
			   		//			loadorder(n.orderid);
			   				
                    });           	   
                }
            }
        });
        //load 訂單詳細資訊的 function
     }
    function change(page){
     	indexPage = page;
     	loadPage(indexPage);
     } 
///////////////////////////////////////////////////////////////////
function loadstore(){
	 $.ajax({
     type:'post',
     //透過登入帳號id 查詢商家資訊
     url:'/Store/storeupdateInformation.controller',
     dataType:'JSON',
     contentType:'application/json',
     success: function(data){
         
         var json = JSON.stringify(data, null, 4);
         console.log('success:' + json);
         var jsonArray = JSON.parse(json);
          
         if(json==null){
//             $('table').prepend('<tr><td colspan="2">No Result</td></tr>');
         }else{
             
        	 $('#storeName').append(jsonArray.storeName);
        	 $('#storeCategory').append(jsonArray.storeCategory);
        	 $('#storePhone').append(jsonArray.storePhone);
        	 $('#storeAddress').append(jsonArray.storeAddress);
        	 $('#storeBusinessHours').append(jsonArray.storeBusinessHours);
         }
     }
	   });
}

///////////////////////////---------------------------------------
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
                        <li><a class="dropdown-item" href="/logout">登出</a></li>
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

                                    <a class="nav-link" href='/Store/updateStore.controller'> 商家資料修改</a>
                                    <a class="nav-link" href="/Store/Store.controller">訂單</a>
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
                        <h1 class="mt-4">主頁</h1>

 <!--  /////////////////////////////////////商家地圖 和 資訊                       //////////////////////////-->
                          <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        商家地圖
                                    </div>
                                    <div align="center">
<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3681.9410598566637!2d120.28482903633024!3d22.65598606015211!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1z6auY6ZuE576O6KGT6aSo!5e0!3m2!1szh-TW!2stw!4v1648023181153!5m2!1szh-TW!2stw" width="500" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        商家資訊
                                    </div >
                                    <br/>
                                     <div  align="center">
                                     	<p >商家名稱 : <a id="storeName"></a></p> 
                                     	<hr>
                                     	<br/>
                                     	<p >位置 : <a id="storeAddress"></a></p> 
                                     	<hr>
                                     	<br/>
                                     	<p>連絡電話 : <a id="storePhone"></a></p>
                                     	<hr />

                                     	<br/>
                                     	<p>營業時間 : <a id="storeBusinessHours"></a></p>
                                     	<hr>
                                     	<br/>
                                     	<p>料理類型 : <a id="storeCategory"></a></p>
                                     <br/>
                                     </div>

                                </div>
                            </div>
                        </div>
 <!--  /////////////////////////////////////商家地圖 和 資訊                       //////////////////////////-->
                        
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                               訂單資訊
                            </div>
                        <div class="card-body">
                        
							<table  class="dataTable-table">
								<tbody id="showorder">
								
								
								</tbody>
							
							</table>
							
							
							
							<table id="showpage">
								<tr>
									<td>全部頁數 : ${totalPages}  全部筆數:${totalElements} </td>
							      <td colspan="3" align="right">上一頁
							         <c:forEach var="i" begin="1" end="${totalPages}" step="1">
							             <button id="myPage" value="${i}" onclick="change(${i})">${i}</button>
							         </c:forEach>下一頁
							      </td>
								</tr>
							</table>
						</div>
							<div id ="creat"></div>

  


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