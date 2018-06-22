<div class="control-bar">
    <div id="popularity-sort" class="le-select">
        <select data-placeholder="sort by popularity">
            <option value="1">Por preço</option>
            <option value="2">Por vendas</option>
            <option value="3">Por Visitas</option>
        </select>
    </div>

    <div id="item-count" class="le-select">
        <select>
            <option value="1">9 por página</option>
            <option value="2">18 por página</option>
            <option value="3">27 por página</option>
        </select>
    </div>

    <div class="grid-list-buttons">
        <ul>
            <li class="grid-list-button-item <?php if (!$isListView) echo 'active'; ?>"><a data-toggle="tab"
                                                                                           href="#grid-view"><i
                            class="fa fa-th-large"></i> Grid</a></li>
            <li class="grid-list-button-item <?php if ($isListView) echo 'active'; ?>"><a data-toggle="tab"
                                                                                          href="#list-view"><i
                            class="fa fa-th-list"></i> List</a></li>
        </ul>
    </div>
</div><!-- /.control-bar -->

