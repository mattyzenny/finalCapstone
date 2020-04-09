<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
<c:import url="/WEB-INF/jsp/common/header.jsp"/>

            </header>


   	<body>
	

    	
    	<form action="list" method="post">
    Select a Category:&nbsp;
    <select name="category">
        <c:forEach items="${listCategory}" var="category">
            <option value="${category.id}">${category.name}</option>
        </c:forEach>
    </select>
    <br/><br/>
    <input type="submit" value="Select Course" />
    
</form>


<div align="center">
    <h2>Course Selection</h2>
    <form action="list" method="post">
        Select a Category:&nbsp;
        <select name="course">
            <c:forEach items="${listCategory}" var="course">
                <option value="${category.id}"
                    <c:if test="${category.id eq selectedCatId}">selected="selected"</c:if>
                    >
                    ${course.name}${course.description}
                </option>
            </c:forEach>
        </select>
        <br/><br/>
        <input type="submit" value="Selection" />
    </form>

   <body>       
 <%--        <div class="table">


<div class="thName">Curriculum Name</div>
<div class="thDescription">Description</div>
<div class="thDuration">Duration</div>


<c:forEach items="${course}" var="curriculum">

<div class="name"><c:out value="${curriculum.curriculumName}" /></div>
<div class="description"><c:out value="${curriculum.curriculumDescription}" /></div>
<div class="duration"><c:out value="${curriculum.curriculumDuration}" /> weeks</div>

</c:forEach> --%>

</div>
	

</body> 
