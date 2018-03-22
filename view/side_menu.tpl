%if usuario_id > 0:
<div class="list-group">
   <span class="list-group-item list-group-item-action active">Logado</span>
   <a class="list-group-item" href="/usuario/profile">Perfil</a>
   <a class="list-group-item" href="/ingresso">Meus ingressos</a>
   <a class="list-group-item" href="/evento">Meus eventos</a>
   <a class="list-group-item" href="/carrinho">Meu carrinho</a>
   <a class="list-group-item" href="/logout">Sair</a>
</div>
%else:
<div class="list-group">
   <a class="list-group-item" href="/login">Entrar</a>
</div>
%end
<h1 class="my-4">Search</h1>
<select class="form-control btn-secondary" name="categoria">
   %for item in categoria:
   <option value="{{item[0]}}">{{item[1]}}</option>
   %end
</select>