<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<c:import url="/WEB-INF/jsp/common/header.jsp" />

</header>

<body>
<div class="center">
		<h3>Curriculum Page</h3>

		
<img src="img/placeholder.png" alt="Avatar" class="image">
			

		

		<h2>${course.courseName}</h2>
		<p>${category.name }</p>
		
		<p>Duration: ${course.courseDuration} week(s)</p>
		<p>${course.courseDescription}</p>
		
		<p>
	
	
	
	<h2>Curriculum</h2>
	<c:forEach var="curriculum" items="${course.curriculumListByCourse}">
	<c:out value="${curriculum.curriculumName }"></c:out>
		<c:forEach var="homework" items="${curriculum.homeworkList }">
			<c:out value="${homework.homeworkName }"></c:out>
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

</div>


</body>
