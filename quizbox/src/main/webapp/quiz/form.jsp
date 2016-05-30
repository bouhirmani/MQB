<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<!-- START JUSTIFIED TABS -->
	    <div class="panel panel-default tabs">
	        <ul class="nav nav-tabs nav-justified">
	            <li class="active"><a data-toggle="tab">Configuration</a></li>
	            <li><a data-toggle="tab">Contenu</a></li>
	            <li><a data-toggle="tab">Publication</a></li>
	        </ul>
	        <div class="panel-body tab-content">
	            <div class="tab-pane active" id="tab8">
	                <div ng-include='"<c:url value='/quiz/form-configuration.jsp'/>"'></div>
	            </div>
	            <div class="tab-pane" id="tab9">
	                <div ng-include='"<c:url value='/quiz/form-contenu.jsp'/>"'></div>
	            </div>
	            <div class="tab-pane" id="tab10">
	                <div ng-include='"<c:url value='/quiz/form-publication.jsp'/>"'></div>
	            </div>                        
	        </div>
	    </div>                                         
	<!-- END JUSTIFIED TABS -->
</div>