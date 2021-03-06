<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header">
	<div class="hdrl"></div>
	<div class="hdrr"></div>
	
	<h1><a href="${linkTo[IndexController].index}">MetricMiner</a></h1>
	<ul id="nav">
	
		<li>
			<a href="<c:url value="/info/how-it-works"/>">How It Works</a>
		</li>
	
	
		<li><a href="<c:url value="/projects/1"/>">Projects</a>
			<ul>
				<li><a href="<c:url value="/projects/1"/>">List all</a></li>
				<li><a href="<c:url value="/projects/new" />">Add a new one</a></li>
			</ul>
		</li>
		<li><a href="${linkTo[QueryController].listQueries[1]}">Data Extraction</a>
			<ul>
				<li><a href="${linkTo[QueryController].listQueries[1]}">List all</a></li>
				<li><a href="${linkTo[QueryController].queryForm}">Add a new one</a></li>
				<li><a href="${linkTo[QueryController].wizard}">Query wizard (beta)</a></li>
			</ul>
		</li>
		<li><a href="${linkTo[StatisticalTestController].listStats}">Statistical Test</a>
			<ul>
				<li><a href="${linkTo[StatisticalTestController].statisticalTestTaskForm}">Run a test</a></li>
				<li><a href="${linkTo[StatisticalTestController].listStats}">List all</a></li>
			</ul>
		</li>
		
		<li>
			<a href="<c:url value="/info/publications"/>">Publications</a>
		</li>

		<li>
			<a href="<c:url value="/info/authors"/>">Authors</a>
		</li>
		
		<li><a href="${linkTo[StatusController].showStatus}">Status</a></li>
	</ul>
	<c:if test="${not empty userSession.user}">
		<p class="user">Hello, ${userSession.user.name} | <a href="<c:url value="/logout" />">Logout</a></p>
	</c:if>
	<c:if test="${empty userSession.user}">
		<p class="user">
			<a href="<c:url value="/login" />">Login</a>
			|
			<a href="<c:url value="/signup" />">New account</a>
		</p>
	</c:if>
</div>		<!-- #header ends -->
