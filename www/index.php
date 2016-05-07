<?php

use AndrewCassell\BlogArticle;
use AndrewCassell\BlogIndex;
use AndrewCassell\ErrorPage;
use AndrewCassell\HomePage;
use AndrewCassell\RouteCollection;
use AndrewCassell\RouteStrategy;
use Symfony\Component\HttpFoundation\Request;

require_once '../config/config.php';

$request = Request::createFromGlobals();

$container = require_once "../config/bootstrap_container.php";

$router = new RouteCollection($container,new RouteStrategy());
$router->get("/",HomePage::class. "::get");
$router->get("/error", ErrorPage::class. "::get");
$router->get("/blog/",BlogIndex::class."::get");
$router->get("/blog/{year}/{title}/",BlogArticle::class."::get");

$dispatcher = $router->getDispatcher();

try {
    $response = $dispatcher->dispatch($request->getMethod(), $request->getPathInfo());
    $response->send();
} catch (Exception $e) {
    (new \Symfony\Component\HttpFoundation\RedirectResponse("/error"))->send();
}

