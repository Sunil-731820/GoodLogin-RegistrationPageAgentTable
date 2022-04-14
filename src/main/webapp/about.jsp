<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>



<a href="sidebar.html">Back to DashBoard Table</a>
<div class="about-section">
  <h1>About Us Page</h1>
  <p>Some text about who we are and what we do.</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="w3-container w3-center w3-animate-right">
<div class="row">
  <div class="column">
    <div class="card">
      <img src="sunilimage.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Sunil Kumar Gupta</h2>
        <p class="title">Java Full Stack Developer</p>
        <p>Any Help you need  please tell me by using comment box below </p>
        <p>sunilkumargupta1170@gmail.com</p>
        <p><a href="github.com/Sunil-731820">Connect Sunil</a></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="sunilimage.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Harish Kumar Gupta</h2>
        <p class="title">Good Speaker</p>
        <p>Any need you need please about speaking</p>
        <p>harishkumar2003@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="sunilimage.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Sunil Kumar Gupta</h2>
        <p class="title">Designer</p>
        <p>Any Help you need  please tell me by using comment box below</p>
        <p>sunilkumargupta1705@gmail.com</p>
        <p><a href="github.com/Sunil-731820">Connect Sunil</a></p>
      </div>
    </div>
  </div>
</div>
</div>
<a href="message.jsp">
        <img alt="#" src="addComment.gif">
      </a>

</body>
</html>