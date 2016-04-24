<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title><spring:message code="label.title"/></title>
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
    <script src="resources/lightgallery/lightgallery.min.js" type="text/javascript"></script>
    <script>lightgallery.init();</script>
    <jsp:include page="include_js.jsp"/>
    <style>
        @import url("resources/css/templatemo_style.css");
        @import url("resources/lightgallery/skins/default/style.css");
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

                    <div class="panel" id="dean" align="center">
                        <h2>
                            <spring:message code="label.dean"/>
                        </h2>

                        <div class=" list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/deans.png" rel="lightgallery">
                                <img src="resources/images/gallery/deans.png" style="height: 100px; width: 170px"
                                     alt=""/></a>
                        </div>
                    </div>
                    <!-- end dean -->
                    <div class="panel" id="chair" align="center">
                        <h2>
                            <spring:message code="label.chair"/>
                        </h2>
                        <div class="list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/chair1pl.png" rel="lightgallery[chair]">
                                <img src="resources/images/gallery/chair1pl.png"
                                     style="height: 100px; width: 170px" alt=""/></a>
                            <a href="resources/images/gallery/chair2pl.png" rel="lightgallery[chair]">
                                <img src="resources/images/gallery/chair2pl.png"
                                     style="height: 100px; width: 170px" alt=""/></a>
                        </div>
                    </div>
                    <!-- end chair -->
                    <div class="panel" id="administration" align="center">
                        <h2>
                            <spring:message code="label.administration"/>
                        </h2>
                        <div class=" list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/admin.png" rel="lightgallery">
                                <img src="resources/images/gallery/admin.png" style="height: 100px; width: 170px"
                                     alt=""/></a>
                        </div>
                    </div>
                    <!-- end administration -->
                    <div class="panel" id="departments" align="center">
                        <h2>
                            <spring:message code="label.departments"/>
                        </h2>
                        <div class="list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/depart1pl.png" rel="lightgallery[chair]">
                                <img src="resources/images/gallery/depart1pl.png"
                                     style="height: 100px; width: 170px" alt=""/></a>
                            <a href="resources/images/gallery/depart2pl.png" rel="lightgallery[chair]">
                                <img src="resources/images/gallery/depart2pl.png"
                                     style="height: 100px; width: 170px" alt=""/></a>
                        </div>
                    </div>
                    <!-- end departments -->
                    <div class="panel" id="library" align="center">
                        <h2>
                            <spring:message code="label.library"/>
                        </h2>
                        <div class="list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/libraries_1pl.jpg" rel="lightgallery[lib]">
                                <img src="resources/images/gallery/libraries_1pl.jpg"
                                     style="height: 100px; width: 170px" alt=""/></a>
                            <a href="resources/images/gallery/libraries_2pl.jpg" rel="lightgallery[lib]">
                                <img src="resources/images/gallery/libraries_2pl.jpg"
                                     style="height: 100px; width: 170px" alt=""/></a>
                        </div>
                    </div>
                    <!-- end library -->
                    <div class="panel" id="organizations" align="center">
                        <h2>
                            <spring:message code="label.organizations"/>
                        </h2>
                        <div class="list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/orgs.png" rel="lightgallery">
                                <img src="resources/images/gallery/orgs.png" style="height: 100px; width: 170px"
                                     alt=""/></a>
                        </div>
                    </div>
                    <!-- end organizations -->
                    <div class="panel" id="coworking" align="center">
                        <h2>
                            <spring:message code="label.coworking"/>
                        </h2>
                        <div class="list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/cowork.png" rel="lightgallery">
                                <img src="resources/images/gallery/cowork.png" style="height: 100px; width: 170px"
                                     alt=""/></a>
                        </div>
                    </div>
                    <!-- end coworking -->
                    <div class="panel" id="friends" align="center">
                        <h2>
                            <spring:message code="label.friends"/>
                        </h2>
                        <div class="list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/friends.png" rel="lightgallery">
                                <img src="resources/images/gallery/friends.png" style="height: 100px; width: 170px"
                                     alt=""/></a>
                        </div>
                    </div>
                    <!-- end friends -->
                    <div class="panel" id="schools" align="center">
                        <h2>
                            <spring:message code="label.schools"/>
                        </h2>
                        <div class="list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/schools.png" rel="lightgallery">
                                <img src="resources/images/gallery/schools.png" style="height: 100px; width: 170px"
                                     alt=""/></a>
                        </div>
                    </div>
                    <!-- end schools -->
                    <div class="panel" id="services" align="center">
                        <h2>
                            <spring:message code="label.services"/>
                        </h2>
                        <div class="list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/services.png" rel="lightgallery">
                                <img src="resources/images/gallery/services.png" style="height: 100px; width: 170px"
                                     alt=""/></a>
                        </div>
                    </div>
                    <!-- end services -->
                    <div class="panel" id="health" align="center">
                        <h2>
                            <spring:message code="label.health"/>
                        </h2>
                        <div class="list float_i"></div>
                        <div class="gallery">
                            <br/>
                            <a href="resources/images/gallery/health.png" rel="lightgallery">
                                <img src="resources/images/gallery/health.png" style="height: 100px; width: 170px"
                                     alt=""/></a>
                        </div>
                    </div>
                    <!-- end health -->
                    <div class="panel" id="propose" align="center">
                        <h2>
                            <spring:message code="label.propose"/>
                        </h2>
                        <div class="cleaner_h10"></div>
                        <div class="float_i">
                            <div id="contact_form">
                                <form:form method="post" action="propose" commandName="place">
                                    <table>
                                        <tr>
                                            <td><form:label path="type">
                                                <spring:message code="label.type"/>
                                            </form:label></td>
                                            <td><form:input path="type"/></td>
                                        </tr>
                                        <tr>
                                            <td><form:label path="name">
                                                <spring:message code="label.name"/>
                                            </form:label></td>
                                            <td><form:input path="name"/></td>
                                        </tr>
                                        <tr>
                                            <td><form:label path="building">
                                                <spring:message code="label.building"/>
                                            </form:label></td>
                                            <td><form:input path="building"/></td>
                                        </tr>
                                        <tr>
                                            <td><form:label path="stage">
                                                <spring:message code="label.stage"/>
                                            </form:label></td>
                                            <td><form:input path="stage"/></td>
                                        </tr>
                                        <tr>
                                            <td><form:label path="aud">
                                                <spring:message code="label.aud"/>
                                            </form:label></td>
                                            <td><form:input path="aud"/></td>
                                        </tr>
                                        <tr>
                                            <td><form:label path="info">
                                                <spring:message code="label.info"/>
                                            </form:label></td>
                                            <td><form:input path="info"/></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="right"><input type="submit"
                                                                                 value="<spring:message code="label.send"/>"
                                                                                 class="submit_btn float_i"/></td>
                                        </tr>
                                    </table>

                                </form:form>
                            </div>

                        </div>

                    </div>
                    <!-- end propose -->
                    <div class="panel" id="contactus">
                        <h2>
                            <spring:message code="label.writeus"/>
                        </h2>
                        <div class="cleaner_h10"></div>
                        <div class="col_370 float_l">
                            <div id="contact_form">
                                <form method="post" name="contact" action="#contactus" id="form">
                                    <label><spring:message
                                            code="label.author"/></label> <input type="text"
                                                                                 name="name"
                                                                                 class="required input_field"/>

                                    <div class="cleaner_h10"></div>
                                    <label>Email:</label> <input type="text" name="email"
                                                                 class="validate-email required input_field"/>
                                    <div class="cleaner_h10"></div>

                                    <label><spring:message code="label.msg"/></label>
										<textarea name="text" rows="0" cols="0"
                                                  class="required"></textarea>

                                    <div class="cleaner_h10"></div>

                                    <button class="submit_btn float_l"><spring:message code="label.send"/></button>
                                </form>
                            </div>
                        </div>
                        <div class="col_220 float_r">
                            <h4>
                                <spring:message code="label.hello"/>
                            </h4>
                            <spring:message code="label.questions"/>
                            <br/> <br/> <br/> <strong>Email:</strong><br/> <a
                                href="mailto:annamitsan@gmail.com">annamitsan@gmail.com</a>
                            <spring:message code="label.anna"/>
                            <br/> <a href="mailto:kristina.bozhena@gmail.com">kristina.bozhena@gmail.com</a>
                            <spring:message code="label.christina"/>
                            <br/> <a href="mailto:olgagavryliuk17@gmail.com">olgagavryliuk17@gmail.com</a>
                            <spring:message code="label.olga"/>
                            <br/>
                        </div>
                    </div>
                    <!-- end contactus -->
                </div>
                <!-- end scrollContainer -->
            </div>
            <!--  end scroll-->
            <div class="cleaner"></div>
        </div>
        <!-- end of content -->

        <div id="templatemo_sidebar">
            <div id="menu">
                <ul class="navigation">
                    <li><a href="#dean" id="show-dean-list" class="selected"><spring:message
                            code="label.dean"/></a></li>
                    <li><a href="#chair" id="show-chair-list"><spring:message
                            code="label.chair"/></a></li>
                    <li><a href="#administration" id="show-administration-list"><spring:message
                            code="label.administration"/></a></li>
                    <li><a href="#departments" id="show-departments-list"><spring:message
                            code="label.departments"/></a></li>
                    <li><a href="#library" id="show-library-list"><spring:message
                            code="label.library"/></a></li>
                    <li><a href="#organizations" id="show-organizations-list"><spring:message
                            code="label.organizations"/></a></li>
                    <li><a href="#coworking" id="show-coworking-list"><spring:message
                            code="label.coworking"/></a></li>
                    <li><a href="#friends" id="show-friends-list"><spring:message
                            code="label.friends"/></a></li>
                    <li><a href="#schools" id="show-schools-list"><spring:message
                            code="label.schools"/></a></li>
                    <li><a href="#services" id="show-services-list"><spring:message
                            code="label.services"/></a></li>
                    <li><a href="#health" id="show-health-list"><spring:message
                            code="label.health"/></a></li>
                    <li><a href="#propose"><spring:message
                            code="label.propose"/></a></li>
                    <li><a href="#contactus"><spring:message
                            code="label.contactus"/></a></li>
                </ul>
                <div class="cleaner"></div>
            </div>
        </div>
        <!-- end sidebar -->
    </div>
    <!-- end main -->
</div>
<!-- end slider -->
</body>
</html>