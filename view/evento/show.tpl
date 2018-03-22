% rebase('view/base.tpl', title='Ver evento')
<div class="row">
        <div class="col-md-12">
               <img src="" style="width:100%;height:300px;" href="#" alt="Aqui vai ter uma imagem" />
         	<hr/>
        </div>
    </div>
    <div class="row">
		<div class="col-md-12">
				<table class="table table-striped">
					<tbody>
						<tr>
							<td>Titulo</td>
							<td>{{dado[1]}}</td>
						</tr>
						<tr>
							<td>Categoria</td>
							<td>{{dado[3]}}</td>
						</tr>
						<tr>
							<td>Descrição:</td>
							<td>{{dado[2]}}</td>
						</tr>
						<tr>
							<td>Estado:</td>
							<td>{{dado[9]}}</td>
						</tr>
						<tr>
							<td>Cidade:</td>
							<td>{{dado[8]}}</td>
						</tr>
						<tr>	
							<td>Bairro:</td>
							<td>{{dado[6]}}</td>
						</tr>
						<tr>
							<td>Endereço:</td>
							<td>{{dado[4]}} Nº-{{dado[5]}}</td>
						</tr>
						<tr>
							<td>Telefone:</td>
							<td>{{dado[7]}}</td>
						</tr>
					</tbody>
				</table>
		</div>    	
    </div>
    <div class="row">
		<div class="col-md-12">
			%if len(ingresso) != 0:
				<table class="table" id="listIngresso">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Tipo</th>
							<th scope="col">Preço</th>
							<th scope="col">Quantidade</th>
							<th scope="col">Subtotal</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						%include('./view/carrinho/insert.tpl')
					</tbody>
				</table>

			%else:
				<div class="alert alert-info" role="alert">
			  		Nenhum ingresso disponivel.
				</div>
			%end
	</div>
</div>