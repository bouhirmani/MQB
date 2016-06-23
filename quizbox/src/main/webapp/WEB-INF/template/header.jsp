<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<nav class="navbar navbar-inverse navbar-static-top navbar-fixed-top" >
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="http://marketing-pipeline.com/">
      <span><img class="logo"
				alt="Brand"
				src="<c:url value='/resources/img/logoMQB.png'/>" />
		</span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" >

      <button type="button" class="btn btn-link" ng-click="changeLanguage('en')"><i translate="BUTTON_LANG_EN"></i></button>
   
    <button type="button" class="btn btn-link" ng-click="changeLanguage('fr')"><i translate="BUTTON_LANG_FR"></i></button>
    
      <ul class="nav navbar-nav navbar-right">
        
  
        <li class="dropdown">
          <a class="dropdown-toggle fa fa-user " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">  email@adress.com <span class="caret"></span></a>
          <ul class="dropdown-menu">
						<li><a id="account" role="button"><i
								class="fa fa-user fa-fw"></i> <i translate=" USER_PROFILE"></i></a></li>
						<li class="divider"></li>
						<li><a id="logout" role="button"><i
								class="fa fa-sign-out fa-fw"></i> <i translate=" LOGOUT"></i></a></li>
					</ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div>
	<ul id="breadcrumbs-two">
	  <li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
	  <c:choose>
	  	<c:when test='${requestScope["javax.servlet.forward.request_uri"] eq "/quizbox/choice"}'>
	  		<li><a href="${pageContext.request.contextPath}/choice">Choice</a></li>
	  	</c:when>
	  	<c:when test='${requestScope["javax.servlet.forward.request_uri"] eq "/quizbox/form/configuration"}'>
	  		<li><a href="${pageContext.request.contextPath}/form/configuration">Configuration</a></li>
	  	</c:when>
	  	<c:when test='${requestScope["javax.servlet.forward.request_uri"] eq "/quizbox/form/contenu"}'>
			<li><a href="${pageContext.request.contextPath}/form/configuration">Configuration</a></li>
			<li><a href="${pageContext.request.contextPath}/form/contenu">Contenu</a></li>	  		
	  	</c:when>
	  	<c:when test='${requestScope["javax.servlet.forward.request_uri"] eq "/quizbox/form/formulaire"}'>
			<li><a href="${pageContext.request.contextPath}/form/configuration">Configuration</a></li>
			<li><a href="${pageContext.request.contextPath}/form/contenu">Contenu</a></li>	  		
			<li><a href="${pageContext.request.contextPath}/form/formulaire">Formulaire</a></li>	  		
	  	</c:when>
	  </c:choose>
	</ul>
</div>




