<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="edit-container">
	<div class="col-md-4">
		<div id="customize-btns">
			<div class="customize-btns">
				<div id="customize-options">
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
					<div class="item-options">
						<a role="button" class="edit-link cover-btn"><i
							class="fa fa-circle fa-fw"></i> Edit</a> <a role="button"
							class="edit-link remove-cover-btn"><i
							class="fa fa-circle fa-fw"></i> Remove</a>
					</div>

					<p class="item-heading">Background Color</p>
					<div class="item-options">
						<div>
							<input id="styleInputBg"
								class="form-control jscolor {valueElement:'valueInputBg', styleElement:'styleInputBg' , hash:true} color-preview"></input>
							<input id="valueInputBg" ng-model="colorBackground"></input>
						</div>
					</div>

					<p class="item-heading">Font Color</p>
					<div class="item-options">
						<div>
							<input id="styleInputFont"
								class="form-control jscolor {valueElement:'valueInputFont', styleElement:'styleInputFont' , hash:true} color-preview"></input>
							<input id="valueInputFont" ng-model="colorText"></input>
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
							<input id="styleInputButton"
								class="form-control jscolor {valueElement:'valueInputButton', styleElement:'styleInputButton' , hash:true} color-preview"></input>
							<input id="valueInputButton" ng-model="colorButtonCreatQuiz"
								value="#db2f2f"></input>
						</div>
					</div>

					<p class="item-heading">Button Text</p>
					<div class="item-options">
						<input type="text" id="btn-text-input" class="form-control"
							value="" placeholder="Button Text"
							ng-model="colorTextButtonCreatQuiz">
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
	<div class="col-md-8">
		<div class="module-container">
			<div class="quiz-content">
				<div id="app-content" style="color: #609c3a">
					<div class="start-container"
						ng-style="{'color': colorText, 'background-color': colorBackground}">
						<h1 class="quiz-title">Untitled Quiz</h1>
						<div id="app-image">
							<div class="quiz-image">
								<img alt="Brand"
									src="<c:url value='/resources/img/cover-placeholder.jpg' />" />
							</div>
						</div>
						<h2 class="quiz-subtitle">The description for your quiz will
							go here.</h2>
						<a class="start-app" role="button"
							ng-style="{'background-color': colorButtonCreatQuiz}">{{colorTextButtonCreatQuiz}}</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>










