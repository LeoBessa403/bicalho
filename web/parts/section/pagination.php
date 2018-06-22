<div class="pagination-holder">
    <div class="row">
        <div class="col-xs-12 col-sm-12">
            <div class="modal-body text-center" style="padding: 0 20px; display: none;">
               <img src="<?= PASTASITE; ?>images/ajax-loader.gif" width="30" />
            </div>
            <div class="text-center">
                <a class="btn-loadmore carrega-mais" href="#">
                    <i class="fa fa-plus"></i> carregar mais produtos</a>
            </div>
            <div class="result-counter  text-right">
                <h4>de <span class="total-min">1</span> a <span class="total-max">9</span> de <span
                            id="total-grid"><?= $i; ?></span> Encontrados</h4>
                <input type="hidden" id="pagina" value="2"/>
            </div>
        </div>
    </div><!-- /.row -->
</div><!-- /.pagination-holder -->

