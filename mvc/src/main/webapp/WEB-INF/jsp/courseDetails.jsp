<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<c:import url="/WEB-INF/jsp/common/header.jsp" />

</header>

<body>
<div class="main">
		<h3>Welcome John Smith!</h3>

		<div class="container">

			<img src="/img/steve_car.jpeg" alt="Avatar" class="image">
			<div class="overlay">

				<div class="text">Student picture</div>
			</div>
		</div>

		<h2>${course.courseName}</h2>
		<p>Course Category: Math</p>
		<p>Teacher Mr. Steve Carmichael</p>
		<p>Duration: ${course.courseDuration} week(s)</p>
		<p>${course.courseDescription}</p>

	</div>




</body>
