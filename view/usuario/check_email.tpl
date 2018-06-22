% rebase('view/base.tpl', title='Esqueci minha senha')
<form class="form-horizontal" role="form" method="POST" action="/usuario/forgot_password">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Recuperar a senha</h2>
                    <hr>
                </div>
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
            <div class="row" style="padding-top: 1rem">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <a href="/usuario/register" class="btn btn-link">Criar conta</a>
                    <button class="btn btn-success float-md-right">Enviar</button>
                </div>
                <div class="col-md-4"></div>
            </div>
 </form>