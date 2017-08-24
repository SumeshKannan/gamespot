<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<link href= "https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<script>
$(document).ready(function(){
	$('#table_id').dataTable({
		"pagingType":"full_numbers",
		"lengthMenu":[[2,5,10,-1],[2,5,10, "All"]]
	});
});
</script>
<title>supplier page </title>
<jsp:include page="header.jsp"></jsp:include>
<c:if test="${check}">
<form:form class="form-horizontal" action="supadd" method="post" modelAttribute="supmodel">
<fieldset>

<!-- Form Name -->



<!-- Select Basic -->
<br>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name_fr">SUPPLIER NAME </label>
  <div class="col-md-4">
      <form:input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md" path="name"/>
    </select>
  </div>
</div>
<br>
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name">PHONE NUMBER</label>
  <div class="col-md-4">
     <form:input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md" path="phone"/>
    </select>
  </div>
</div>
<br>
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name_fr">SUPPLIER ADDRESS </label>
  <div class="col-md-4">
         <form:input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md" path="address"/>
    </select>
  </div>
</div>



<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-4">
    <button id="" name="" class="btn btn-primary">Submit</button>
  </div>
</div>

</fieldset>
</form:form>
</c:if>
<c:if test="${!check }">
<form:form class="form-horizontal" action="supup" method="post" modelAttribute="supmodel">
<fieldset>

<!-- Form Name -->



<!-- Select Basic -->
<br>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name_fr">SUPPLIER ID</label>
  <div class="col-md-4">
      <form:input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md" path="id"/>
    </select>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name_fr">SUPPLIER NAME </label>
  <div class="col-md-4">
      <form:input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md" path="name"/>
    </select>
  </div>
</div>
<br>
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name">PHONE NUMBER</label>
  <div class="col-md-4">
     <form:input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md" path="phone"/>
    </select>
  </div>
</div>
<br>
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name_fr">SUPPLIER ADDRESS </label>
  <div class="col-md-4">
         <form:input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md" path="address"/>
    </select>
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
<div>
<table id="table_id" class="table table-bordered">
<thead>
<tr>
<td> Supplier Id</td>
<td> Supplier Name</td>
<td> Suppler Address</td>
<td> Suppler Phone</td>
<td> Edit/Delete</td>
</tr>
</thead>

<tbody>

 <c:forEach items= "${suptable}" var="h">
 <tr>
 <td> ${h.getId() }</td>
 <td> ${h.getName()}</td>
 <td> ${h.getAddress()}</td>
  <td> ${h.getPhone()}</td>
 <td>
						<div class="col-md-4">
							<a href="removesup/${h.getId()}">
								<button id="removebuttons" type="button" class="btn btn-primary">DELETE</button>
							</a>
						</div>
					
						<div class="col-md-4">
							<a href="supedit?getsupid=${h.getId()}">
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
  
 
  
  