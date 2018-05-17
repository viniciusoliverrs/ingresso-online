%for item in ingresso:
<form action="/carrinho/insert/{{dado[0]}}/{{item[0]}}" method="POST">
   <tr>
      <td scope="col">{{item[1]}}</td>
      <td scope="col">{{item[3]}}</td>
      <td scope="col"><input type="number" name="quantidade" class="form-control" value="1" style="width: 80px;" /></td>
      <td>
         <button class="btn btn-link"><img class="icones-image" title="Adicionar no carrinho" src="/static/img/shopping-cart.png"/></button>
      </td>
   </tr>
</form>
%end