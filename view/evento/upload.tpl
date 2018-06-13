% rebase('view/base.tpl', title='Upload')
<form class="form-horizontal" action="/evento/upload/{{evento_id}}" method="POST"  enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Upload de imagem:</h2>
                    <h4  class="text-center">
                        Tamanho da imagem ideal 500x300<br/>
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
            <div class="row" style="padding-top: 1rem">
            	<div class="col-md-4"></div>
                <div class="col-md-4">
                    <a href="#" class="btn btn-secondary" onclick="window.history.go(-1)">Voltar</a>
                    <button class="btn float-md-right btn-primary">Salvar</button>
                </div>
                <div class="col-md-4"></div>
            </div>
 </form>