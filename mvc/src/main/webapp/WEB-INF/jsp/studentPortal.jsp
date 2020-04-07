<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
<c:import url="/WEB-INF/jsp/common/header.jsp"/>

            </header>
            
            <c:forEach var="curriculum" items="${curriculum}">
            <c:set var="curriculumList" value="${curriculum.curriculumName}"/>
            </c:forEach>