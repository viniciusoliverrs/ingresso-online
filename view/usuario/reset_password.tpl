% rebase('view/base.tpl', title='Reset password')
<form class="form-horizontal" role="form" method="POST" action="/usuario/reset">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Nova senha:</h2>
                    <hr/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Senha atual:</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="password" name="senha_atual" class="form-control" id="password" placeholder="*********" required>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Nova Senha</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="password" name="nova_senha" class="form-control" id="password" placeholder="*********" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Repita a nova Senha</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="password" name="nova_senha2" class="form-control" id="password" placeholder="*********" required>
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