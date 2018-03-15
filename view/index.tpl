% rebase('./view/base.tpl', title='IngressoOnline')
<div class="row">
  <div class="col-lg-3" style="padding:10px;">
    %include('./view/side_menu.tpl')
  </div>
  <!-- /.col-lg-3 -->
  <div class="col-lg-9">
    %include('./view/slide.tpl')
    <div class="row">
    %include('./view/list.tpl')
    </div>
    <!-- .row -->
  </div>
  <!-- /.col-lg-9 -->
</div>
<!-- /.row -->