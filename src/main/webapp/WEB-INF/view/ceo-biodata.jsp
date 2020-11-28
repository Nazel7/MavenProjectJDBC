<%@ taglib prefix="Form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: lanus
  Date: 26/08/2020
  Time: 01:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        header {
            background-color:black;
            color:white;
            text-align:center;
            padding:5px;
        }
        nav {
            line-height: 30px;
            background-color:#eeeeee;
            height:1000px;
            width:200px;
            float:left;
            padding:5px;
        }
        section {
            width:350px;
            float:left;
            padding:10px;

            display: block;
        }
        footer {
            background-color:black;
            color:white;
            clear:both;
            text-align:center;
            padding:10px;
        }
        a:link {
            color: chocolate;
            text-decoration: none;
        }
        a:hover {
            color: red;
            text-decoration: underline;
        }
        a:active {
            text-decoration: underline;
        }
        .span{color: chocolate}
        #img1 { width: 200px; height: 100px}
    </style>
    <title>Maven-Project</title>
</head>
<body>
<header>
        <h1>GAFAR OLANUSI, <span class="span">OLANIPEKUN</span></h1>
        <address>No 03, Omodudu Close, off Solomon Street, Ketu
            Alapere Lagos State, Nigeria<br>
            +2348168135061 | +2348154981788 | <a href="http://www.likedin.com/in/go98">LikedIn-profile</a> |
            <a href="mailto:lanusg2@gmail.com">Email</a></address>
</header>
<nav>
    <div>
        <img  alt="Photo"
             src="<%=request.getContextPath()%>/resources/images/LinkedHeadPhoto.JPG" id="img1"/>
        <figure>
            <security:authorize access="hasRole('CEO')">
            <figcaption><p>User Name: <security:authentication property="principal.username"/></p><br>
                <p>Role(s): <security:authentication property="principal.authorities"/></p>
            </figcaption>
            </security:authorize>

        </figure>
</div>
    <a href="#prof" class="span">Professional Summary</a><br>
    <a href="#workH" class="span">Work History</a><br>
    <a href="#educ" class="span">Education</a><br>
    <a href="#proj" class="span"> Project</a><br>
    <a href="#ski" class="span">Skills</a><br>
    <a href="#cour" class="span"> Courses</a><br>
    <a href="#awrd" class="span">Awards|Certifications</a><br>
    <Form:form action="${pageContext.request.contextPath}/logout" method="POST">
        <br>
        <input type="submit" value="Logout">
    </Form:form><br>
    <button>
        <a href="${pageContext.request.contextPath}/home-page">Home-page</a>
    </button>

</nav>

<section>
    <h2 id="subjectTitle" class="span"><i>Junior Java Software Engineer</i></h2>
    <h4 id="prof" class="span"><i>Professional Summary<br>
    _____</i></h4>
    <p>I am a Junior Java Software Engineer with experience in spring technologies and core
        java application development fundamentals</p>
</section>
<section>
    <h4 id="workH" class="span"><i>Work History<br>
        _____</i></h4>
    <article>
        work 1:I am a Junior Java Software Engineer with experience in spring technologies and core
        java application development fundamentals<br>
    </article>
    <br>
    <article>
        Work 2:I am a Junior Java Software Engineer with experience in spring technologies and core
        java application development fundamentals<br>
    </article>
    <br>
    <article>
        work 3:I am a Junior Java Software Engineer with experience in spring technologies and core
        java application development fundamentals
    </article>
</section>
<section>
    <h4 id="educ"  class="span"><i>Education<br>
        _____</i></h4>
        Education 1:I am a Junior Java Software Engineer with experience in spring technologies and core
        java application development fundamentals
</section>
<section>
    <h4 id="proj" class="span"><i>Project<br>
        _____</i></h4>
    <article>
        Project 1:I am a Junior Java Software Engineer with experience in spring technologies and core
        java application development fundamentals<br>
    </article>
    <br>
    <article>
        Project 2:I am a Junior Java Software Engineer with experience in spring technologies and core
        java application development fundamentals
    </article>
</section>
<section>
    <h4 id="ski" class="span"><i>Skills<br>
        _____</i></h4>
    <ul>
        <li>Java | Java EE</li>
        <li>Spring Technologies</li>
        <li>Android Basic</li>
        <li>SQL|MySQL|SQLite|HQL</li>
        <li>Git|Github</li>
        <li>JSTL|JSP|HTML|CSS</li>
        <li>Thymeleaf|Vaadin</li>
        <li>Tomcat|JBOSS</li>
    </ul>
</section>
<section>
    <h4 id="cour" class="span"><i>Courses<br>
        _____</i></h4>
    <ul>
        <li>Java Development from Scratch to Advance</li>
        <li>Spring Technologies with Tomcat and JBOSS</li>
        <li>Google Android Associate Development</li>
        <li>Algorithm basic: beginner to advance</li>
        <li>Solving problems with Creative and Critical Thinking Skills</li>
        <li>The Introductory Clinical Research</li>
        <li>Introductory Bioinformatic Research</li>
        <li>Genomic Decoding the Universal Language of life</li>
    </ul>
</section>
<section>
    <h4 id="awrd" class="span"><i>Awards|Certifications<br>
        _____</i></h4>
    <article>
        <p>IBM- Solving problems with Creative and Critical Thinking Skills</p>
        Award 1:I am a Junior Java Software Engineer with experience in spring technologies and core
        java application development fundamentals<br>
    </article>
    <br>
    <article>
        <p>NYSC- Community Developmental Projects</p>
        Award 2:I am a Junior Java Software Engineer with experience in spring technologies and core
        java application development fundamentals
    </article>
</section>
<footer>
    Copyright &copy; GOlanipekun-001
</footer>
</body>
</html>
