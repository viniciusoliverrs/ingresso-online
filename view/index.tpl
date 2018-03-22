% rebase('./view/base.tpl', title='IngressoOnline')
<div class="row">
  <div class="col-lg-2" style="padding:10px;">
    %include('./view/side_menu.tpl')
  </div>
  <!-- /.col-lg-2 -->
  <div class="col-lg-10">
    %include('./view/slide.tpl')
    <div class="row" style="margin-top: 5px;">
    %include('./view/evento/catalog.tpl')
    </div>
    <!-- .row -->
  </div>
  <!-- /.col-lg-9 -->
</div>
<!-- /.row -->