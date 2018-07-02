<h3 viclass="text-center"><img class="icones-image" src="/static/img/shopping-cart.png" />Carrinho</h3>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Tipo</th>
					<th scope="col">Preço Unitário</th>
					<th scope="col">Quantidade</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
			%for item in ingresso:
				<form action="/carrinho/insert/{{dado[0]}}/{{item[0]}}" method="POST">
				   <tr>
				      <td scope="col">{{item[1]}}</td>
				      <td scope="col">{{item[3]}}</td>
				      <td scope="col"><input type="number" name="quantidade" class="form-control" value="1" style="width: 80px;" /></td>
				      <td>
				         <button class="btn btn-info">Adicionar</button>
				      </td>
				   </tr>
				</form>
			%end
			</tbody>
		</table>
	