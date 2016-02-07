<?php

use AndrewCassell\ErrorPage;
use Symfony\Component\HttpFoundation\Request;

require_once '../config/config.php';

$request = Request::createFromGlobals();
$response = new \Symfony\Component\HttpFoundation\Response();

$container = require_once "../config/bootstrap_container.php";

/** @var ErrorPage $errorPage */
$errorPage = $container->get(ErrorPage::class);

$errorPage->get($request,$response)->send();

