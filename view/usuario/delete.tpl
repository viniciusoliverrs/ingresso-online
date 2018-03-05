% rebase('./view/base.tpl', title='Delete')
<form action="/usuario/delete" method="post">
	<div class="row">
	    <div class="col-md-3"></div>
	        <div class="col-md-6">
	        	<div class="alert alert-warning" role="alert">
	            	<h2 class="text-center">Tem certeza que deseja remover a conta <strong>{{dados[0].upper()}}</strong>? </h2>
	                <hr/>
	                <p>
		    			<a href="/" class="btn btn-success btn-lg btn-block">Não</a>
		    			<button class="btn btn-danger btn-lg btn-block">Sim</button>   	
		    		</p>
	            </div>
	        </div>
	    </div>
	</div>
</form>
