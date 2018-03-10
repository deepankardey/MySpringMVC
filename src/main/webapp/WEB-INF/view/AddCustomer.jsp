<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Add Product</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   <link rel="icon" href="../../favicon.ico">
    <link href="<c:url value="dashboard.css" />" rel="stylesheet">
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
           <%--  <li><a href="${pageContext.request.contextPath}/placeOrders">Place Order</a></li>
            <li><a href="${pageContext.request.contextPath}/showOrders">Show Order</a></li> --%>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Enter Customer Details</h1>
			<div class="container">
			<form:form method="POST" modelAttribute="customers" action="${pageContext.request.contextPath}/addCustomer" role="form">
			<fieldset>
			<table>
			<tr>
			<!-- Title -->
			<div class="form-group"> 
				<!-- <label class="col-md-4 control-label">Title</label> -->
				<div class="col-md-4 selectContainer">
			    	<div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
			        <form:select path="title" class="form-control selectpicker" >
			        	<form:option value="Mr">Mr</form:option>
			        	<form:option value="Ms">Ms</form:option>
			   		</form:select>
			  		</div>
				</div>
			</div>
			</tr>
			<tr>
			<!-- first name -->
          	<div class="form-group">
			  <!-- <label class="col-md-4 control-label">First Name</label>   -->
				<div class="col-md-4 inputGroupContainer">
				  <div class="input-group">
				  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				  <form:input path="firstName"  placeholder="First Name" class="form-control"  type="text"></form:input>
			      </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- middle name -->
          	<div class="form-group">
			 <!--  <label class="col-md-4 control-label">Middle Name</label>   -->
				<div class="col-md-4 inputGroupContainer">
				  <div class="input-group">
				  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				  <form:input path="middleName"  placeholder="Middle Name" class="form-control"  type="text"></form:input>
			      </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Text input-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label" >Last Name</label>  -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			  	<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			  	<form:input path="lastName"  placeholder="Last Name" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Suffix-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label" >Suffix</label>  -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
				  	<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				  	<form:input path="suffix"  placeholder="suffix" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Text input-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">E-Mail</label>   -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
			        <form:input path="email"  placeholder="E-Mail Address" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Company-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label" >Company</label>  -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
					  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
					  <form:input path="company"  placeholder="Company" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Display Name-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label" >Display Name</label>  -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
					  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
					  <form:input path="displayName"  placeholder="Display Name" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Print on check as-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label" >Print on check</label>  -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
				  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				  <form:input path="printOnCheck"  placeholder="Print on check" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Street-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">Billing Street</label> -->  
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			        <form:input path="address.billingStreet"  placeholder="Billing Street" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Text input-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">Billing City</label>   -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			        <form:input path="address.billingCity"  placeholder="Billing city" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Select Basic -->
			<div class="form-group"> 
			  <!-- <label class="col-md-4 control-label">Billing State</label> -->
			    <div class="col-md-4 selectContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
			        <form:select path="address.billingState" class="form-control selectpicker" >
				      <form:option value="" >Please select your state</form:option>
				      <form:option value="labama">Alabama</form:option>
				      <form:option value="Alabama">Alaska</form:option>
				      <form:option value="Alaska" >Arizona</form:option>
				      <form:option value="Arkansas" >Arkansas</form:option>
				      <form:option value="California" >California</form:option>
				      <form:option value="Colorado" >Colorado</form:option>
				      <form:option value="Connecticut" >Connecticut</form:option>
				      <form:option value="Delaware" >Delaware</form:option>
				      <form:option value="District of Columbia" >District of Columbia</form:option>
				      <form:option value="Florida"> Florida</form:option>
				      <form:option value="Georgia" >Georgia</form:option>
				      <form:option value="Hawaii" >Hawaii</form:option>
				      <form:option value="daho" >daho</form:option>
				      <form:option value="Illinois" >Illinois</form:option>
				      <form:option value="Indiana" >Indiana</form:option>
				      <form:option value="Iowa" >Iowa</form:option>
				      <form:option value="Kansas"> Kansas</form:option>
				      <form:option value="Kentucky" >Kentucky</form:option>
				      <form:option value="Louisiana" >Louisiana</form:option>
				      <form:option value="Maine">Maine</form:option>
				      <form:option value="Maryland" >Maryland</form:option>
				      <form:option value="Mass"> Mass</form:option>
				      <form:option value="Michigan" >Michigan</form:option>
				      <form:option value="Minnesota" >Minnesota</form:option>
				      <form:option value="Mississippi">Mississippi</form:option>
				      <form:option value="Missouri">Missouri</form:option>
				      <form:option value="Montana">Montana</form:option>
				      <form:option value="Nebraska">Nebraska</form:option>
				      <form:option value="Nevada">Nevada</form:option>
				      <form:option value="New Hampshire">New Hampshire</form:option>
				      <form:option value="New Jersey">New Jersey</form:option>
				      <form:option value="New Mexico">New Mexico</form:option>
				      <form:option value="New York">New York</form:option>
				      <form:option value="North Carolina">North Carolina</form:option>
				      <form:option value="North Dakota">North Dakota</form:option>
				      <form:option value="Ohio">Ohio</form:option>
				      <form:option value="Oklahoma">Oklahoma</form:option>
				      <form:option value="Oregon">Oregon</form:option>
				      <form:option value="Pennsylvania">Pennsylvania</form:option>
				      <form:option value="Rhode Island">Rhode Island</form:option>
				      <form:option value="South Carolina">South Carolina</form:option>
				      <form:option value="South Dakota">South Dakota</form:option>
				      <form:option value="Tennessee">Tennessee</form:option>
				      <form:option value="Texas">Texas</form:option>
				      <form:option value="Uttah"> Uttah</form:option>
				      <form:option value="Vermont">Vermont</form:option>
				      <form:option value="Virginia">Virginia</form:option>
				      <form:option value="Washington" >Washington</form:option>
				      <form:option value="West Virginia" >West Virginia</form:option>
				      <form:option value="Wisconsin">Wisconsin</form:option>
				      <form:option value="Wyoming" >Wyoming</form:option>
			    </form:select>
			  </div>
			</div>
			</div>
			</tr>
			<tr>
			<!-- Text input-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">Billing Zip</label>   -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			  		<form:input path="address.billingZip" placeholder="Zip Code" class="form-control"  type="text"></form:input>
			    </div>
			</div>
			</div>
			</tr>
			<tr>
			<!-- Country-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">Billing Country</label> -->  
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			  		<form:input path="address.billingCountry" placeholder="Billing Country" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Street-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">Shipping Street</label>  --> 
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			  		<form:input path="address.shippingStreet" placeholder="Shipping Street" class="form-control" type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Text input-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">Shipping City</label> -->  
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			  		<form:input path="address.shippingCity" placeholder="Shipping city" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Select Basic -->
			<div class="form-group"> 
			  <!-- <label class="col-md-4 control-label">Shipping State</label> -->
			    <div class="col-md-4 selectContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
			        <form:select path="address.shippingState" class="form-control selectpicker" >
				      <form:option value=" " >Please select your state</form:option>
				      <form:option value="Alabama">Alabama</form:option>
				      <form:option value="Alabama">Alaska</form:option>
				      <form:option value="Alaska" >Arizona</form:option>
				      <form:option value="Arkansas" >Arkansas</form:option>
				      <form:option value="California" >California</form:option>
				      <form:option value="Colorado" >Colorado</form:option>
				      <form:option value="Connecticut" >Connecticut</form:option>
				      <form:option value="Delaware" >Delaware</form:option>
				      <form:option value="District of Columbia" >District of Columbia</form:option>
				      <form:option value="Florida"> Florida</form:option>
				      <form:option value="Georgia" >Georgia</form:option>
				      <form:option value="Hawaii" >Hawaii</form:option>
				      <form:option value="daho" >daho</form:option>
				      <form:option value="Illinois" >Illinois</form:option>
				      <form:option value="Indiana" >Indiana</form:option>
				      <form:option value="Iowa" >Iowa</form:option>
				      <form:option value="Kansas"> Kansas</form:option>
				      <form:option value="Kentucky" >Kentucky</form:option>
				      <form:option value="Louisiana" >Louisiana</form:option>
				      <form:option value="Maine">Maine</form:option>
				      <form:option value="Maryland" >Maryland</form:option>
				      <form:option value="Mass"> Mass</form:option>
				      <form:option value="Michigan" >Michigan</form:option>
				      <form:option value="Minnesota" >Minnesota</form:option>
				      <form:option value="Mississippi">Mississippi</form:option>
				      <form:option value="Missouri">Missouri</form:option>
				      <form:option value="Montana">Montana</form:option>
				      <form:option value="Nebraska">Nebraska</form:option>
				      <form:option value="Nevada">Nevada</form:option>
				      <form:option value="New Hampshire">New Hampshire</form:option>
				      <form:option value="New Jersey">New Jersey</form:option>
				      <form:option value="New Mexico">New Mexico</form:option>
				      <form:option value="New York">New York</form:option>
				      <form:option value="North Carolina">North Carolina</form:option>
				      <form:option value="North Dakota">North Dakota</form:option>
				      <form:option value="Ohio">Ohio</form:option>
				      <form:option value="Oklahoma">Oklahoma</form:option>
				      <form:option value="Oregon">Oregon</form:option>
				      <form:option value="Pennsylvania">Pennsylvania</form:option>
				      <form:option value="Rhode Island">Rhode Island</form:option>
				      <form:option value="South Carolina">South Carolina</form:option>
				      <form:option value="South Dakota">South Dakota</form:option>
				      <form:option value="Tennessee">Tennessee</form:option>
				      <form:option value="Texas">Texas</form:option>
				      <form:option value="Uttah"> Uttah</form:option>
				      <form:option value="Vermont">Vermont</form:option>
				      <form:option value="Virginia">Virginia</form:option>
				      <form:option value="Washington" >Washington</form:option>
				      <form:option value="West Virginia" >West Virginia</form:option>
				      <form:option value="Wisconsin">Wisconsin</form:option>
				      <form:option value="Wyoming" >Wyoming</form:option>
			    </form:select>
			  </div>
			</div>
			</div>
			</tr>
			<tr>
			<!-- Text input-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">Shipping Zip</label>  --> 
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			  		<form:input path="address.shippingZip" placeholder="Zip Code" class="form-control"  type="text"></form:input>
			    </div>
			</div>
			</div>
			</tr>
			<tr>
			<!-- Country-->
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">Shipping Country</label>   -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			  		<form:input path="address.shippingCountry" placeholder="Shipping Country" class="form-control"  type="text"></form:input>
			    </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Other Details -->
  
			<div class="form-group">
			  <!-- <label class="col-md-4 control-label">Other Details</label> -->
			    <div class="col-md-4 inputGroupContainer">
			    <div class="input-group">
			        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
			        <form:textarea path="otherDetails" name="otherDetails" placeholder="Other Details"></form:textarea>
			  </div>
			  </div>
			</div>
			</tr>
			<tr>
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label"></label>
			  <div class="col-md-4">
			    <button type="submit" class="btn btn-warning" >Save </span></button>
			  </div>
			</div>
			</tr>
			</table>
			</fieldset>
			</form:form>
			</div>
        </div>
      </div>
    </div>

  </body>
  <script >
  
  </script>
</html>
