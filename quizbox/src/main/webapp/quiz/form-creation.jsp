
<!-- Page Content -->
<div class="row" ng-app="myApp">
	<div class="col-sm-8 col-sm-offset-2">
		<div id="form-container">
			<div class="page-header text-center">
				<h2>Quiz Box</h2>
				<div id="status-buttons" class="text-center">
					<a ui-sref-active="active" ui-sref=".debut"><span>1</span>
						DEBUT</a> <a ui-sref-active="active" ui-sref=".contenu"><span>2</span>
						CONTENU</a> <a ui-sref-active="active" ui-sref=".publication"><span>3</span>
						PUBLICATION</a>
				</div>
			</div>
			<div class="row">
				<form id="signup-form" ng-submit="processForm()">
					<div id="form-views" ui-view></div>
				</form>
			</div>
			<!-- 	        /.row -->

			<!-- 	        Portfolio Item Row -->
			<!-- 	        <div class="row"> -->
			<!-- 	            <div class="col-md-3"> -->
			<!-- 	                <div class="form-group"> -->
			<!-- 	                	<label>Couleur de l'arrière plan</label> -->
			<!-- 						<input class="form-control jscolor" value="ab2567"></input> -->
			<!-- 				 	</div> -->
			<!-- 				 	<div class="form-group"> -->
			<!-- 					 	<label>Photo de couverture</label> -->
			<!-- 				 		<button type="button" class="btn btn-primary">Upload</button> -->
			<!-- 	            	</div> -->
			<!-- 	            </div> -->
			<!-- 	            <div class="col-md-8"> -->
			<!-- 	                <h3></h3> -->
			<!-- 	                <p></p> -->
			<!-- 	                <h3></h3> -->
			<!-- 	                <ul> -->
			<!-- 	                    <li></li> -->
			<!-- 	                    <li></li> -->
			<!-- 	                    <li></li> -->
			<!-- 	                    <li></li> -->
			<!-- 	                </ul> -->
			<!-- 	            </div> -->
			<!-- 	        </div> -->
			<!-- 	        /.row -->
		</div>
<pre>
    {{ formData }}
 </pre>
	</div>
</div>

