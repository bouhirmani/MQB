<label>What's Your Console of Choice?</label>
<div class="form-group">
    <div class="radio">
        <label>
           <input type="radio" ng-model="formData.type" value="xbox" checked>
           I like XBOX
        </label>
    </div>
    <div class="radio">
        <label>
            <input type="radio" ng-model="formData.type" value="ps">
            I like PS4
        </label>
    </div>
</div>

<div class="form-group row">
<div class="col-xs-6 col-xs-offset-3">
    <a ui-sref="form.contenu" class="btn btn-block btn-info">
    Next Section <span class="glyphicon glyphicon-circle-arrow-right"></span>
    </a>
</div>
</div>