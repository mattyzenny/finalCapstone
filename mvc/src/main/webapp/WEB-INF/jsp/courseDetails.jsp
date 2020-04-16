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

	<h2>${course.courseName}</h2>
	<p>${category.name }</p>

	<p>Duration: ${course.courseDuration} week(s)</p>
	<p>${course.courseDescription}</p>

	<p>
	<h2>Curriculum</h2>
	<c:forEach var="curriculum" items="${course.curriculumListByCourse}">
		<c:out value="${curriculum.curriculumName }"></c:out>
		<br>
		<c:forEach var="homework" items="${curriculum.homeworkList }">


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
	
		 <progress max="100" value="60"></progress>
	 
</div>
<div class="w3-container">

<h2>Dynamic Progress Bar with Labels</h2>
<p>Left-aligned label:</p>

<div class="w3-light-grey">
<div id="myBar" class="w3-container w3-green" style="width:20%">20%</div>
</div>
<br>
<button class="w3-button w3-green" onclick="move()">Click Me</button> 
</div>

<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<div class="w3-container">

<h2>Dynamic Progress Bar with Labels</h2>
<p>Left-aligned label:</p>

<div class="w3-light-grey">
<div id="myBar" class="w3-container w3-green" style="width:20%">20%</div>
</div>
<br>
<button class="w3-button w3-green" onclick="move()">Click Me</button> 
</div>

<script>
function move() {
  var elem = document.getElementById("myBar");   
  var width = 0;
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= 100) {
      clearInterval(id);
    } else {
      width++; 
      elem.style.width = width + '%'; 
      elem.innerHTML = width * 1  + '%';
    }
  }
}
</script>

</body>
