<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
    <title>IMCS</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   <link rel="icon" href="../../favicon.ico">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  </head>
  <style>
	#success_message{ display: none;}
  </style>
  <body>

    <jsp:include page="Header.jsp" />

    <div class="container-fluid">
      <div class="row">
       <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
                  	<li class="active"><a href="#"></a></li>
          	<li class="active"><a href="#"></a></li>
          	<li><a href="${pageContext.request.contextPath}/home">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/showCustomers">Show Customers</a></li>
            <li><a href="${pageContext.request.contextPath}/addCustomers">Add Customer</a></li>
            <li><a href="${pageContext.request.contextPath}/placeOrders">Place Order</a></li>
            <li><a href="${pageContext.request.contextPath}/showOrders">Show Order</a></li>
          </ul>
        </div>
		${order.orderID}
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		    	<table border=1 id ="listTable" class="listTable table table-striped">
			    	<thead class="table-header">
			            <tr>
			            	<th>Name</th>
			            	<th>Price</th>
			                <th>Quantity</th>
			            </tr>
			        </thead>
			        <tr>
		            	<td>Name</td>
		            	<td>Price</td>
		                <td>Quantity</td>
		            </tr>
			        <tbody class="table-body">
			            <c:forEach items="${orderProductList}" var="orderProduct" varStatus="count">
				                <tr style="color:black;">
				                	<td><c:out value="${orderProduct.products.name}" /></td>
				                    <td><c:out value="${orderProduct.products.price}" /></td>
				                    <td><c:out value="${orderProduct.quantity}" /></td>
				                </tr>
			            </c:forEach>
			        </tbody>
			    </table>
			    ${order.orderID}
		    </div>
        
        
      </div>
    </div>

  </body>
  <script >
 
  </script>
</html>
