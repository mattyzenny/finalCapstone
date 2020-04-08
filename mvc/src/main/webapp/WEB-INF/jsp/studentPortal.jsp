<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
<c:import url="/WEB-INF/jsp/common/header.jsp"/>

            </header>

   <body>       
        <div class="table">


<div class="thName">Curriculum Name</div>
<div class="thDescription">Description</div>
<div class="thDuration">Duration</div>


<c:forEach items="${curriculum}" var="curriculum">

<div class="name"><c:out value="${curriculum.curriculumName}" /></div>
<div class="description"><c:out value="${curriculum.curriculumDescription}" /></div>
<div class="duration"><c:out value="${curriculum.curriculumDuration}" /> weeks</div>

</c:forEach>
</div>
</body> 
