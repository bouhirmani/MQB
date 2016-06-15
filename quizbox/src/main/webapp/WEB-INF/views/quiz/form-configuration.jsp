<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<form:form method="POST" modelAttribute="quiz">
<div id="edit-container" ng-controller="formDebutCtrl"
	flow-init="{singleFile:true}"
	flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
	<div class="col-md-3">

		<div id="customize-btns">
			<div class="customize-btns">
				<div id="customize-options">
					<span class="item-heading" translate="TITLE_QUIZ"></span>
					<div class="item-options item-margin">
						<form:input  path="title" id="title" type="text" class="form-control" value="" width="20px"
							ng-model="titleQuiz"/>
					</div>

					
					<!-- 					<div class="disabled-options"> -->
					<!-- 						<span class="item-heading">Custom Logo</span> -->
					<!-- 						<div class="item-options"> -->
					<!-- 							<a role="button" class="edit-link cover-btn"><i -->
					<!-- 								class="fa fa-circle fa-fw"></i> Edit</a> <a role="button" -->
					<!-- 								class="edit-link remove-cover-btn"><i -->
					<!-- 								class="fa fa-circle fa-fw"></i> Remove</a> -->
					<!-- 						</div> -->

					<!-- 					</div> -->
					

					<span class="item-heading" translate="BUTTON_COLOR"></span>
					<div class="item-options item-margin">
						<div>
							<input type="text" class="form-control color-picker"
								ng-style="{'background-color': colorButtonCreatQuiz}"
								readonly="readonly"></input> 
								<input colorpicker path="buttonColor" id="buttonColor"
								ng-model="colorButtonCreatQuiz" type="text"></input>
						</div>
					</div>
					<span class="item-heading" translate="BGR_COLOR"></span>

					<div class="item-options item-margin">
						<div>
							<input type="text" class="form-control color-picker"
								ng-style="{'background-color': colorBackground}"
								readonly="readonly"></input> 
								<input colorpicker  path="bgrColor" id="bgrColor"
								ng-model="colorBackground" type="text"></input>
						</div>
					</div>

					<span class="item-heading" translate="FONT_COLOR"></span>
					<div class="item-options item-margin ">
						<div >
							<input type="text" class="form-control color-picker"
								ng-style="{'background-color': colorText}" readonly="readonly"></input>
							<input  path="fontColor" id="fontColor" colorpicker ng-model="colorText" type="text"></input>

						</div>
					</div>
					
					<span class="item-heading" translate="COVER_PHOTO"></span>
					<div class="item-margin">
						<span class="btn btn-sm button" ng-show="!$flow.files.length" flow-btn>
							<span translate="UPLOAD_PHOTO"></span>
						</span> 
						<span class="btn btn-sm btn-info btn-round" ng-show="$flow.files.length" flow-btn>
							<span class="fa fa-pencil-square-o"></span>
<!-- 							<span translate="CHANGE_PHOTO"></span> -->
						</span> 
						<span
							class="btn btn-sm btn-danger btn-round" ng-show="$flow.files.length" ng-click="$flow.cancel()">
							<span class="fa fa-trash-o"></span>
<!-- 							<span translate="DELETE_PHOTO"></span> -->
						</span>
					</div>
					
						
					
				</div>
			</div>
		</div>
	</div>


	<div
		ng-style="{'color': colorText, 'background-color': colorBackground, 'font-family' : fontType}"
		class="col-md-6 start-app">
		<h1 class="quiz-title">{{titleQuiz}}</h1>
		<div>
			<div>
				<div ng-show="!$flow.files.length">
					<img alt="Brand" class="img-rounded img-responsive quiz-image"
						src="<c:url value='/resources/img/cover-placeholder.jpg'/>" />
				</div>
				<div class="img-rounded img-responsive quiz-image" ng-show="$flow.files.length">
					<img flow-img="$flow.files[0]" width="400px" id="image" />
				</div>
			</div>
		</div>
		<div class=" col-md-12 text-center ">
			<label class="quiz-subtitle">{{descriptionQuiz}}</label>
			
		</div>
	
		<div class="col-md-12 text-center ">
		 	<input type="submit" class="btn btn-lg" value="{{textButtonCreatQuiz}}"
				ng-style="{'background-color': colorButtonCreatQuiz, 'color': colorText}"/></input>
		</div>
	

	</div>

	<div class="col-md-3">

		<div id="customize-btns">
			<div class="customize-btns">
				<div id="customize-options">
					
					<span class="item-heading" translate="FONT_TYPE"></span>
					<div class="item-options item-margin">
						<select ng-model="fontType">
						     <option style="font-family: 'Comic Sans MS'" value="Comic Sans MS">Comic Sans MS</option>
						     <option style="font-family: Arial" value="Arial">Arial</option>
						     <option style="font-family: 'Times New Roman'" value="Times New Roman">Times New Roman</option>
						     <option style="font-family: 'sans-serif'" value="sans-serif">sans-serif</option>
						     <option style="font-family: 'Tahoma'" value="Tahoma">Tahoma</option>
						     <option style="font-family: 'Trebuchet MS'" value="Trebuchet MS">Trebuchet MS</option>
						     <option style="font-family: 'Verdana'" value="Verdana">Verdana</option>
						     <option style="font-family: 'serif'" value="serif">serif</option>
						     <option style="font-family: 'Times'" value="Times">Times</option>
						     <option style="font-family: 'Georgia'" value="Georgia">Georgia</option>
						     <option style="font-family: 'monospace'" value="monospace">monospace</option>
						     <option style="font-family: 'Courier'" value="Courier">Courier</option>
					  	</select>
