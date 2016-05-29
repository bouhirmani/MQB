<div class="col-md-6">                        
<!-- START JUSTIFIED TABS -->
    <div class="panel panel-default tabs">
        <ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#tab8" data-toggle="tab">First</a></li>
            <li><a href="#tab9" data-toggle="tab">Second</a></li>
            <li><a href="#tab10" data-toggle="tab">Third</a></li>
        </ul>
        <div class="panel-body tab-content">
            <div class="tab-pane active" id="tab8">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum dolor sem, quis pharetra dui ultricies vel. Cras non pulvinar tellus, vel bibendum magna. Morbi tellus nulla, cursus non nisi sed, porttitor dignissim erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc facilisis commodo lectus. Vivamus vel tincidunt enim, non vulputate ipsum. Ut pellentesque consectetur arcu sit amet scelerisque. Fusce commodo leo eros, ut eleifend massa congue at.</p>
            </div>
            <div class="tab-pane" id="tab9">
                <p>Donec tristique eu sem et aliquam. Proin sodales elementum urna et euismod. Quisque nisl nisl, venenatis eget dignissim et, adipiscing eu tellus. Sed nulla massa, luctus id orci sed, elementum consequat est. Proin dictum odio quis diam gravida facilisis. Sed pharetra dolor a tempor tristique. Sed semper sed urna ac dignissim. Aenean fermentum leo at posuere mattis. Etiam vitae quam in magna viverra dictum. Curabitur feugiat ligula in dui luctus, sed aliquet neque posuere.</p>
            </div>
            <div class="tab-pane" id="tab10">
                <p>Vestibulum cursus augue sed leo tempor, at aliquam orci dictum. Sed mattis metus id velit aliquet, et interdum nulla porta. Etiam euismod pellentesque purus, in fermentum eros venenatis ut. Praesent vitae nibh ac augue gravida lacinia non a ipsum. Aenean vestibulum eu turpis eu posuere. Sed eget lacus lacinia, mollis urna et, interdum dui. Donec sed diam ut metus imperdiet malesuada. Maecenas tincidunt ultricies ipsum, lobortis pretium dolor sodales ut. Donec nec fringilla nulla. In mattis sapien lorem, nec tincidunt elit scelerisque tempus.</p>
            </div>                        
        </div>
    </div>                                         
<!-- END JUSTIFIED TABS -->
</div>

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