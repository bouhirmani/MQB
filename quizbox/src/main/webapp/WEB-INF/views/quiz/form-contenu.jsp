<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div ng-controller="ContenuCtrl" >
<div class="container" style="background-color: rgba(0, 0, 0, 0.04);">
<div class="col-md-8">
	 <fieldset id="myFieldset">
		<legend>Quiz Title & Description</legend> 
		<div class="panel">
			<div class="panel-body">
		<div class="col-md-4">
			<div flow-init="{singleFile:true}" flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
				<div>
					<img src="<c:url value='/resources/img/image.png'/>" class="img-rounded" flow-img="$flow.files[0]" width="200px" height="110px" />
				</div>
				<div class="spacer"></div>
				<div>
					<button class="btn btn-primary btn-xs btn-round" ng-show="!$flow.files.length" flow-btn>
						<span class="fa fa-pencil-square-o"></span>
					</button>
					<button class="btn btn-info btn-xs btn-round" ng-show="$flow.files.length" flow-btn>
						<span class="fa fa-pencil-square-o"></span>
					</button>
					<button type="button" class="btn btn-danger btn-xs btn-round" ng-show="$flow.files.length" ng-click="$flow.cancel()">
						<span class="fa fa-trash-o"></span>
					</button>
				</div>
			</div>
		</div>
		<div class="col-md-7">
			<input type="text" class="form-control" placeholder="Results Title" name="" ng-model="result.title"/>
			<div class="spacer"></div>
			<textarea class="form-control" ui-tinymce="optionsTinyMce" rows="5" placeholder="Description" ng-model="result.description"></textarea>
		</div>
		</div>
		</div>
	</fieldset>
	<div class="spacer2"></div>
	 <fieldset>
		<legend>Quiz Results</legend>
			<div ng-repeat="result in results">
				<div class="panel">
					<div class="panel-heading">Result {{$index + 1}}
						<button class="remove pull-right" ng-click="removeResult($index)">-</button>
					</div>
					<div class="panel-body">
						<div class="col-md-4">
							<div flow-init="{singleFile:true}" flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
								<div>
									<img src="<c:url value='/resources/img/image.png'/>"
										 class="img-rounded"  class="img-rounded" flow-img="$flow.files[0]" width="200px" height="110px" ng-model="result.image" />
								</div>
								<div class="spacer"></div>
								<div>
									<button class="btn btn-primary btn-xs btn-round" ng-show="!$flow.files.length" flow-btn>
										<span class="fa fa-pencil-square-o"></span>
									</button>
									<button class="btn btn-info btn-xs btn-round" ng-show="$flow.files.length" flow-btn>
										<span class="fa fa-pencil-square-o"></span>
									</button>
									<button type="button" class="btn btn-danger btn-xs btn-round" ng-show="$flow.files.length" ng-click="$flow.cancel()">
										<span class="fa fa-trash-o"></span>
									</button>
								</div>
							</div>
						</div>
						<div class="col-md-7">
							<input type="text" class="form-control" placeholder="Results Title" name="" ng-model="result.title"/>
							<div class="spacer"></div>
							<textarea class="form-control" ui-tinymce="optionsTinyMce" rows="5" placeholder="Description" ng-model="result.description"></textarea>
						</div>
					</div>
				</div>
			</div>
		<button type="button" class="btn btn-sm btn-danger" ng-click="addNewResult()"><span class="fa fa-plus"></span> Add Result</button>
	</fieldset>
<div class="spacer2"></div>
	<fieldset>
		<legend>Quiz Questions</legend>
			<div ng-repeat="question in questions">
				<div class="panel">
					<div class="panel-heading"> Question {{$index + 1}} 
					<button class="remove pull-right" ng-click="removeQuestion($index)">-</button>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-8">
								<a class="btn btn-default btn-sm" ng-click="removeImage($index)" 
									ng-class="{active: question.image == false}"><span class="fa fa-pencil"></span>text</a>
								<a class="btn btn-default btn-sm" ng-click="addImage($index)" 
									ng-class="{active: question.image == true}"><span class="fa fa-picture-o"></span>image</a>
							</div>
							<div class="col-md-6">
								<div class="thumbnail">
									<div class="caption">
										<input type="text" class="form-control" placeholder="Question Title" name="" 
											ng-model="question.title"/>
										<div ng-show="question.image">
											<div flow-init="{singleFile:true}" flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
												<div>
													<img src="<c:url value='/resources/img/image.png'/>" class="img-rounded" class="img-rounded" flow-img="$flow.files[0]" width="200px" height="110px" ng-model="question.image" />
												</div>
												<div class="spacer"></div>
												<div>
													<button class="btn btn-primary btn-xs btn-round" ng-show="!$flow.files.length" flow-btn>
														<span class="fa fa-pencil-square-o"></span>
													</button>
													<button class="btn btn-info btn-xs btn-round" ng-show="$flow.files.length" flow-btn>
														<span class="fa fa-pencil-square-o"></span>
													</button>
													<button type="button" class="btn btn-danger btn-xs btn-round" ng-show="$flow.files.length" ng-click="$flow.cancel()">
														<span class="fa fa-trash-o"></span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-10">
								<a class="btn btn-default btn-sm" ng-click="removeAnswerImage($index)" 
									ng-class="{active: question.answers[0].image == false}"><span class="fa fa-pencil"></span>text</a>
								<a class="btn btn-default btn-sm" ng-click="addAnswerImage($index)" 
									ng-class="{active: question.answers[0].image == true}"><span class="fa fa-picture-o"></span>image</a>
							</div>
							<div class="col-md-4 col-sm-6" ng-repeat="answer in question.answers">
									<div class="thumbnail">
										<div class="caption">
											<div ng-show="question.answers[0].image">
												<div flow-init="{singleFile:true}" flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
													<div>
														<img src="<c:url value='/resources/img/image.png'/>" class="img-rounded" class="img-rounded" flow-img="$flow.files[0]" width="200px" height="110px" ng-model="answer.image" />
													</div>
													<div>
														<button class="btn btn-danger btn-xs btn-round" ng-show="!$flow.files.length" flow-btn>
															<span class="fa fa-pencil-square-o"></span>
														</button>
														<button class="btn btn-info btn-xs btn-round" ng-show="$flow.files.length" flow-btn>
															<span class="fa fa-pencil-square-o"></span>
														</button>
														<button type="button" class="btn btn-danger btn-xs btn-round" ng-show="$flow.files.length" ng-click="$flow.cancel()">
															<span class="fa fa-trash-o"></span>
														</button>
													</div>
												</div>
											</div>
											<textarea class="form-control" ui-tinymce="optionsTinyMce" rows="2" placeholder="Answer {{answer.id}}" ng-model="answer.title"></textarea>
											<div class="form-group">
												<label class="form-label">Results correlations</label>
												<select class="form-control" ng-model="result"
														ng-options="result.title for result in results track by result.id">
												</select>
											</div>
										</div>
									</div>
							</div>
							<a class="btn btn-sm btn-default" ng-click="addAnswer($index)"><span class="fa fa-plus"></span>Add Answer</a>
						</div>
					</div>
				</div>
			</div>
		<button type="button" class="btn btn-sm btn-danger" ng-click="addNewQuestion()"><span class="fa fa-plus"></span> Add Question</button>
	</fieldset>
</div>
</div>
</div>