<!-- 						<button type="button" class="btn btn-primary" -->
<!-- 							data-toggle="modal" data-target="#fontModal"><span translate="CHANGE"></span></button> -->
					</div>

					<span class="item-heading" translate="DESCRIPTION_QUIZ"></span>
					<div class="item-options item-margin">
<%-- 													<form:input type="text" class="form-control" value="" --%>
<%-- 														placeholder="Description du Quiz" ng-model="descriptionQuiz"/> --%>
						<textarea class="form-control"
							ng-model="descriptionQuiz"></textarea>
					</div>

					<span class="item-heading" translate="BUTTON_TEXT"></span>
					<div class="item-options item-margin">
						<form:input path="buttonText" id="buttonText" type="text" class="form-control"
							value="" ng-model="textButtonCreatQuiz"></form:input>
					</div>

					<span class="item-heading" translate="CUSTOM_LOGO"></span>
					<div flow-init="{singleFile:true}"
						flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
						<div ng-show="!$flow.files.length">
							<img alt="Brand" class="img-rounded img-responsive" width="100px"
								src="<c:url value='/resources/img/logo-placeholder.png'/>" />
						</div>
						<div class="img-rounded img-responsive"
							ng-show="$flow.files.length">
							<img flow-img="$flow.files[0]" width="100px" id="image" />
						</div>
						<span class="btn btn-sm button" ng-show="!$flow.files.length"
							flow-btn>
							<span translate="UPLOAD_LOGO"></span>
								
						</span> 
						<span class="btn btn-sm btn-info btn-round"
							ng-show="$flow.files.length" flow-btn>
<!-- 							<span translate="CHANGE_LOGO"></span> -->
							<span class="fa fa-pencil-square-o"></span>
							</span> 
							<span
								class="btn btn-sm btn-danger btn-round" ng-show="$flow.files.length"
								ng-click="$flow.cancel()">
<!-- 								<span translate="DELETE_LOGO"></span> -->
									<span class="fa fa-trash-o"></span>

							</span>

					</div>


				</div>

				<div class="modal fade" id="fontModal" tabindex="-1" role="dialog"
					aria-labelledby="edit-modal-label">
					<div id="edit-modal-dialog" class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title text-center">
									<span translate="EDIT_FONT"></span>
								</h4>
							</div>
<!-- 							<div class="modal-body"> -->
							
<%-- 										<form:input type="radio" class="selector"><span style="font-family: sans-serif">sans-serif : Voici un exemple</span></br> --%>
<%-- 										<form:input type="radio" class="selector"><span class="selector" style="font-family: Arial">Arial : Voici un exemple</span></br> --%>
<%-- 										<form:input type="radio" ><span class="selector" style="font-family: Tahoma">Tahoma : Voici un exemple</span></br> --%>
<%-- 										<form:input type="radio" ><span class="selector" style="font-family: Trebuchet MS">Trebuchet MS : Voici un exemple</span></br> --%>
<%-- 										<form:input type="radio" ><span class="selector" style="font-family: Verdana">Verdana : Voici un exemple</span></br> --%>
<%-- 										<form:input type="radio" ><span class="selector" style="font-family: serif">serif : Voici un exemple</span></br> --%>
<%-- 										<form:input type="radio" ><span class="selector" style="font-family: Times">Times : Voici un exemple</span></br> --%>
<%-- 										<form:input type="radio" ><span class="selector" style="font-family: Georgia">Georgia : Voici un exemple</span></br> --%>
<%-- 										<form:input type="radio" ><span class="selector" style="font-family: monospace">monospace : Voici un exemple</span></br> --%>
<%-- 										<form:input type="radio" ><span class="selector" style="font-family: Courier">Courier : Voici un exemple</span></br> --%>
								
<!-- 							</div> -->
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">
									<span translate="CLOSE"></span>
								</button>
								<button type="button" id="edit-font-type" class="btn blue-btn">
									<span translate="EDIT_FONT"></span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



</div>
</form:form>