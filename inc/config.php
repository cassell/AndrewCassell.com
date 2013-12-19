<?php

// guarantees proper caching now that we have disabled Apache Sessions
header('Server: AndrewCassell');
header('X-Powered-By: AndrewCassell');
header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
header('Expires:Tue, 9 Aug 2000 11:00:00 GMT');

define('PRODUCTION_RELEASE_NUMBER','');

require_once('Error.php');

error_reporting(E_ALL);
set_error_handler( array( 'Error', 'captureError' ) );
set_exception_handler( array( 'Error', 'captureException' ) );


require_once 'page/HtmlPage.php';
require_once 'page/AndrewCassellPage.php';