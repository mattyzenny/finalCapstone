<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<c:import url="/WEB-INF/jsp/common/header.jsp" />

</header>

<div class="courseDetails">

	<div class="sidenav">
		<ul>
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


		</ul>
	</div>


	<div class="mainContent">
		<div class="courseContent">
			<a class="image"> <img id="myImage"
				src="<c:url value= "/img/${course.courseId}.jpg" />" />
			</a>

			<div class="courseDescription">
				<h2>${course.courseName}</h2>
				<p>${category.name }</p>

				<p>Duration: ${course.courseDuration} week(s)</p>
				<p>${course.courseDescription}</p>
			</div>
		</div>
		<c:forEach var="curriculum" items="${course.curriculumListByCourse}">
			<div class="curName">
				<c:out value="${curriculum.curriculumName }"></c:out>
			</div>
			<table class="homeworkTable">
				<c:forEach var="homework" items="${curriculum.homeworkList }">


					<tr>

						<td><c:url var="updateHomeworkURL" value="/updateHomework">
								<c:param name="hwComplete">${homework.complete }</c:param>
								<c:param name="homeworkId">${homework.homeworkId }</c:param>
								<c:param name="courseId">${course.courseId }</c:param>
							</c:url> <c:choose>
								<c:when test="${homework.complete}">
									<a class="buttonComplete" href="${updateHomeworkURL}">Complete</a>
								</c:when>
								<c:otherwise>
									<a class="buttonComplete buttonGray" href="${updateHomeworkURL}">Mark Complete</a>
								</c:otherwise>
							</c:choose></td>

						<td class="dueDate"><c:out value="Due: ${homework.dueDate}" /></td>

						<td class="hwName"><c:out value="${homework.homeworkName}"></c:out></td>

						<!-- <br />
					<br /> -->

					</tr>



				</c:forEach>
			</table>
		</c:forEach>
	</div>






</div>


</body>