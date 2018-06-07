% rebase('./view/base.tpl',title='Catalog')
%description = ''
%sizeMax = 30
<div class="col-lg-12">
	%include('./view/search.tpl')
</div>
<div class="row" style="padding: 20px;">
		%if len(evento) != 0:
			%for item in evento:
				<div class="col-lg-3 col-md-5 mb-3">
					<div class="card h-100">
						<a href="#"><img class="card-img-top mx-auto d-block" style="width: 100px;height: 100px;" src="/Eventos/{{item[0]}}/banner.jpg" alt=""></a>
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