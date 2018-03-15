%if len(evento) != 0:
	%for item in evento:
		<div class="col-lg-4 col-md-6 mb-4">
			<div class="card h-100">
				<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="/evento/{{item[0]}}">{{item[1]}}</a>
					</h4>
					<p class="card-text">{{item[2]}}</p>
				</div>
			</div>
		</div>
	%end
%else:
	<div class="alert alert-info" role="alert" style="margin: 0 auto;">
		O sistema não possui eventos cadastrados.
	</div>
%end