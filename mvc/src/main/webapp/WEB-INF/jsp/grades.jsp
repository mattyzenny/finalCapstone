<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<c:forEach var="grades" items="${grades }">
			<c:out value="${grades.grade }"/>
		</c:forEach>
	</body>
</html>