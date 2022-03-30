<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>餐點列表</title>
<link rel="stylesheet" href="/css/ordersystem.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	var indexPage = 1;
	
	$(document).ready(function(){
	      loadPage(indexPage);
	});

    function loadPage(indexPage){
        $.ajax({
            type:'post',
            url:'/product/queryByPage/' + indexPage,
            dataType:'JSON',
            contentType:'application/json',
            success: function(data){
                
                console.log(data);
                //顯示之前把Table標籤資料清空
                //清空這段<table id="showorder" border="1"></table>
                $('#showorder').empty("");
                $('#creat').empty("");
                
                if(data==null){
             	   $('table').prepend("<tr><td colspan='2'>暫無資料</td></tr>");
                }else{
             	   var table = $('#showorder'); 
             	   table.append("<tr id='ptitle'> <th>productid</th> <th>productname</th> <th>productcategory</th> <th>productunitprice</th> <th>storeid</th> </tr>");
					var b = 0
             	   //data:jsonArray n:jsonObject
             	   $.each(data, function(i,n){
             		   var tr = "<tr align='center'>" + 
             		   			"<td>" + n.productid + "</td>" +
             		            "<td>" + n.productname + "</td>" + 
             		            "<td>" + n.productcategory + "</td>" +
             		            "<td>" + n.productunitprice + "</td>" + 
             		            "<td>" + n.storeid + "</td>" +
             		            "</tr>";
             		   table.append(tr);
             		   b = b + 1

             		   if (b == 1){
					$('#creat').append("<div align='center'><a href='/product/storeCreateProduct.controller?sid=" + n.storeid + "'> 新增餐點</a></div>");
                 		   }
                    });       
                }
            }
        });
     }
    function change(page){
     	indexPage = page;
     	loadPage(indexPage);
     } 



</script>


</head>
<body>
<div id="orderListTitle">餐點列表</div>
<table id="showorder" border="1"></table>
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
<div id ="creat"></div>
</body>
</html>