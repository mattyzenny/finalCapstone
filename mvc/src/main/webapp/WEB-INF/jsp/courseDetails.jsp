<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<c:import url="/WEB-INF/jsp/common/header.jsp" />

</header>


<div class="center">
	<h3>Curriculum Page</h3>

	<div class="container">
		<div class="Image">
			<a class="image"> <img id="myImage"
				src="<c:url value= "/img/${course.courseId }.jpg" />" />
			</a>
		</div>

	</div>


	<h2>${course.courseName}</h2>
	<p>${category.name }</p>

<<<<<<< HEAD
	<p>Duration: ${course.courseDuration} week(s)</p>
	<p>${course.courseDescription}</p>



	<!-- 			<img src="/img/Art.jpg" alt="Avatar" class="image"/> -->
	<div class="overlay">


=======
		<h2>${course.courseName}</h2>
		<p>${category.name }</p>

		<p>Duration: ${course.courseDuration} week(s)</p>
		<p>${course.courseDescription}</p>

		<p>
>>>>>>> 487a948e656c6a9e180e045129878f07c022f857
		<h2>Curriculum</h2>
		<c:forEach var="curriculum" items="${course.curriculumListByCourse}">
			<c:out value="${curriculum.curriculumName }"></c:out>
			<br>
			<c:forEach var="homework" items="${curriculum.homeworkList }">
<<<<<<< HEAD


				<form method="POST" action="${courseDetailsURL}">
					<c:set var="buttonStatus" value="Complete" />
					<c:if test="${homework.complete == true}">
						<c:set var="buttonStatus" value="Incomplete" />
					</c:if>
					<c:out value="${homework.homeworkName }"></c:out>
					<button id="hwComplete" type="submit">${buttonStatus}</button>
					<c:url var="courseDetailsURL" value="/courseDetails"></c:url>
					<input type="hidden" name="id" value="${course.courseId}" /> <input
						type="hidden" name="complete" value="${homework.complete}" />
				</form>

			</c:forEach>
		</c:forEach>
		<progress max="100" value="80">
			<!-- <div class="progress-bar"> -->
				<span style="width: 80%;">Progress: 80%</span>
			<!-- </div> -->
		</progress>


	</div>


</div>

<%-- <li><c:out
						value="${homework.homeworkName} Due Date: ${homework.dueDate }" /></li>
				<input type="checkbox" id="hwComplete"
					name="${homework.homeworkName }" value="Complete?">

			</c:forEach> --%>


	<%-- <form method="POST" action="${courseDetailsURL}">


						<form method="POST" action="${courseDetailsURL}">
							<c:set var="buttonStatus" value="Complete" />
							<c:if test="${homework.complete == true}">
								<c:set var="buttonStatus" value="Incomplete" />
							</c:if>
							<button id="hwComplete" type="submit">${buttonStatus}</button>
							<c:url var="courseDetailsURL" value="/courseDetails"></c:url>
							<input type="hidden" name="id" value="${course.courseId}" /> <input
								type="hidden" name="complete" value="${homework.complete}" />
						</form>

						<c:out value="${homework.homeworkName }"></c:out>

						<%-- <form method="POST" action="${courseDetailsURL}">

			<button id="hwReopen" type="submit">Re-open</button><br>
			<c:url var="courseDetailsURL" value="/courseDetails">
			<c:param name="id">${course.courseId}</c:param></c:url>
			</form> --%>

	<%-- 
		<h2>${course.courseName}</h2>
		<p>${category.name }</p>
		
		<p>Duration: ${course.courseDuration} week(s)</p>
		<p>${course.courseDescription}</p>
		
		<p>
	 --%>
=======


				<form method="POST" action="${courseDetailsURL}">
					<c:set var="buttonStatus" value="Complete" />
					<c:if test="${homework.complete == true}">
						<c:set var="buttonStatus" value="Incomplete" />
					</c:if>
					<button id="hwComplete" type="submit">${buttonStatus}</button>
					<c:url var="courseDetailsURL" value="/courseDetails"></c:url>
					<input type="hidden" name="id" value="${course.courseId}" /> <input
						type="hidden" name="complete" value="${homework.complete}" />
				</form>

				<c:out value="${homework.homeworkName }"></c:out>




			</c:forEach>
		</c:forEach>





	</div>
</div>

>>>>>>> 487a948e656c6a9e180e045129878f07c022f857
