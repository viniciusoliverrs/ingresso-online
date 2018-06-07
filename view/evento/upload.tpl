% rebase('view/base.tpl', title='Upload')
<form class="form-horizontal" action="/evento/upload" method="POST"  enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Upload de imagem:</h2>
                    <h4  class="text-center">
                        Tamanho da imagem ideal 700x300<br/>
                        Formato permitida somente <strong>[jpg]</strong></h4>
                    <hr/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group has-danger">
                        <label>Escolha uma capa para o evento</label>
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                            <input type="file" name="upload" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Eventos</label>
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
                    <button class="btn float-md-right btn-primary">Salvar</button>
                    %end
                </div>
                <div class="col-md-4"></div>
            </div>
 </form>