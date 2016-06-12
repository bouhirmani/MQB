<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-md-8">
	<div class="panel">
		<div class="panel-heading"> Quiz Title & Description</div>
		<div class="panel-body">
			<div flow-init="{singleFile:true}" flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
				<div>
					<img class="img-rounded" flow-img="$flow.files[0]" width="300px" height="150px" id="image" />
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
		</div>
	</div>
	
	<div class="panel">
		<div class="panel-heading"> Quiz Results</div>
		<div class="panel-body">
			<div ng-repeat="result in results">
				<div class="panel panel-primary">
					<div class="panel-heading"> Result 1</div>
					<div class="panel-body">
						<div class="col-md-4">
							<img class="img-rounded" width="200px" height="150px" />	
						</div>
						<div class="col-md-7">
							<input type="text" class="form-control" placeholder="Results Title" name=""/>
							<textarea class="form-control" rows="5" placeholder="Description"></textarea>
						</div>
					</div>
				</div>
				<button class="remove" ng-show="$last" ng-click="removeResult()">-</button>
			</div>
		<button type="button" class="btn btn-sm btn-primary" ng-click="addNewResult()"><span class="fa fa-plus"></span> Add Results</button>
		</div>
	</div>
	
	
</div>
<div class="col-md-4">
</div>