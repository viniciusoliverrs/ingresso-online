%if usuario_id > 0:
<div class="list-group">
   <span class="list-group-item list-group-item-action active">Logado</span>
   <a class="list-group-item" href="/usuario/profile">Perfil</a>
   <a class="list-group-item" href="/ingresso">Meu ingresso</a>
   <a class="list-group-item" href="/evento">Meu evento</a>
   <a class="list-group-item" href="/carrinho">Meu carrinho</a>
   <a class="list-group-item" href="/logout">Sair</a>
</div>
%else:
<div class="list-group">
   <a class="list-group-item" href="/login">Entrar</a>
</div>
%end