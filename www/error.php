<?php

use AndrewCassell\ErrorPageController;
use Symfony\Component\HttpFoundation\Request;

require_once '../config/config.php';

$request = Request::createFromGlobals();
$response = new \Symfony\Component\HttpFoundation\Response();

$container = require_once "../config/bootstrap_container.php";

/** @var ErrorPageController $errorPage */
$errorPage = $container->get(ErrorPageController::class);

$errorPage->get($response)->send();

