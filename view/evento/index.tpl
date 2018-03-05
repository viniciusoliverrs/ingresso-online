 % rebase('./view/base.tpl',title='Meus ingressos')
<div class="row">
    <div class="col-md-3"></div>
        <div class="col-md-6">
                    <h2 class="text-center">Meus eventos:</h2>
         	<hr/>
        </div>
    </div>
	<div class="row">
		<div class="col-md-3"></div>
			<div class="col-md-6">
				<a href="/evento/insert" ><img class="icones-image" title="Adicionar" src="/static/img/add.png"/></a>
		    </div>
	    <div class="col-md-3"></div>
	</div>
	<div class="row" style="margin-top:10px;">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			%if len(dado) != 0:
			<div class="table-responsive">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Descrição</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						%for item in dado:
						<tr>
							%for cel in item:
							<td scope="col">{{cel}}</td>
							%end
							<td>
								<a href="/evento/edit/{{item[0]}}"><img class="icones-image" title="Editar" src="/static/img/edit.png"/></a>
								<a href="/evento/delete/{{item[0]}}"><img class="icones-image" title="Excluir" src="/static/img/remove.png"/></a>
							</td>
						</tr>
						%end
					</tbody>
				</table>
			</div>
			<div class="col-md-3"></div>
			%else:
				<div class="alert alert-warning" role="alert">
			  		Você não possui eventos cadastrados no sistema.
				</div>
			%end
		</div>
	</div>