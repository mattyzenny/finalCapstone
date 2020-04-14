


<c:forEach var="course" items="${category.courseListByCategory }">
						<c:url var="courseDetailsURL" value="/courseDetails">
							<c:param name="id">${course.courseId}</c:param>
						</c:url>
						<li><a href="${courseDetailsURL}">${course.courseName }</a></li>
					</c:forEach>