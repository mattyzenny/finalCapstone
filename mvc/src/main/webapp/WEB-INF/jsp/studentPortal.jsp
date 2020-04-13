<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<header>
	<c:import url="/WEB-INF/jsp/common/header.jsp" />

</header>

<body>

	<%-- <c:forEach var="course" items="${courses }">
		<c:out value="${course.courseName }"/>
		<c:out value="${course.courseDescription }"/>
		<c:out value="${course.courseDuration }"/>
	</c:forEach> --%>

<div class="sidenav">
	<ul>
		<c:forEach var="category" items="${categories}">
			<%--change category to <h2> or another non-link tag --%>
			<li><c:out value ="${category.name}"/>
				<ul>
					<c:forEach var="course" items="${category.courseListByCategory }">
						<c:url var="courseDetailsURL" value="/courseDetails">
							<c:param name="id">${course.courseId}</c:param>
						</c:url>
						<li><a href="${courseDetailsURL}">${course.courseName }</a></li>
					</c:forEach>
				</ul></li>
		</c:forEach>
		

		<li><c:forEach var="homework" items="${homework }">
				<li><c:out
						value="${homework.homeworkName} Due Date: ${homework.dueDate }" /></li>
				<input type="checkbox" id="hwComplete"
					name="${homework.homeworkName }" value="Complete?">

			</c:forEach>
	</ul>
	</div>

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




	</form> PLACE THIS IN TEACHER PORTAL(FORM TO CREATE NEW COURSE--%>
	
	
	<%-- <c:set var="courseName" value="${course.courseName }"/>
<c:url var="courseDetailHREF" value ="/StudentPortal">
<c:param name="courseName">${course.courseName }</c:param>  --%>

	<%-- </c:url> --%>


	<%-- 			<c:forEach var="X" items="${map.put(controllername)} -->
     <nav id="menu">
        <ul class="parent-menu">
            <li><a href="#">1st Grade Math</a>
                <ul>
                    <li><a href="#">View Curriculum</a></li>
                    <li><a href="#">Homework</a></li>
                    <li><a href="#">Quizes</a></li>
                    <li><a href="#">Student Progress</a></li>
                </ul>
            <li><a href="#">1st Grade Science</a>
                <ul>
                    <li><a href="#">View Curriculum</a></li>
                    <li><a href="#">Homework</a></li>
                    <li><a href="#">Quizes</a></li>
                    <li><a href="#">Student Progress</a></li>
                </ul>
            <li><a href="#">1st Grade Language Arts</a>
                <ul>
                    <li><a href="#">View Curriculum</a></li>
                    <li><a href="#">Homework</a></li>
                    <li><a href="#">Quizes</a></li>
                    <li><a href="#">Student Progress</a></li>
                </ul></li>
        </ul>
    </nav> -->

<%-- 	<div class='cssmenu'>
		<ul>
			<li><a href='#'><span>Courses</span></a></li>
			<li><a href='#'><span>Math</span></a>
				<ul>
					<li><a href="/capstone/FirstGradeMath"><span>1st Grade Math</span></a>
						<ul>
							<li><a href='#'><span>Homework</span></a></li>
							<li><a href='#'><span>Curriculum</span></a></li>
							<li><a href='#'><span>Grades</span></a></li>
						</ul></li></li>
		</ul>
		</li>
		<li><a href='#'><span>Science</span></a></li>
		<li><a href='#'><span>Language Art</span></a></li>
		</ul>
	</div> --%>




	<div class="center">
		<h2>Welcome To Your Student Portal</h2>

		

			<img src="img/placeholder.png" alt="Avatar" class="image">
			


		<h3>On This Student Portal You Can Do The following!</h3>
		<p>Find List of Registered Courses</p>
		<p>View Curriculum</p>
		<p>Submit Homework</p> 
		<p> Check Your Grades<p>
</div>

</body>
</html>