% rebase('view/base.tpl', title='Register')
<form class="form-horizontal" role="form" method="POST" action="/evento/insert">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Criar evento:</h2>
                    <hr/>
                </div>
            </div>
    <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group has-danger">
                        <label>Titulo</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="titulo" class="form-control" required autofocus/>
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Categoria</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <select class="form-control" name="categoria_id">
                                %for item in categoria:
                                    <option value="{{item[0]}}">{{item[1]}}</option>
                                %end
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Descrição</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <textarea name="descricao" class="form-control" required>
                                
                            </textarea>   
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Endereço/Numero</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="endereco" class="form-control" required/>   
                            <input type="number" name="numero" style="width:100px;" required/>
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Cidade</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <select name="cidade_id" class="form-control">
                                %for item in cidade:
                                    <option value="{{item[0]}}">{{item[1]}} | {{item[2]}}</option>
                                %end
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Bairro</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="bairro" class="form-control" required/>  
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Telefone</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="text" name="telefone" class="form-control" required/> 
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row" style="padding-top: 1rem">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <a href="#" class="btn btn-secondary btn-sm" onclick="window.history.go(-1)">Cancelar</a>
                    <button class="btn float-md-right btn-sm btn-success">Criar</button>
                </div>
                <div class="col-md-3"></div>
            </div>
    </div>                    
 </form>