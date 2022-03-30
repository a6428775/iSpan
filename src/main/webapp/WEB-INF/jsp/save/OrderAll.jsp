<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderListAll</title>
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
            url:'/Store/queryByPage/' + indexPage,
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
             	   table.append("<tr id='ptitle'> <th>OrderID</th> <th>StoreID</th> <th>UserID</th> <th>OrderDate</th> <th>OrderStatus</th> </tr>");

             	   //data:jsonArray n:jsonObject
             	   $.each(data, function(i,n){
             		   var tr = "<tr align='center'>" + "<td>" + n.orderid + "</td>" +
             		            "<td>" + n.storeid + "</td>" + "<td>" + n.userid + "</td>" +
             		            "<td>" + n.orderdate + "</td>" + "<td>" + n.orderstatus + "</td>" +
             		            "</tr>";
             		   table.append(tr);
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
<div id="orderListTitle">訂單資訊</div>
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
</body>
</html>