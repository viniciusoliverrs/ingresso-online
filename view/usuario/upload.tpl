 % rebase('./view/base.tpl', title='Profile')
 <form action="/usuario/upload" method="POST"  enctype="multipart/form-data">
   <div class="form-group">
    <label for="exampleInputFile">Arquivo de Imagem</label>
    <input type="file" name="upload" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
    <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
    <button class="btn btn-primary">Upload</button>
  </div> 	
 </form>
