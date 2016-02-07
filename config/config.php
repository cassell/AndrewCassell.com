<?php

// guarantees proper caching now that we have disabled Apache Sessions
header('Server: AndrewCassell');
header('X-Powered-By: AndrewCassell');
header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
header('Expires:Tue, 9 Aug 2000 11:00:00 GMT');

require_once '../vendor/autoload.php';

