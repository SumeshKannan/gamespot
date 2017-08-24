<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>signin</title>
<style>
.registeration{
    border-top: 5px solid #2196f3;
    -webkit-box-shadow: 0px 5px 21px -2px rgba(0,0,0,0.47);
    -moz-box-shadow: 0px 5px 21px -2px rgba(0,0,0,0.47);
    box-shadow: 0px 5px 21px -2px rgba(0,0,0,0.47);
    margin-top: 80px;

}
.registerInner{
 margin: 15px;
}
.form-group{
    width: 100%;
    line-height: 50px;   
}

.signbuttons{
    margin-bottom: 35px;
    background: #2196f3;
    border: none;
}

input{
    border-top: none !important;
    border-right: none !important;
    border-left: none !important;
    border-bottom: 1px dotted #2196f3 !important;
    box-shadow: none !important;
    -webkit-box-shadow: none !important;
    -moz-box-shadow: none !important;
    -moz-transition: none !important;
    -webkit-transition: none !important;
}

.headerSign{
    color: #2196f3;
    margin-bottom: 20px;
    text-align: center;
}

.darktext{
    color: #2196f3;
}
</style>
<jsp:include page="header.jsp"></jsp:include>
<div class="row col-md-8 col-md-offset-2 registeration">
    
<div class="registerInner">
        <div class="col-md-6 signUp">
            <h3 class="headerSign">Sign Up</h3>
            <form:form action="getuser" method="post" modelAttribute="regmodel" >


         	       <div class="form-group">
                    <form:input class="form-control" type="text" name="name" id="name" placeholder="NAME" path="username"/>
                </div>

                <div class="form-group">
                    <form:input class="form-control" type="text" name="surname" id="surname" placeholder="SURNAME" path="surusername"/>
                </div>
                <div class="form-group">
                    <form:input class="form-control" type="text" name="email" id="email" placeholder="YOUR EMAIL" path= "uemail"/>
                </div>

                <div class="form-group ">
                    <form:input class="form-control" type="password" name="password" id="password" value="" placeholder="PASSWORD" path="upassword"/>
                </div>
                 <button type="submit" class=" signbuttons btn btn-primary">Sign Up</button>

            </form:form>
        </div>
		
</div>




<div class="registerInner">
<div class ="col-md-6">
            <h3 class="headerSign">Sign In</h3>
            <form action="perform_login">
                
                <div class="form-group">                    
                    <input class="form-control" type="text" name="usename" id="usename" placeholder="YOUR EMAIL" />
                </div>
                
                <div class="form-group">
                    <input class="form-control" type="password" name="userpassword" id="userpassword" placeholder="PASSWORD"/>
                </div>

                <button type="submit" class="signbuttons btn btn-primary">Sign In</button>
                 <c:if test="${not empty msg}">
      	<div style="margin-top: 30px;" class="alert alert-success" role="alert"><span>${msg}</span></div>
      </c:if>
</form>
</div>
 </div>



</div>
<jsp:include page="footer1.jsp"></jsp:include>