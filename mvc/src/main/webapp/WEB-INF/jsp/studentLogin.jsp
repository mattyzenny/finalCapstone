<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <header>
  <c:import url="/WEB-INF/jsp/common/header.jsp"/>
 </header>
 
 
 <div class=home>Student Login</div>
 <c:url var="formAction" value="/StudentPortal" />
<form method="POST" action="${formAction}">
<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<div class="form-group">
				<label for="userName">User Name: </label>
				<input type="text" id="userName" name="userName" placeHolder="User Name" class="form-control" />
			</div>
			<div class="form-group">
				<label for="password">Password: </label>
				<input type="password" id="password" name="password" placeHolder="Password" class="form-control" />
			</div>
			
			
			<button type="submit" class="btn btn-primary">Create User</button>
		</div>
		<div class="col-sm-4"></div>
	</div>
</form>