<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="label.title" /></title>
<script src="resources/js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="resources/js/jquery.scrollTo-1.3.3.js"
	type="text/javascript"></script>
<script src="resources/js/jquery.localscroll-1.2.5.js"
	type="text/javascript" charset="utf-8"></script>
<script src="resources/js/jquery.serialScroll-1.2.1.js"
	type="text/javascript" charset="utf-8"></script>
<script src="resources/js/coda-slider.js" type="text/javascript"
		charset="utf-8"></script>
<script src="resources/js/jquery.easing.1.3.js" type="text/javascript"
		charset="utf-8"></script>

<style>
@import url("resources/css/templatemo_style.css");

@import url("resources/css/coda-slider.css");
</style>

</head>
<body>

	<div id="slider">
		<div id="templatemo_header_wrapper">
			<div id="header">
				<h1>
					<a></a>
				</h1>
			</div>
		</div>

		<div id="templatemo_main">
			<div id="templatemo_content">
				<div class="scroll">
					<div class="scrollContainer">
						<div class="panel" align="center">
							<h2>
								<spring:message code="label.enterheader" />
							</h2>
							<div id="login_form">
								<c:if test="${not empty param.error}">
									<font color="red"> <spring:message
											code="label.loginerror" /> :
										${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
									</font>
								</c:if>

								<form method="POST"
									action="<c:url value="/j_spring_security_check" />">
									<table>
										<tr>
											<td ><spring:message code="label.login" /></td>
											<td><input type="text" name="j_username"
												class="required input_field" /></td>
										</tr>
										<tr>
											<td ><spring:message code="label.password" /></td>
											<td><input type="password" name="j_password"
												class="required input_field" /></td>
										</tr>
										<tr>
											<td ><spring:message code="label.remember" /></td>
											<td><input type="checkbox"
												name="_spring_security_remember_me" /></td>
										</tr>
										<tr>
											<td colspan="2" align="right"><input type="submit"
												value="<spring:message code="label.enter" />"
												class="submit_btn float_i" /></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
						<!-- end login -->
						<div class="cleaner"></div>
					</div>
					<div class="cleaner"></div>
				</div>
				<div class="cleaner"></div>
			</div>
			<!-- end of content -->

			<div id="templatemo_sidebar">
				<div id="menu">
					<ul class="navigation">
						<li><a href="#login"><spring:message code="label.enter" /></a></li>
					</ul>
					<div class="cleaner"></div>
				</div>
			</div>
			<!-- end of sidebar -->
		</div>
	</div>
</body>
</html>