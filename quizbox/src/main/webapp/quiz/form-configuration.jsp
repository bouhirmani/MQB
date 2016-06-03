<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="edit-container" ng-controller="formDebutCtrl"
	flow-init="{singleFile:true}"
	flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
	<div class="col-md-4">

		<div id="customize-btns">
			<div class="customize-btns">
				<div id="customize-options">
					<p class="item-heading">Titre du Quiz</p>
					<div class="item-options">
						<input type="text" class="form-control" value="" width="20px"
							placeholder="Titre du Quiz" ng-model="titleQuiz">
					</div>

					<p class="item-heading">Description du Quiz</p>
					<div class="item-options">
						<!-- 							<input type="text" class="form-control" value="" -->
						<!-- 								placeholder="Description du Quiz" ng-model="descriptionQuiz"> -->
						<textarea class="form-control" placeholder="Description du Quiz"
							ng-model="descriptionQuiz"></textarea>
					</div>
					<div class="disabled-options">
						<p class="item-heading">Custom Logo</p>
						<div class="item-options">
							<a role="button" class="edit-link cover-btn"><i
								class="fa fa-circle fa-fw"></i> Edit</a> <a role="button"
								class="edit-link remove-cover-btn"><i
								class="fa fa-circle fa-fw"></i> Remove</a>
						</div>

					</div>
					<p class="item-heading">Cover Photo</p>
					<!-- 					<div class="item-options"> -->
					<!-- 						<a role="button" class="edit-link cover-btn"><i -->
					<!-- 							class="fa fa-circle fa-fw"></i> Edit</a> <a role="button" -->
					<!-- 							class="edit-link remove-cover-btn"><i -->
					<!-- 							class="fa fa-circle fa-fw"></i> Remove</a> -->
					<!-- 					</div> -->

					<div>
						<span class="btn btn-primary" ng-show="!$flow.files.length"
							flow-btn>Charger Photo</span> <span class="btn btn-info"
							ng-show="$flow.files.length" flow-btn>Modifier Photo</span> <span
							class="btn btn-danger" ng-show="$flow.files.length"
							ng-click="$flow.cancel()">Supprimer Photo</span>
					</div>

					<p class="item-heading">Background Color</p>

					<div class="item-options">
						<div>
							<input type="text" class="form-control color-preview"
								ng-style="{'background-color': colorBackground}"
								readonly="readonly"></input> <input colorpicker
								ng-model="colorBackground" type="text">
						</div>
					</div>

					<p class="item-heading">Font Color</p>
					<div class="item-options">
						<div>
							<input type="text" class="form-control color-preview"
								ng-style="{'background-color': colorText}" readonly="readonly"></input>
							<input colorpicker ng-model="colorText" type="text">

						</div>
					</div>
					<p class="item-heading">Font Type</p>
					<div class="item-options">
						<p id="font-type" style="margin: 0">Oswald</p>
						<a role="button" id="font-type-btn" class="edit-link"><i
							class="fa fa-circle fa-fw"></i> Edit</a>
					</div>

					<p class="item-heading">Button Color</p>
					<div class="item-options">
						<div>
							<input type="text" class="form-control color-preview"
								ng-style="{'background-color': colorButtonCreatQuiz}"
								readonly="readonly"></input> <input colorpicker
								ng-model="colorButtonCreatQuiz" type="text">
						</div>
					</div>

					<p class="item-heading">Button Text</p>
					<div class="item-options">
						<input type="text" id="btn-text-input" class="form-control"
							value="" placeholder="Button Text" ng-model="textButtonCreatQuiz">
					</div>




				</div>

				<div class="modal fade" id="edit-modal" tabindex="-1" role="dialog"
					aria-labelledby="edit-modal-label" aria-hidden="true"
					style="display: none;">
					<div id="edit-modal-dialog" class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title text-center">Edit Font Type</h4>
							</div>
							<div class="modal-body">
								<div class="font-types-container">
									<ul class="font-types">
										<li class="font-type" style="background-position: 0px 0px"
											data-option="0" data-name="Proxima Nova"><span
											class="selector"></span></li>
										<li class="font-type" style="background-position: 0px -33px"
											data-option="1" data-name="Ubuntu"><span
											class="selector"></span></li>
										<li class="font-type" style="background-position: 0px -66px"
											data-option="2" data-name="Montserrat"><span
											class="selector"></span></li>
										<li class="font-type selected"
											style="background-position: 0px -99px" data-option="3"
											data-name="Oswald"><span class="selector"></span></li>
										<li class="font-type" style="background-position: 0px -132px"
											data-option="4" data-name="Helvetica"><span
											class="selector"></span></li>
										<li class="font-type" style="background-position: 0px -165px"
											data-option="5" data-name="Lora"><span class="selector"></span></li>
									</ul>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" aria-hidden="true">Close</button>
								<button type="button" id="edit-font-type" class="btn blue-btn">Change
									Font Type</button>
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
					<img alt="Brand"  class="img-rounded img-responsive"
						src="<c:url value='/resources/img/cover-placeholder.jpg'/>" />
				</div>
				<div class="quiz-image" ng-show="$flow.files.length">
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