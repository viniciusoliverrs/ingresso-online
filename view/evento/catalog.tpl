% rebase('./view/base.tpl',title='Catalog')
%description = ''
%sizeMax = 30
<div class="row">
	<div class="col-lg-12">
		<h1 class="my-4">Search</h1>
		<select class="form-control btn-secondary" name="categoria">
		   %for item in categoria:
		   <option value="{{item[0]}}">{{item[1]}}</option>
		   %end
		</select>
	</div>
</div>
<div class="row" style="margin: 25px;">
		%if len(evento) != 0:
			%for item in evento:
				<div class="col-lg-3 col-md-5 mb-3">
					<div class="card h-100">
						<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="/evento/{{item[0]}}">{{item[1]}}</a>
							</h4>
							%description = item[2]
							%if len(description) > sizeMax:
							%description = description[0:sizeMax]
							%end
							<p class="card-text" title="{{item[2]}}">{{description}}</p>
						</div>
					</div>
				</div>
			%end
		%else:
			<div class="alert alert-info" role="alert" style="margin: 0 auto;">
				Nenhum evento encontrado.
			</div>
		%end
</div>