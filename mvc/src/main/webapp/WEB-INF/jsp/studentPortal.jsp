<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<header>
	<c:import url="/WEB-INF/jsp/common/header.jsp" />

</header>
<body>
<div class="flex-container">
<div class="center">
		<h2>Welcome To Your Student Portal</h2>

		

			<img src="img/placeholder.png" alt="Avatar" class="image">
			


		<h3>On This Student Portal You Can Do The following!</h3>
		<p>Find List of Registered Courses</p>
		<p>View Curriculum</p>
		<p>Submit Homework</p> 
		<p> Check Your Grades<p>
</div>


<div class="sidenav">
	<ul>
	<c:url var="formAction" value="/StudentPortal" />
		<form method="POST" action="${formAction}">
		<c:forEach var="category" items="${categories}">
			<%--change category to <h2> or another non-link tag --%>
<<<<<<< HEAD
			<li><c:out value ="${category.name}"/>
				
=======
			<li><c:out value="${category.name}" />
				<ul>
>>>>>>> 487a948e656c6a9e180e045129878f07c022f857
					<c:forEach var="course" items="${category.courseListByCategory }">
						<c:url var="courseDetailsURL" value="/courseDetails">
							<c:param name="id">${course.courseId}</c:param>
						</c:url>
						<%-- <li><a href="${courseDetailsURL}">${course.courseName }</a></li> --%>
								<ul class="nav nav-pills nav-stacked">
  								<!-- <li class="active"><a href="#">Home</a></li> --> 
  								<li><a href="${courseDetailsURL}"> ${course.courseName }</a></li>
  
</ul>
		
					</c:forEach>
				</li>
		</c:forEach>
<<<<<<< HEAD
		
		
  
		
=======

>>>>>>> 487a948e656c6a9e180e045129878f07c022f857

		<c:forEach var="homework" items="${homework}">
			<li><c:out
					value="${homework.homeworkName} Due Date: ${homework.dueDate }" /></li>
			<input type="checkbox" id="hwComplete"
				name="${homework.homeworkName }" value="Complete?">

		</c:forEach>
	</ul>
<<<<<<< HEAD
	</div>
	</div>
	</div>
</body>
=======
</div>
>>>>>>> 487a948e656c6a9e180e045129878f07c022f857

<%-- PLACE THIS IN TEACHER PORTAL(FORM TO CREATE NEW COURSE
	
		<h1>${course.courseName}</h1>
	<p>${course.courseDescription}</p> --%>
<%-- <h4>${curriculum.curriculumName}</h4> --%>
<%-- <p>${homework.homeworkName}</p> --%>
<%-- <p>${homework.dueDate}</p> --%>


<%-- <c:set var="courseList" value="Course List" />

	<c:url var="formAction" value="/studentPortal" />
	<form method="GET" action="${formAction }">

		<div class="formInputGroup">
			<label for="course"> Enter a course :</label> <input type="text"
				name="course" id="id" />
		</div>

		<input class="formSubmitButton" id="submit" value="Search" /> --%>




<<<<<<< HEAD
	<!--  </form>--><%--  PLACE THIS IN TEACHER PORTAL(FORM TO CREATE NEW COURSE--%>
	
	
	
	<%-- <c:set var="courseName" value="${course.courseName }"/>
=======
</form>
<%--  PLACE THIS IN TEACHER PORTAL(FORM TO CREATE NEW COURSE--%>



<%-- <c:set var="courseName" value="${course.courseName }"/>
>>>>>>> 487a948e656c6a9e180e045129878f07c022f857
<c:url var="courseDetailHREF" value ="/StudentPortal">
<c:param name="courseName">${course.courseName }</c:param>  --%>

<%-- </c:url> --%>



<<<<<<< HEAD
	<!-- <div class="center">
		<h2>Welcome To Your Student Portal</h2>
=======
<div class="center">
	<h2>Welcome To Your Student Portal</h2>
>>>>>>> 487a948e656c6a9e180e045129878f07c022f857


	
	<img src="img/school_home_banner.jpg" alt="Avatar" class="image">
	


	
	<h3>On This Student Portal You Can Do The following!</h3>
	<p>Find List of Registered Courses</p>
	<p>View Curriculum</p>
	<p>Submit Homework</p>
	<p>Check Your Grades
	<p>

<<<<<<< HEAD
		<h3>On This Student Portal You Can Do The following!</h3>
		<p>Find List of Registered Courses</p>
		<p>View Curriculum</p>
		<p>Submit Homework</p> 
		<p> Check Your Grades<p>
</div> -->
<!-- <li><a href="#">Menu 2</a></li>
  <li><a href="#">Menu 3</a></li> -->
=======
</div>

>>>>>>> 487a948e656c6a9e180e045129878f07c022f857
