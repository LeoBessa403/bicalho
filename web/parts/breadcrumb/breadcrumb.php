<?php
	if(file_exists(PASTA_RAIZ.SITE. '/parts/breadcrumb/breadcrumb-'.UrlAmigavel::$action.'.php')){
		echo '<div class="animate-dropdown">';
		require PASTA_RAIZ.SITE. '/parts/breadcrumb/breadcrumb-'.UrlAmigavel::$action.'.php';
		echo '</div>';
	}