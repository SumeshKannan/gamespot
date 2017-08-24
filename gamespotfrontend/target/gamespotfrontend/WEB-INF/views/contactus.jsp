<title>contact us</title>
<style>
@import 'https://fonts.googleapis.com/css?family=Libre+Franklin:400,700';
html,
 body { 
    background-image:("resources/images/3.jpg"); */
   font-family: "Libre Franklin", sans-serif; */
} 

.container1 {
  background: #FFFFFF;
  width: 900px;
  height: 650px;
  margin: 5% auto;
  position: relative;
}
.container1 .map {
  width: 45%;
  float: left;
}
.container1 .contact-form {
  width: 53%;
  margin-left: 2%;
  float: left;
  
}
.container1 .contact-form .title {
  font-size: 2.5em;
  font-family: "Libre Franklin", sans-serif;
  font-weight: 700;
  color: #242424;
  margin: 5% 8%;
   background: lightgreen;
  
}
.container1 .contact-form .subtitle {
  font-size: 1.2em;
  font-weight: 400;
  margin: 0 4% 5% 8%;
}
.container1 .contact-form input,
.container1 .contact-form textarea {
  width: 330px;
  padding: 3%;
  margin: 2% 8%;
  color: #242424;
  border: 1px solid #B7B7B7;
}
.container1 .contact-form input::placeholder,
.container1 .contact-form textarea::placeholder {
  color: #242424;
}
.container1 .contact-form .btn-send {
  background: #A383C9;
  width: 180px;
  height: 60px;
  color: #FFFFFF;
  font-weight: 700;
  margin: 2% 8%;
  border: none;
  
}
 width: 95%;  */
  #leftCol, #centerCol, #rightCol {  
         float: none;   
         width: 50%;   
        padding: 3px; 
 }		 
        
     }   

</style>
<jsp:include page="header.jsp"></jsp:include>
<div class="container1">

	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d13249.247068040606!2d151.20960562674117!3d-33.8816236491114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1spt-BR!2sbr!4v1468899355787" width="100%" height="650px" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	<div class="contact-form">
		<h1 class="title"> <strong> CONTACT US <strong></h1>
		<h2 class="subtitle">We are here assist you.</h2>
		<form action="">
			<input type="text" name="name" placeholder="Your Name" />
			<input type="email" name="e-mail" placeholder="Your E-mail Adress" />
			<input type="tel" name="phone" placeholder="Your Phone Number"/>
			<textarea name="text" id="" rows="5" placeholder="Your Message"></textarea>
			<button class="btn-send">Get a Call Back</button>
		</form>
	</div>
</div>
<jsp:include page="footer1.jsp"></jsp:include>
