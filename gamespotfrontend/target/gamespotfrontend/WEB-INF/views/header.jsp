<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" href="resources/images/gicon.ico"/>
<style>
.navbar-fluid{
  background-color: #F8F8F8;
    border-color: #E7E7E7;
	}
	</style>
  <title>Bootstrap Example</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="HandheldFriendly" content="true">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><font color="red",font face="Bedrock" size="5">Game</font><font color="green" font-family:"verdana";>SpoT</font></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
	   <li class="active"><a href="#"><img src="resources/images/glogo.jpg" width="20px" height="20px"; /></a></li>
        <li class="active"><a href="home">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCTS<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">PC GAMES</a></li>
            <li><a href="#">PS4 GAMES</a></li>
            <li><a href="#">XBOX</a></li>
          </ul>
        </li>
        <li><a href="contactus">CONTACT US</a></li>
        <li><a href="aboutus">ABOUT US</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <li><a href="productadd">PRODUCT ADD</a></li>
          <li><a href="categoryadd">CATEGORY ADD</a></li>
           <li><a href="supplieradd">SUPPLIER ADD</a></li>
        <li><a href="signin"><span class="glyphicon glyphicon-user"></span> SIGNUP</a></li>
        
      </ul>
    </div>
  </div>
</nav>
  


</body>
</html>
