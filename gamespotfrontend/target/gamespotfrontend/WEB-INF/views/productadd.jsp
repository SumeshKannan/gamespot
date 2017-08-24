<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<link
	href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<script>
	$(document).ready(function() {
		$('#table_id').dataTable({
			"pagingType" : "full_numbers",
			"lengthMenu" : [ [ 2, 5, 10, -1 ], [ 2, 5, 10, "All" ] ]
		});
	});
</script>
<title>productadd</title>

<style>
fieldset fieldset {
	margin: 0 70px;
}

fieldset {
	border: 0;
	border-bottom: 1px solid #e5e5e5;
}
</style>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">

	<h2>
		<u>Products/Services <u>
	</h2>

<c:if test="${check}">
	<form:form class="form-horizontal" action="proadd" 
		modelAttribute="promodel" enctype="multipart/form-data">
		<fieldset>

			<!-- Form Name -->
			<legend>ProductAdd</legend>



			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Product
					name</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "name" />

				</div>
			</div>

			<!-- Textarea -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textarea">Features
					& Specifications</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "description" />
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Price</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "price" />

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "categoryname" />

				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">ProductImage</label>
				<div class="col-md-4">
					<form:input type="file" class="form-control input-md" path= "productimage" />
				</div>
			</div>


			<div class="form-group">
				<label class="col-md-4 control-label" for="textarea">Quantity</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "quantity" />


				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textarea">SupplierName</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "suppliername" />


				</div>
			</div>


			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="singlebutton"></label>
				<div class="col-md-4">
					<button id="singlebutton" name="singlebutton"
						class="btn btn-success">ADD</button>
				</div>
			</div>
		</fieldset>
	</form:form>
	</c:if>
	
	<c:if test="${!check }">
	<form:form class="form-horizontal" action="proup" 
		modelAttribute="promodel" enctype="multipart/form-data">
		<fieldset>

			<!-- Form Name -->
			<legend>ProductAdd</legend>



			<!-- Text input-->
				<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Product
					ID</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "id" />

				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Product
					name</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "name" />

				</div>
			</div>

			<!-- Textarea -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textarea">Features
					& Specifications</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "description" />
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Price</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "price" />

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "categoryname" />

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">ProductImage</label>
				<div class="col-md-4">
					<form:input type="file" class="form-control input-md" path= "productimage" />

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="textarea">Quantity</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "quantity" />


				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textarea">SupplierName</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" path= "suppliername" />


				</div>
			</div>


			<!-- Button -->
			<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-4">
    <button id="" name="" class="btn btn-primary">Update</button>
  </div>
</div>
			

		</fieldset>
	</form:form>

</c:if>
</div>
<div>
	<table id= "table_id" class="table table-bordered">
		<thead>
			<tr>
			    <td>Product Image</td>
				<td>Product Id</td>
				<td>Product Name</td>
				<td>Product Description</td>
				<td>Price</td>
				<td>Category</td>
				<td>Supplier</td>
				<td>Quantity</td>

			</tr>
		</thead>

		<tbody>

			<c:forEach items= "${protable}" var="g">
			
				<tr>
				<td class=""> <img style="vertical-align: bottom;" width="120" height="60" src="resources/productimage/${g.getId()}.jpg"/> </td>
					<td> ${g.getId()} </td>
					<td> ${g.getName()} </td>
					<td> ${g.getDescription()} </td>
					<td> ${g.getPrice()} </td>
					<td> ${g.getCategoryname()}</td>
					<td> ${g.getSuppliername()}</td>
					<td> ${g.getQuantity()} </td>
					<td>
						<div class="col-md-4">
							<a href="removepro/${g.getId()}">
								<button id="removebuttons" type="button" class="btn btn-primary">DELETE</button>
							</a>
						</div>
						<div class="col-md-4">
							<a href="proid?getproid=${g.getId()}">
								<button id="editbuttons" type="button" class="btn btn-primary">EDIT</button>
							</a>
						</div>
					</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</div>
<jsp:include page="footer1.jsp"></jsp:include>