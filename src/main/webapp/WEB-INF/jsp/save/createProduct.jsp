<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增餐點</title>
<link rel="stylesheet" href="/css/ordersystem.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">

//頁面載入完成時執行
$(document).ready(function(){
	var sid = $('#sid').val();
	load(sid);
});

function sendOrder(sid){
    var name = $("#name").val();
    var category = $("#category").val();
    var price = $("#price").val();


//    var amount = parseInt(orderQuantity)*parseInt(price);

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
            "storeid":sid
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
 	      $('#feedback').html("新增成功");
 	      
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

function load(sid){
	   $.ajax({
        type:'post',
        //透過id 查詢商家
        url:'/product/storequerybyid.controller?sid='+ sid,
        dataType:'JSON',
        contentType:'application/json',
        success: function(data){
            
            var json = JSON.stringify(data, null, 4);
            console.log('success:' + json);
            var jsonArray = JSON.parse(json);
            
            $('#showorder').empty("");
            
            if(json==null){
                $('table').prepend('<tr><td colspan="2">No Result</td></tr>');
            }else{
                
         	   var table = $('#showorder');
         	   table.append("<tr id='ptitle'><th>產品名稱</th><th>產品種類</th><th>產品單價</th>");
         	   var tr = "<tr align='center'>" +
         	   
         	   
         	   "<td><input id='name' type='text' /></td>" +
         	   "<td><input id='category' type='text'  /></td>" +	   
         	   "<td><input id='price' type='text'/></td>" +

         	   "<td><button id='order' type='button' value='order' onclick='sendOrder(" + jsonArray.storeID + ")'>新增</button></td>" +
         	   "</tr>";
         	   table.append(tr);
            }
        }
	   });
}
</script>

</head>
<body>
<div id="orderListTitle">新增餐點</div>
<table id="showorder" border="1"></table>
<table id="showpage">
<input id="sid" type="hidden" value="${sid}"/>
<div id="feedback" align="center"></div>
</table>
</body>
</html>