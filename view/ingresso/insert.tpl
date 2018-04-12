% rebase('view/base.tpl', title='Register')
<form class="form-horizontal" role="form" method="POST" action="/ingresso/insert">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Criar ingresso:</h2>
                    <hr/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Tipo</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="tipo" class="form-control" required autofocus/>
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
                            <input type="number" name="quantidade" class="form-control" required/>
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
                            <div class="input-group-prepend"><span class="input-group-text">R$:</span></div>
                                <input type="text" name="preco" class="form-control text-right mask-money" />
                            </div>
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
                        %if len(evento) != 0:
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <select class="form-control" name="evento_id">
                                    %for item in evento:
                                        <option value="{{item[0]}}">{{item[1]}}</option>
                                    %end
                                </select>
                        </div>
                        %else:
                            <div class="alert alert-warning" role="alert">
                                Você não possui eventos cadastrados no sistema.
                            </div>
                        %end
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row" style="padding-top: 1rem">
            	<div class="col-md-4"></div>
                <div class="col-md-4">
                    <a href="#" class="btn btn-secondary" onclick="window.history.go(-1)">Voltar</a>
                    %if len(evento) != 0:
                    <button class="btn float-md-right btn-success">Criar</button>
                    %end
                </div>
                <div class="col-md-4"></div>
            </div>
 </form>