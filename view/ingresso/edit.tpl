% rebase('view/base.tpl', title='Editar')
<form class="form-horizontal" role="form" method="POST" action="/ingresso/edit/{{dado[0]}}">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Editar ingresso:</h2>
                    <hr/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group has-danger">
                        <label>Tipo</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="tipo" class="form-control" value="{{dado[1]}}" required autofocus/>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Quantidade</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="number" name="quantidade" class="form-control" value="{{dado[2]}}" required/>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Preço</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="preco" class="form-control" value="{{dado[3]}}" required/>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Evento</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <select class="form-control" name="evento_id">
                                <option value="{{dado[4]}}">{{dado[5]}}</option>
                                %for item in evento:
                                    %if item[0] != dado[4] and item[1] != dado[5]:
                                    <option value="{{item[0]}}">{{item[1]}}</option>
                                    %end
                                %end
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row" style="padding-top: 1rem">
            	<div class="col-md-4"></div>
                <div class="col-md-4">
                    <a href="#" class="btn btn-secondary" onclick="window.history.go(-1)">Voltar</a>
                    <button class="btn float-md-right btn-success">Salvar</button>
                </div>
                <div class="col-md-4"></div>
            </div>
 </form>