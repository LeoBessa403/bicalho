<div class="pagination-holder">
    <div class="row">
        <div class="col-xs-12 col-sm-12">
            <div class="modal-body text-center" style="padding: 0 20px; display: none;">
               <img src="<?= PASTASITE; ?>images/ajax-loader.gif" width="30" />
            </div>
            <div class="text-center">
                <?php
                $display = 'block';
                if($i < 10)
                    $display = 'none'; ?>
                <a class="btn-loadmore carrega-mais" href="#" style="display: <?= $display; ?>">
                    <i class="fa fa-plus"></i> carregar mais produtos</a>
            </div>
            <div class="result-counter  text-right">
                <h4>de <span class="total-min"><?= ($i > 0)? 1 : 0; ?></span> a <span class="total-max"><?= ($i > 9)? 9 : $i; ?></span> de <span
                            id="total-grid"><?= $i; ?></span> Encontrados</h4>
                <input type="hidden" id="pagina" value="2"/>
            </div>
        </div>
    </div><!-- /.row -->
</div><!-- /.pagination-holder -->

