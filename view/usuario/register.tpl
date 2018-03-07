% rebase('view/base.tpl', title='Register')
<form class="form-horizontal" role="form" method="POST" action="/usuario/register">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Criar conta:</h2>
                    <hr/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Nome:</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="nome" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>            
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group has-danger">
                        <label>E-Mail</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="email" name="email" class="form-control" id="email" placeholder="you@example.com" required autofocus>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Senha</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="password" name="senha" class="form-control" id="password" placeholder="*********" required>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Repita a senha:</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="password" name="senha2" class="form-control" id="password" placeholder="*********" required>
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
                            <input type="text" name="cpf" class="form-control" required>
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
                            <input type="text" name="telefone" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row" style="padding-top: 1rem">
            	<div class="col-md-4"></div>
                <div class="col-md-4">
                    <a href="#" class="btn btn-secondary" onclick="window.history.go(-1)">Voltar</a>
                    <button class="btn float-md-right btn-success">Criar</button>
                </div>
                <div class="col-md-4"></div>
            </div>
 </form>