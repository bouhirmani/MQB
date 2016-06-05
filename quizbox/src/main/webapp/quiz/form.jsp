<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<!-- START JUSTIFIED TABS -->
	    <div class="panel panel-default tabs">
	        <ul class="nav nav-tabs nav-justified">
	            <li class="active"><a data-toggle="tab" ui-sref=".configuration">Configuration</a></li>
	            <li><a data-toggle="tab" ui-sref=".contenu">Contenu</a></li>
	            <li><a data-toggle="tab" ui-sref=".publication">Publication</a></li>
	        </ul>
	        <div class="panel-body tab-content">
	            <div class="tab-pane active" id="tab8">
	                <div ui-view></div>
	            </div>
	        </div>
	    </div>                                         
	<!-- END JUSTIFIED TABS -->
</div>