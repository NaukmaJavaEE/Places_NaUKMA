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
<jsp:include page="include_js_admin.jsp" />
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

						<div class="panel" id="newplaces">
							<h2>
								<spring:message code="label.newplaces" />
							</h2>
							<div class="float_i"></div>
						</div>
						<!-- end  -->
						<div class="panel" id="allplaces">
							<h2>
								<spring:message code="label.allplaces" />
							</h2>
							<div class="float_i"></div>
						</div>

						<div class="panel" id="add">
							<h2>
								<spring:message code="label.add" />
							</h2>
							<div class="cleaner_h10"></div>
							<div class="col_370 float_l">
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
								</div>
							</div>
							<div class="cleaner"></div>
						</div>

						<div class="cleaner"></div>
					</div>

				</div>
			</div>
			<!-- end of content -->

			<div id="templatemo_sidebar">
				<div id="menu">
					<ul class="navigation">
						<li><a href="#newplaces" id="show-new-list" class="selected"><spring:message
									code="label.newplaces" /></a></li>
						<li><a href="#allplaces" id="show-all-list"><spring:message
									code="label.allplaces" /></a></li>
						<li><a href="#add"><spring:message code="label.add" /></a></li>
					</ul>
					<div class="cleaner"></div>
				</div>
			</div>
			<!-- end of sidebar -->

		</div>
	</div>
</body>
</html>