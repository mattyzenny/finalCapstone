<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<c:import url="/WEB-INF/jsp/common/header.jsp" />

</header>

<body>
<p> hello </p>

 
<c:forEach var="course" items="${courses }">
<%-- <c:set var="courseName" value="${course.courseName }"/>
<c:url var="courseDetailHREF" value ="/StudentPortal">
<c:param name="courseName">${course.courseName }</c:param>  --%>
 
<%-- </c:url> --%>
 <c:out value="${course.courseName }"/>
<c:out value="${course.courseDescription }"/>
<c:out value="${course.courseDuration }"/> Week
</c:forEach>

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

<!-- 	<div class='cssmenu'>
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
	</div>




	<div class="main">
		<h3>Welcome John Smith!</h3>

		<div class="container">

			<img src="/img/steve_car.jpeg" alt="Avatar" class="image">
			<div class="overlay">

				<div class="text">Student picture</div>
			</div>
		</div>

		<h2>1st Grade Math</h2>
		<p>Course Category: Math</p>
		<p>Teacher Mr. Steve Carmichael</p>
		<p>Duration: 1 week</p> 
 --%>

</body>
</html>