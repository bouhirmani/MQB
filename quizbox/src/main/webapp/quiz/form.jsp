<!-- Page Content -->
<div class="container">
	<div class="col-sm-12">
		<div id="form-container">
			<div class="page-header text-center">
				<h2>Quiz Box</h2>
				<div id="status-buttons" class="text-center">
					<a ui-sref-active="active" ui-sref="debut"><span>1</span> DEBUT</a> 
					<a ui-sref-active="active" ui-sref="contenu"><span>2</span> CONTENU</a>
					 <a ui-sref-active="active" ui-sref="publication"><span>3</span> PUBLICATION</a>
				</div>
			</div>
			<div class="row">
				<form id="signup-form" ng-submit="processForm()">
					<div id="form-views" ui-view></div>
				</form>
			</div>
		</div>
<pre>
    {{ formData }}
</pre>
	</div>
</div>