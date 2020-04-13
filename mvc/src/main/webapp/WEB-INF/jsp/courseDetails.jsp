<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<c:import url="/WEB-INF/jsp/common/header.jsp" />

</header>

<body>
<div class="main">
		<h3>Welcome John Smith!</h3>

		<div class="container">
 <a class="CourseImage"> <img id="CourseImage"
				src="<c:url value= "/img/${course.courseId }.jpg"/>" /> 
				
				


<!-- 			<img src="/img/Art.jpg" alt="Avatar" class="image"/> -->
			<div class="overlay">

				<div class="text">Student picture</div>
			</div>
		</div>

		<h2>${course.courseName}</h2>
		<p>${category.name }</p>
		<p>Teacher Mr. Steve Carmichael</p>
		<p>Duration: ${course.courseDuration} week(s)</p>
		<p>${course.courseDescription}</p>
</div>
	
	
	<h2>Curriculum</h2>
	<c:forEach var="curriculum" items="${course.curriculumListByCourse}">
	<c:out value="${curriculum.curriculumName }"></c:out><br>
		<c:forEach var="homework" items="${curriculum.homeworkList }">
			<c:out value="${homework.homeworkName }"></c:out><br>
			<input type="checkbox" id="hwComplete"
					name="${homework.homeworkName }" value="Complete?"></>
		</c:forEach>
	</c:forEach>


				<%-- <li><c:out
						value="${homework.homeworkName} Due Date: ${homework.dueDate }" /></li>
				<input type="checkbox" id="hwComplete"
					name="${homework.homeworkName }" value="Complete?">

			</c:forEach> --%>
	</ul>




</body>
