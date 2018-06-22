<div class="pagination-holder">
    <div class="row">
        <div class="col-xs-12 col-sm-12">
            <div class="modal-body" style="padding: 0 20px; display: none;">
                <div class="progress progress-striped active progress-sm">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                         aria-valuemax="80" style="width: 0%">
                    </div>
                </div>
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

