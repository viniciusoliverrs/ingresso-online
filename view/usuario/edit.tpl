% rebase('view/base.tpl', title='Edit')
<form class="form-horizontal" role="form" method="POST" action="/usuario/edit">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Editar conta:</h2>
                    <hr/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Nome:</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="nome" class="form-control" value="{{dado[0]}}" required>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label >Email</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="email" name="email" class="form-control" value="{{dado[1]}}" required>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
            <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Cpf</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="cpf" class="form-control" value="{{dado[2]}}" required>
                        </div>
                    </div>
                </div>
            <div class="col-md-4"></div>
            </div>
            <div class="row">
            <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Telefone</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="telefone" class="form-control" value="{{dado[3]}}" required>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            </div>
            <div class="row" style="padding-top: 1rem">
            	<div class="col-md-4"></div>
                <div class="col-md-4">
                    <a href="#" class="btn btn-secondary btn-sm" onclick="window.history.go(-1)">Cancelar</a>
                    <button class="btn float-md-right btn-sm btn-success">Salvar</button>
                </div>
                <div class="col-md-4"></div>
            </div>
 </form>