<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav id="navbar" class="navbar navbar-inverse navbar-fixed-top header" role="navigation">
	<div class="container">

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown">
			<a role="button" class="dropdown-toggle myusernav"
				data-toggle="dropdown" data-bypass="true"> 
				<i class="fa fa-user fa-fw"></i>
				<span id="header-email">email@email.com</span>
				<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a id="account" role="button"><i
							class="fa fa-user fa-fw"></i> User Profile</a></li>
					<li class="divider"></li>
					<li><a id="logout" role="button"><i
							class="fa fa-sign-out fa-fw"></i> Logout</a></li>
				</ul></li>
		</ul>
		<a href="http://marketing-pipeline.com/"> <img
			class="img-responsive logo" alt="Brand"
			src="<c:url value='/resources/img/logoMQB.png'/>" />
		</a>

	</div>
</nav>
