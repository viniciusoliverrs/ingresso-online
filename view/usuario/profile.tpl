% rebase('./view/base.tpl', title='Minha Conta')
<div class="row">
	<div class="col-md-3"></div>
		<div class="col-md-6">
			<h2 class="text-center">Minha Conta:</h2>
		<hr/>
	</div>
</div>
<table class="table">
	<thead>
		<tr>
			<td>Nome</td>
			<td>Email</td>
			<td>Cpf</td>
			<td>Telefone</td>
		</tr>
	</thead>
		<tr>
			%for item in dado:
				<td>{{item}}</td>
			%end
		</tr>
		<tr>
			<td><a href="/usuario/edit" class="btn btn-info">Edit</a></td>	
			<td><a href="/usuario/reset" class="btn btn-secondary">Redefinir senha</a></td>
			<td></td>
			<td><a href="/usuario/delete" class="btn btn-danger">Apagar a conta</a></td>			
		</tr>
	</tbody>
</table>