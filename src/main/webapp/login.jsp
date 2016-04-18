<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title><spring:message code="label.title" /></title>
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/main_page.css">
</head>
<body>

	<a href="<c:url value="/index" />"> <spring:message
			code="label.places" />
	</a>
	<br />




</body>
</html>


<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
								<spring:message code="label.dekanat" />
							</h2>
							<div id="contact_form">
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
											<td align="right"><spring:message code="label.login" /></td>
											<td><input type="text" name="j_username"
												class="required input_field" /></td>
										</tr>
										<tr>
											<td align="right"><spring:message code="label.password" /></td>
											<td><input type="password" name="j_password"
												class="required input_field" /></td>
										</tr>
										<tr>
											<td align="right"><spring:message code="label.remember" /></td>
											<td><input type="checkbox"
												name="_spring_security_remember_me" /></td>
										</tr>
										<tr>
											<td colspan="2" align="right"><input type="submit"
												value="Login" class="submit_btn float_l" /></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
						<!-- end  -->

						<div class="panel" id="kafedra">
							<h2>
								<spring:message code="label.kafedra" />
							</h2>
							<c:if test="${!empty kafedraList}">
								<table>
									<tr>
										<th><spring:message code="label.name" /></th>
										<th><spring:message code="label.building" /></th>
										<th><spring:message code="label.aud" /></th>
										<th><spring:message code="label.info" /></th>
										<th>&nbsp;</th>
									</tr>
									<c:forEach items="${kafedraList}" var="place">
										<td align="center">${place.name}</td>
										<td align="center">${place.building}</td>
										<td align="center">${place.aud}</td>
										<td align="center">${place.info}</td>
										<td><a href="delete/${place.id}"><spring:message
													code="label.delete" /></a></td>
										</tr>
									</c:forEach>
								</table>
							</c:if>
						</div>
						<div class="cleaner"></div>
					</div>


					<div class="panel" id="admin">
						<h2>
							<spring:message code="label.admin" />
						</h2>

						<div class="cleaner"></div>
					</div>
					<div class="panel" id="depart">
						<h2>
							<spring:message code="label.depart" />
						</h2>
					</div>
					<div class="panel" id="library">
						<h2>
							<spring:message code="label.library" />
						</h2>
					</div>
					<div class="panel" id="studorg">
						<h2>
							<spring:message code="label.studorg" />
						</h2>
					</div>
					<div class="panel" id="cowork">
						<h2>
							<spring:message code="label.cowork" />
						</h2>
					</div>
					<div class="panel" id="friends">
						<h2>
							<spring:message code="label.friends" />
						</h2>
					</div>
					<div class="panel" id="schools">
						<h2>
							<spring:message code="label.schools" />
						</h2>
					</div>
					<div class="panel" id="services">
						<h2>
							<spring:message code="label.services" />
						</h2>
						<div class="cleaner_h10"></div>
					</div>
					<div class="panel" id="health">
						<h2>
							<spring:message code="label.health" />
						</h2>
						<div class="cleaner_h10"></div>
					</div>
					<div class="panel" id="addnew">
						<h2>
							<spring:message code="label.addnew" />
						</h2>
						<div class="cleaner_h10"></div>
						<div id="contact_form">
							<form:form method="post" action="add" commandName="place">

								<table>
									<tr>
										<td><form:label path="type">
												<spring:message code="label.type" />
											</form:label></td>
										<td><form:input path="type" /></td>
									</tr>
									<tr>
										<td><form:label path="name">
												<spring:message code="label.name" />
											</form:label></td>
										<td><form:input path="name" /></td>
									</tr>
									<tr>
										<td><form:label path="building">
												<spring:message code="label.building" />
											</form:label></td>
										<td><form:input path="building" /></td>
									</tr>
									<tr>
										<td><form:label path="stage">
												<spring:message code="label.stage" />
											</form:label></td>
										<td><form:input path="stage" /></td>
									</tr>
									<tr>
										<td><form:label path="aud">
												<spring:message code="label.aud" />
											</form:label></td>
										<td><form:input path="aud" /></td>
									</tr>
									<tr>
										<td><form:label path="info">
												<spring:message code="label.info" />
											</form:label></td>
										<td><form:input path="info" /></td>
									</tr>
								</table>
								<input type="submit"
									value="<spring:message code="label.addplace"/>"
									class="submit_btn float_l" />
							</form:form>
							<div class="cleaner"></div>
						</div>
						<div class="cleaner"></div>
					</div>

					<div class="panel" id="contactus">
						<h2>
							<spring:message code="label.propose" />
						</h2>
					</div>

					<div class="cleaner_h10"></div>
					<div class="col_370 float_l">
						<div id="contact_form">
							<form method="post" name="contact" action="#contactus">

								<label for="author"><spring:message code="label.author" /></label>
								<input type="text" id="author" name="author"
									class="required input_field" />

								<div class="cleaner_h10"></div>
								<label for="email">Email:</label> <input type="text" id="email"
									name="email" class="validate-email required input_field" />
								<div class="cleaner_h10"></div>

								<label for="text"><spring:message code="label.msg" /></label>
								<textarea id="text" name="text" rows="0" cols="0"
									class="required"></textarea>

								<div class="cleaner_h10"></div>

								<input type="submit" value="<spring:message code="label.send"/>"
									id="submit" name="submit" class="submit_btn float_l" />

							</form>
						</div>
					</div>
					<div class="col_220 float_r">
						<h4>
							<spring:message code="label.hello" />
						</h4>
						<spring:message code="label.questions" />
						<br /> <br /> <br /> <strong>Email:</strong><br /> <a
							href="mailto:annamitsan@gmail.com">annamitsan@gmail.com</a> -
						<spring:message code="label.anna" />
						<br /> <a href="mailto:kristina.bozhena@gmail.com">kristina.bozhena@gmail.com</a>
						<spring:message code="label.christina" />
						<br /> <a href="mailto:olgagavryliuk17@gmail.com">olgagavryliuk17@gmail.com</a>
						<spring:message code="label.olga" />
						<br />
					</div>
				</div>
				<!-- end of contact us -->

				<div class="cleaner"></div>
			</div>



			<!-- end of content -->

			<div id="templatemo_sidebar">
				<div id="menu">
					<ul class="navigation">
						<li><a href="#dekanat"><spring:message
									code="label.dekanat" /></a></li>
						<li><a href="#kafedra"><spring:message
									code="label.kafedra" /></a></li>
						<li><a href="#admin"><spring:message code="label.admin" /></a></li>
						<li><a href="#depart"><spring:message code="label.depart" /></a></li>
						<li><a href="#library"><spring:message
									code="label.library" /></a></li>
						<li><a href="#studorg"><spring:message
									code="label.studorg" /></a></li>
						<li><a href="#cowork"><spring:message code="label.cowork" /></a></li>
						<li><a href="#friends"><spring:message
									code="label.friends" /></a></li>
						<li><a href="#schools"><spring:message
									code="label.schools" /></a></li>
						<li><a href="#services"><spring:message
									code="label.services" /></a></li>
						<li><a href="#health"><spring:message code="label.health" /></a></li>
						<li><a href="#addnew"><spring:message code="label.addnew" /></a></li>
						<li><a href="#contactus"><spring:message
									code="label.contactus" /></a></li>
					</ul>
					<div class="cleaner"></div>
				</div>
			</div>
			<!-- end of sidebar -->
		</div>
	</div>
</body>
</html>