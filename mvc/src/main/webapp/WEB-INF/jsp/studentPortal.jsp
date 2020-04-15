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

		<c:forEach var="homework" items="${homework}">
			<li><c:out value="${homework.homeworkName} Due Date: ${homework.dueDate }" /></li>
			<input type="checkbox" id="hwComplete" name="${homework.homeworkName }" value="Complete?">

		</c:forEach>
	</ul>
</div>

<%-- PLACE THIS IN TEACHER PORTAL(FORM TO CREATE NEW COURSE
	
		<h1>${course.courseName}</h1>
	<p>${course.courseDescription}</p> 
 <h4>${curriculum.curriculumName}</h4> 
 <p>${homework.homeworkName}</p> 
 <p>${homework.dueDate}</p> --%>


<%-- <c:set var="courseList" value="Course List" />

	<c:url var="formAction" value="/studentPortal" />
	<form method="GET" action="${formAction }">

		<div class="formInputGroup">
			<label for="course"> Enter a course :</label> <input type="text"
				name="course" id="id" />
		</div>

		<input class="formSubmitButton" id="submit" value="Search" /> --%>





<%--  PLACE THIS IN TEACHER PORTAL(FORM TO CREATE NEW COURSE--%>



<%-- <c:set var="courseName" value="${course.courseName }"/>
<c:url var="courseDetailHREF" value ="/StudentPortal">
<c:param name="courseName">${course.courseName }</c:param>  --%>

<%-- </c:url> --%>



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

