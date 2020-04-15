<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/css/site.css"/>" rel="stylesheet" type="text/css"/>


<!-- 
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>


<div class="container">
  <h2>Collapsible List Group</h2>
  <p>Click on the collapsible panel to open and close it.</p>
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse1">Welcome to Your Student Login</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <ul class="list-group">
          <li class="list-group-item"><a href="/capstone/">Home</a></li>
          <li class="list-group-item"><a href="/capstone/login">Login</a></li>
          <li class="list-group-item"><a href="/capstone/users/new">Register</a></li>
          <li class="list-group-item"><a href="/capstone/users/new"><a href="/capstone/Sign-out">Sign-Out</a></a></li>
          

        </ul>
      </div>
    </div>
  </div>
</div>
    


 <div class="header"> -->


<div class="header">

<a href="#default" class="logo">Columbus Primary School</a>

 <div class="header-right">
            <a href="/capstone/"><button>Home</button></a>
            <a href="/capstone/login"><button>Login</button></a>
            <a href="/capstone/users/new"><button>Register</button></a>
            <a href="/capstone/logout"><button>Sign-Out</button></a>
			<a href="/capstone/user"><button>UserTest</button></a>
            </div>
            </div>
            
</head>
</html>

<html>

<%-- 
<title>Critter</title>
<c:url var="bootstrapCss" value="/css/bootstrap.min.css" />
<c:url var="siteCss" value="/css/site.css" />

<c:url var="jQueryJs" value="/js/jquery.min.js" />
<c:url var="jqValidateJs" value="/js/jquery.validate.min.js" />
<c:url var="jqvAddMethJs" value="/js/additional-methods.min.js" />
<c:url var="jqTimeagoJs" value="/js/jquery.timeago.js" />
<c:url var="popperJs" value="/js/popper.min.js" />
<c:url var="bootstrapJs" value="/js/bootstrap.min.js" />

<link rel="stylesheet" type="text/css" href="${bootstrapCss}">
<link rel="stylesheet" type="text/css" href="${siteCss}">

<script src="${jQueryJs}"></script>
<script src="${jqValidateJs}"></script>
<script src="${jqvAddMethJs}"></script>
<script src="${jqTimeagoJs}"></script>
<script src="${popperJs}"></script>
<script src="${bootstrapJs}"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("time.timeago").timeago();

		$("#logoutLink").click(function(event) {
			$("#logoutForm").submit();
		});

		var pathname = window.location.pathname;
		$("nav a[href='" + pathname + "']").parent().addClass("active");

	});
</script>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#"> 
			<c:url var="homePageHref" value="/" />
			<c:url var="imgSrc" value="/img/placeholder.png" /> 
			<a href="${homePageHref}"><img src="${imgSrc}" class="img-fluid" style="height: 50px;" /></a>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<c:url var="homePageHref" value="/" />
				<li class="nav-item"><a class="nav-link" href="${homePageHref}">Home</a></li>

				<c:if test="${not empty currentUser}">
					<c:url var="dashboardHref" value="/users/${currentUser}" />
					<li class="nav-item"><a class="nav-link" href="${dashboardHref}">Private Messages</a></li>
					<c:url var="newMessageHref"
						value="/users/${currentUser}/messages/new" />
					<li class="nav-item"><a class="nav-link" href="${newMessageHref}">New Message</a></li>
					<c:url var="sentMessagesHref"
						value="/users/${currentUser}/messages" />
					<li class="nav-item"><a class="nav-link" href="${sentMessagesHref}">Sent Messages</a></li>
					<c:url var="changePasswordHref"
						value="/users/${currentUser}/changePassword" />
					<li class="nav-item"><a class="nav-link" href="${changePasswordHref}">Change Password</a></li>
				</c:if>
			</ul>
			<ul class="navbar-nav ml-auto">
				<c:choose>
					<c:when test="${empty currentUser}">
						<c:url var="newUserHref" value="/users/new" />
						<li class="nav-item"><a class="nav-link" href="${newUserHref}">Sign Up</a></li>
						<c:url var="loginHref" value="/login" />
						<li class="nav-item"><a class="nav-link" href="${loginHref}">Log In</a></li>
					</c:when>
					<c:otherwise>
						<c:url var="logoutAction" value="/logout" />
						<form id="logoutForm" action="${logoutAction}" method="POST">
							<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
						</form>
						<li class="nav-item"><a id="logoutLink" href="#">Log Out</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</nav>

	<c:if test="${not empty currentUser}">
		<p id="currentUser">Current User: ${currentUser}</p>
	</c:if>
	<div class="container"> --%>