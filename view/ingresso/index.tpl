% rebase('./view/base.tpl',title='Meus ingressos')
<div class="row">
    <div class="col-md-3"></div>
        <div class="col-md-6">
                    <h2 class="text-center">Meus ingressos:</h2>
         	<hr/>
        </div>
    </div>
	<div class="row">
		<div class="col-md-3"></div>
			<div class="col-md-6">
				<a href="/ingresso/insert" class="btn btn-success">Adicionar</a>
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
							<th scope="col">Tipo</th>
							<th scope="col">Unidade</th>
							<th scope="col">Preco</th>
							<th scope="col">Evento</th>
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
								<a href="/ingresso/edit/{{item[0]}}" class="btn btn-warning">Editar</a>
								<a href="/ingresso/delete/{{item[0]}}"class="btn btn-danger">Excluir</a>
							</td>
						</tr>
						%end
					</tbody>
				</table>
			</div>
			<div class="col-md-3"></div>
			%else:
				<div class="alert alert-warning" role="alert">
			  		Você não possui ingressos cadastrados no sistema.
				</div>
			%end
		</div>
	</div>