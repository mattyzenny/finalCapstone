<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
<c:import url="/WEB-INF/jsp/common/header.jsp"/>

            </header>
            
        <table class="table">
<tr>
<th>Name</th>
<th>Description</th>
<th>Duration</th>
</tr>
<c:forEach items="${curriculums}" var="curriculum">
<tr>
<td><c:out value="${curriculum.curriculumName}" /></td>
<td><c:out value="${curriculum.curriculumDescription}" /></td>
<td><c:out value="${curriculum.curriculumDuration}" /></td>
</tr>
</c:forEach>
</table>