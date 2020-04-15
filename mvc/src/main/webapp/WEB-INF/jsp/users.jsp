<ul class="navbar-nav ml-auto">
				<c:choose>
					<c:when test="${empty currentUser}">
						<c:url var="newUserHref" value="/users/new" />
						<li class="nav-item"><a class="nav-link" href="${newUserHref}">Sign Up</a></li>
						<c:url var="loginHref" value="/login" />
						<li class="nav-item"><a class="nav-link" href="${loginHref}">Log In</a></li>
					</c:when>
					<c:otherwise>
						<c:url var="logoutAction" value="/logout" />
						<form id="logoutForm" action="${logoutAction}" method="POST">
							<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
						</form>
						<li class="nav-item"><a id="logoutLink" href="#">Log Out</a></li>
					</c:otherwise>
				</c:choose>
			</ul>