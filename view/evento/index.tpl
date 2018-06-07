 % rebase('./view/base.tpl',title='Meus eventos')
<div class="row">
        <div class="col-md-12">
                    <h2 class="text-center">Meus eventos:</h2>
         	<hr/>
        </div>
    </div>
	<div class="row">
		<div class="col-md-3"></div>
			<div class="col-md-6">
				<a href="/evento/insert" class="btn btn-success">Adicionar</a>
				<a href="/evento/upload" class="btn btn-primary">Upload imagem</a>
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
								<a href="/evento/edit/{{item[0]}}" class="btn btn-warning">Editar</a>
								<a href="/evento/delete/{{item[0]}}" class="btn btn-danger">Excluir</a>
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