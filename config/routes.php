<?php
    // specific publication routing rules

    // DO NOT EDIT OR CHANGE BELOW!!
	$apiBaseUrl = Configure::read('api.baseUrl');
	if (!empty($apiBaseUrl) && is_string($apiBaseUrl)) {
		Router::connect($apiBaseUrl . '/*', array('controller' => 'api', 'action' => 'route'));
	}

    Router::connect('/*', array('controller' => 'pages', 'action' => 'route'));
