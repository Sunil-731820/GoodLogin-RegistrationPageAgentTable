<%@page import="com.java.jsp.Message"%>
<%@page import="com.java.jsp.MessageDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
body {
    background-image: url(https://www.w3schools.com/howto/img_link_tree_template1_bg.jpg); /* The image used for background*/
    background-repeat: no-repeat; /* Do not repeat the image */
    background-position: center; /* Center the image */
    background-size: cover; /* Resize the background image to cover the entire container */
}

.container {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}

.image-container {
  text-align: center;
  width: 100%;
}

.links-container {
  display: flex;
  flex-direction: column;
  jusify-content: center;
  align-items: center;
}

.link {
  min-width: 50% !important;
}

@media (min-width: 1200px) .container {
  max-width: 1140px;
}
@media (min-width: 992px) .container {
  max-width: 960px;
}
@media (min-width: 768px) {
.container {
    max-width: 720px;
  }

.link {
    width: 100%;
  }
}
@media (min-width: 576px) {
.container {
    max-width: 540px;
  }
}

.w3-purple, .w3-hover-purple:hover {
color: #fff!important;
background-color: rgba(156, 39, 176, 0.6) !important;
}

	
</style>
</head>
<body>
<%
		MessageDAO messageDAO = new MessageDAO();
%>
<center>
<h1>Welcome to messgae parts</h1>
</center>


 <!-- Content container -->
    <div class="container">

      <!-- Image and name container. Change to your picture here. -->
    <div class="image-container">
    <img src="sunilDp.jpg" class="w3-margin" alt="Photo by Art Hauntington" max-width="100%" height="150px" style="border-radius: 50%; alt=">
     <div class="w3-text-white">
     <p class="w3-text-white w3-large">Welcome to <span class="w3-tag w3-large w3-round w3-black w3-text-white"><strong>Infinite</strong></span> Computer Solutions!</p>
     <p class="w3-large"><strong>See what I am up to.</strong></p>
      </div>

    <!-- Links section 1. Replace the # inside of the "" with your links. -->
    <div class="links-container">
      <a href="#" class="w3-button w3-hover-pink w3-large w3-round w3-purple w3-border link" target="_blank"><i class="fab fa-facebook"> </i>Facebook</a>
      <br>
      <a href="#" class="w3-button w3-hover-pink w3-large w3-round w3-purple w3-border link" target="_blank"><i class="fab fa-instagram"> </i>Instagram</a>
      <br>
      <a href="#" class="w3-button w3-hover-pink w3-large w3-round w3-purple w3-border link" target="_blank"><i class="fab fa-twitter"> </i>Twitter</a>
      <br>
      <a href="#" class="w3-button w3-hover-pink w3-large w3-round w3-purple w3-border link" target="_blank"><i class="fa fa-code"> </i>Github</a>
    </div>
  </div>
</div>

  <!-- Contact section -->
  <div class="w3-container w3-center w3-text-white w3-padding-32 w3-padding-large" id="contact">
    <div class="w3-content" style="max-width:500px">
      <h4 class="w3-center"><b>Get in touch.</b></h4>
      <form action="message.jsp" method="get">
        <div class="w3-section">
          <label>Name</label>
          <input class="w3-input w3-border w3-opacity-min" type="text" name="name" required>
        </div>
        <div class="w3-section">
          <label>Email</label>
          <input class="w3-input w3-border w3-opacity-min" type="text" name="email" required>
        </div>
        <div class="w3-section">
          <label>Message</label>
          <input class="w3-input w3-border w3-opacity-min" type="text" name="message" required>
        </div>
        <button type="submit" class="w3-button w3-hover-pink w3-large w3-round w3-purple w3-border link">Send Message</button>
      </form>
    </div>
  </div>
  <%
  	if(request.getParameter("name")!=null){
  		Message message = new Message();
  		message.setName(request.getParameter("name"));
  		message.setEmail(request.getParameter("email"));
  		message.setMessage(request.getParameter("message"));
  		messageDAO.addMessage(message);
  %>
  <jsp:forward page="successMessage.jsp"></jsp:forward>
<%	
	}
%>
</body>
</html>