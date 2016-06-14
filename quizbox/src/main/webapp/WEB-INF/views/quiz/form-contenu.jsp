<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-md-8" ng-controller="ContenuCtrl" style="background-color: rgba(158, 158, 158, 0.16);">
	 <fieldset  id="myFieldset">
		<legend>Quiz Title & Description</legend> 
		<div flow-init="{singleFile:true}" flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
			<div>
				<img class="img-rounded" flow-img="$flow.files[0]" width="200px" height="100px" id="image" />
			</div>
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
	</fieldset>
	 <fieldset>
		<legend>Quiz Results</legend>
			<div ng-repeat="result in results">
				<div class="panel">
					<div class="panel-heading"> Result {{$index + 1}}</div>
					<div class="panel-body">
						<div class="col-md-4">
							<img class="img-rounded" width="200px" height="150px" ng-model="result.image" />	
						</div>
						<div class="col-md-7">
							<input type="text" class="form-control" placeholder="Results Title" name="" ng-model="result.title"/>
							<textarea class="form-control" rows="5" placeholder="Description" ng-model="result.description"></textarea>
						</div>
					</div>
				</div>
				<button class="remove" ng-click="removeResult($index)">-</button>
			</div>
		<button type="button" class="btn btn-sm btn-primary" ng-click="addNewResult()"><span class="fa fa-plus"></span> Add Result</button>
	</fieldset>
	
	<fieldset>
		<legend>Quiz Questions</legend>
			<div ng-repeat="question in questions">
				<div class="panel">
					<div class="panel-heading"> Question {{$index + 1}}</div>
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
											<img class="img-rounded" width="200px" height="150px" ng-model="question.image" />	
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
												<img class="img-rounded" width="200px" height="150px" ng-model="answer.image" />
											</div>
											<textarea class="form-control" rows="2" placeholder="Answer {{answer.id}}" ng-model="answer.title"></textarea>
										</div>
									</div>
							</div>
							<a class="btn btn-sm btn-default" ng-click="addAnswer($index)"><span class="fa fa-plus"></span>Add Answer</a>
						</div>
					</div>
				</div>
				<button class="remove" ng-click="removeQuestion($index)">-</button>
			</div>
		<button type="button" class="btn btn-sm btn-primary" ng-click="addNewQuestion()"><span class="fa fa-plus"></span> Add Question</button>
	</fieldset>
</div>
<div class="col-md-4">
</div>