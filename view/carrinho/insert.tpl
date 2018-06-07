%for item in ingresso:

	<h3 viclass="text-center"><img class="icones-image" src="/static/img/shopping-cart.png" />Carrinho</h3>
	<form action="/carrinho/insert/{{dado[0]}}/{{item[0]}}" method="POST">
		<table class="table" id="listIngresso">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Tipo</th>
					<th scope="col">Preço</th>
					<th scope="col">Quantidade</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
			   <tr>
			      <td scope="col">{{item[1]}}</td>
			      <td scope="col">{{item[3]}}</td>
			      <td scope="col"><input type="number" name="quantidade" class="form-control" value="1" style="width: 80px;" /></td>
			      <td>
			         <button class="btn btn-info">Adicionar</button>
			      </td>
			   </tr>
			</tbody>
		</table>
	</form>
%end