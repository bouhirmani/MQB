<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="edit-container" ng-controller="formDebutCtrl"
	flow-init="{singleFile:true}"
	flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
	<div class="col-md-4">

		<div id="customize-btns">
			<div class="customize-btns">
				<div id="customize-options">
					<p class="item-heading" translate="TITLE_QUIZ"></p>
					<div class="item-options">
						<input type="text" class="form-control" value="" width="20px"
							ng-model="titleQuiz">
					</div>

					<p class="item-heading" translate="DESCRIPTION_QUIZ"></p>
					<div class="item-options">
						<!-- 							<input type="text" class="form-control" value="" -->
						<!-- 								placeholder="Description du Quiz" ng-model="descriptionQuiz"> -->
						<textarea class="form-control"
							ng-model="descriptionQuiz"></textarea>
					</div>
					<!-- 					<div class="disabled-options"> -->
					<!-- 						<p class="item-heading">Custom Logo</p> -->
					<!-- 						<div class="item-options"> -->
					<!-- 							<a role="button" class="edit-link cover-btn"><i -->
					<!-- 								class="fa fa-circle fa-fw"></i> Edit</a> <a role="button" -->
					<!-- 								class="edit-link remove-cover-btn"><i -->
					<!-- 								class="fa fa-circle fa-fw"></i> Remove</a> -->
					<!-- 						</div> -->

					<!-- 					</div> -->
					<p class="item-heading" translate="COVER_PHOTO"></p>
					<!-- 					<div class="item-options"> -->
					<!-- 						<a role="button" class="edit-link cover-btn"><i -->
					<!-- 							class="fa fa-circle fa-fw"></i> Edit</a> <a role="button" -->
					<!-- 							class="edit-link remove-cover-btn"><i -->
					<!-- 							class="fa fa-circle fa-fw"></i> Remove</a> -->
					<!-- 					</div> -->

					<div>
						<span class="btn btn-primary" ng-show="!$flow.files.length"
							flow-btn><p translate="UPLOAD_PHOTO"></p></span> <span class="btn btn-info"
							ng-show="$flow.files.length" flow-btn><p translate="CHANGE_PHOTO"></p></span> <span
							class="btn btn-danger" ng-show="$flow.files.length"
							ng-click="$flow.cancel()"><p translate="DELETE_PHOTO"></p></span>
					</div>

					<p class="item-heading" translate="BGR_COLOR"></p>

					<div class="item-options">
						<div>
							<input type="text" class="form-control color-picker"
								ng-style="{'background-color': colorBackground}"
								readonly="readonly"></input> <input colorpicker
								ng-model="colorBackground" type="text">
						</div>
					</div>

					<p class="item-heading" translate="FONT_COLOR"></p>
					<div class="item-options">
						<div>
							<input type="text" class="form-control color-picker"
								ng-style="{'background-color': colorText}" readonly="readonly"></input>
							<input colorpicker ng-model="colorText" type="text">

						</div>
					</div>
					<p class="item-heading" translate="FONT_TYPE"></p>
					<div class="item-options">

						<button type="button" class="btn btn-primary"
							data-toggle="modal" data-target="#fontModal"><p translate="CHANGE"></p></button>
					</div>

					<p class="item-heading" translate="BUTTON_COLOR"></p>
					<div class="item-options">
						<div>
							<input type="text" class="form-control color-picker"
								ng-style="{'background-color': colorButtonCreatQuiz}"
								readonly="readonly"></input> <input colorpicker
								ng-model="colorButtonCreatQuiz" type="text">
						</div>
					</div>

					<p class="item-heading" translate="BUTTON_TEXT"></p>
					<div class="item-options">
						<input type="text" id="btn-text-input" class="form-control"
							value="" ng-model="textButtonCreatQuiz">
					</div>

					<p class="item-heading" translate="CUSTOM_LOGO"></p>
					<div ng-controller="logoCtrl" flow-init="{singleFile:true}"
						flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
						<div ng-show="!$flow.files.length">
							<img alt="Brand" class="img-rounded img-responsive" width="100px"
								src="<c:url value='/resources/img/logo-placeholder.png'/>" />
						</div>
						<div class="img-rounded img-responsive"
							ng-show="$flow.files.length">
							<img flow-img="$flow.files[0]" width="100px" id="image" />
						</div>
						<span class="btn btn-primary" ng-show="!$flow.files.length"
							flow-btn><p translate="UPLOAD_LOGO"></p></span> <span class="btn btn-info"
							ng-show="$flow.files.length" flow-btn><p translate="CHANGE_LOGO"></p></span> <span
							class="btn btn-danger" ng-show="$flow.files.length"
							ng-click="$flow.cancel()"><p translate="DELETE_LOGO"></p></span>

					</div>


				</div>

				<div class="modal fade" id="fontModal" tabindex="-1" role="dialog"
					aria-labelledby="edit-modal-label">
					<div id="edit-modal-dialog" class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">�</button>
								<h4 class="modal-title text-center"><p translate="EDIT_FONT"></h4>
							</div>
							<div class="modal-body">
							
										<input type="radio" class="selector"><span style="font-family: sans-serif">sans-serif : Voici un exemple</span></br>
										<input type="radio" class="selector"><span class="selector" style="font-family: Arial">Arial : Voici un exemple</span></br>
										<input type="radio" ><span class="selector" style="font-family: Tahoma">Tahoma : Voici un exemple</span></br>
										<input type="radio" ><span class="selector" style="font-family: Trebuchet MS">Trebuchet MS : Voici un exemple</span></br>
										<input type="radio" ><span class="selector" style="font-family: Verdana">Verdana : Voici un exemple</span></br>
										<input type="radio" ><span class="selector" style="font-family: serif">serif : Voici un exemple</span></br>
										<input type="radio" ><span class="selector" style="font-family: Times">Times : Voici un exemple</span></br>
										<input type="radio" ><span class="selector" style="font-family: Georgia">Georgia : Voici un exemple</span></br>
										<input type="radio" ><span class="selector" style="font-family: monospace">monospace : Voici un exemple</span></br>
										<input type="radio" ><span class="selector" style="font-family: Courier">Courier : Voici un exemple</span></br>
								
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal"><p translate="CLOSE"></button>
								<button type="button" id="edit-font-type" class="btn blue-btn"><p translate="EDIT_FONT"></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div
		ng-style="{'color': colorText, 'background-color': colorBackground}"
		class="col-md-8 start-container">
		<h1 class="quiz-title">{{titleQuiz}}</h1>
		<div>
			<div>
				<div ng-show="!$flow.files.length">
					<img alt="Brand" class="img-rounded img-responsive quiz-image"
						src="<c:url value='/resources/img/cover-placeholder.jpg'/>" />
				</div>
				<div class="img-rounded img-responsive quiz-image" ng-show="$flow.files.length">
					<img flow-img="$flow.files[0]" width="500px" id="image" />
				</div>
			</div>
		</div>
		<div class=" col-md-6 col-md-offset-3 text-center ">
			<label class="quiz-subtitle"><h2>{{descriptionQuiz}}</h2></label>
			<button type="button" class="btn btn-lg"
				ng-style="{'background-color': colorButtonCreatQuiz, 'color': colorText}">{{textButtonCreatQuiz}}</button>
		</div>

	</div>




</div>