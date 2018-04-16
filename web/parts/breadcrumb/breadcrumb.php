<?php
	if(file_exists(PASTASITE.'/parts/breadcrumb/breadcrumb-'.UrlAmigavel::$action.'.php')){
		echo '<div class="animate-dropdown">';
		require PASTASITE.'/parts/breadcrumb/breadcrumb-'.UrlAmigavel::$action.'.php';
		echo '</div>';
	}