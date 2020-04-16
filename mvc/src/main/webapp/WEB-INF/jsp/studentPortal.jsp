<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<header>
	<c:import url="/WEB-INF/jsp/common/header.jsp" />

</header>



<div class="sidenav">
	<ul>
	<c:url var="formAction" value="/StudentPortal" />
		<form method="POST" action="${formAction}">
		<c:forEach var="category" items="${categories}">
			<li><c:out value="${category.name}" />
				<ul>
					<c:forEach var="course" items="${category.courseListByCategory }">
						<c:url var="courseDetailsURL" value="/courseDetails">
							<c:param name="id">${course.courseId}</c:param>
						</c:url>
						<li><a href="${courseDetailsURL}">${course.courseName }</a></li>
					</c:forEach>
				</ul></li>
		</c:forEach>
		</form>
</div>
<div class=homework>
		<c:forEach var="homework" items="${homework}">
			<li><c:out value="${homework.homeworkName} Due Date: ${homework.dueDate }" /></li>
			<input type="checkbox" id="hwComplete" name="${homework.homeworkName }" value="Complete?">

		</c:forEach>
	</ul>
</div>





<div class="center">
	<h2>Welcome To Your Student Portal</h2>


	
	<img src="img/school_home_banner.jpg" alt="Avatar" class="image">
	


	
	<h3>After clicking on your class link, you can: </h3>
	<p>Find List of Registered Courses</p>
	<p>View Curriculum</p>
	<p>Submit Homework</p>
	<p>Check Your Grades
	<p>

</div>

