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
							<th scope="col" colspan="2" style="text-align:right;">#</th>
							<th scope="col">Descrição</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						%for item in dado:
						<tr>
							<td scope="col">
								<a href="/evento/{{item[0]}}"><img class="card-img-top mx-auto d-block" style="width: 100px;height: 50px;background-color:#C0C0C0;" src="/Eventos/{{item[0]}}/banner.jpg" alt=""></a>
							</td>
							%for cel in item:
							<td scope="col">{{cel}}</td>
							%end
							<td>
								<a href="/evento/upload/{{item[0]}}" class="btn btn-primary">Upload</a>
								<a href="/evento/edit/{{item[0]}}" class="btn btn-warning">Editar</a>
								<button type="button" class="btn btn-danger" data-toggle="modal" data-target=".bd-example-modal-sm">Excluir</button>
							</td>
						</tr>
						%end
					</tbody>
				</table>
			</div>
			<div class="col-md-3"></div>
			%else:
				<div class="alert alert-warning" role="alert">
			  		Você não possui eventos cadastrados.
				</div>
			%end
		</div>
	</div>

<!-- Small modal -->


<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
    	<p>
    		Deseja excluir esse evento?
    	</p>
      <a href="/evento/delete/{{item[0]}}" class="btn btn-danger">Sim</a>
   </div>
</div>