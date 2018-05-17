<form method="post" action="/list-event">
<br/>
<select class="form-control btn-secondary" name="categoria_id">
	%for item in categoria:
		<option value="{{item[0]}}">{{item[1]}}</option>
	%end
</select>
<br/>
<select name="cidade_id" class="form-control btn-secondary">
	%for item in cidade:
		<option value="{{item[0]}}">{{item[2]}} | {{item[1]}}</option>
	%end
</select>
<p>
	<button class="btn btn-primary" style="float:right; margin-top: 10px;">Buscar</button>	
</p>
</form>