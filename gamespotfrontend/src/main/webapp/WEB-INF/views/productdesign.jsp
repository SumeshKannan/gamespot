<!DOCTYPE html>

<title>productdesignpage </title>
<jsp:include page="header.jsp"></jsp:include>
<style>
@import url('https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700&subset=latin-ext,vietnamese');   
body{font-family: 'Quicksand', sans-serif;}
   h4{
    	font-weight: 600;
	}
	p{
		font-size: 12px;
		margin-top: 5px;
	}
	.price{
		font-size: 30px;
    	margin: 0 auto;
    	color: #333;
	}

	.thumbnail{
		opacity:0.70;
		-webkit-transition: all 0.5s; 
		transition: all 0.5s;
	}
	.thumbnail:hover{
		opacity:1.00;
		box-shadow: 0px 0px 10px #4bc6ff;
	}
	.line{
		margin-bottom: 5px;
	}
	@media screen and (max-width: 770px) {
		.right{
			float:left;
			width: 100%;
		}
	}
	span.thumbnail {
        border: 1px solid #00c4ff !important;
    border-radius: 0px !important;
    -webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.16);
    -moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.16);
    box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.16);
	padding: 10px;
}
.container h4{margin-top:70px; margin-bottom:30px;}
button {    margin-top: 6px;
}
.right {
    float: right;
    border-bottom: 2px solid #0a5971;
}
.btn-info {
    color: #fff;
    background-color: #19b4e2;
    border-color: #19b4e2;
	font-size:13px;
	font-weight:600;
}
</style>
	
		<div class="container">
		<h4>NEW COLLECTION</h4>
	<div class="row">
	
    	<!-- BEGIN PRODUCTS -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src=" " alt="...">
      			<h4>name</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
      <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>details </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">Rs </p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      				 <a href="http://cookingfoodsworld.blogspot.in/" target="_blank" >	<button class="btn btn-info right" > BUY ITEM</button></a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		

		<!-- END PRODUCTS -->
	</div>
</div><!-------container----->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<jsp:include page="footer1.jsp"></jsp:include>