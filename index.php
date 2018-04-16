<?php
    require_once 'library/Config.inc.php';
    $link = UrlAmigavel::getLink();
    $url = (isset($link) && $link != "" ? $link : SITE);
    $url = explode("/", $url);

    if($url[0] == ADMIN):
        include './'.ADMIN.'/sistema.php';
    else:
        include './'.SITE.'/web.php';
    endif;
?>