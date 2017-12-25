<?php

use AndrewCassell\AboutController;
use AndrewCassell\BlogArticleController;
use AndrewCassell\BlogIndexController;
use AndrewCassell\ErrorPageController;
use AndrewCassell\HomePageController;
use AndrewCassell\RouteCollection;
use AndrewCassell\RouteStrategy;
use Symfony\Component\HttpFoundation\Request;

require_once '../config/config.php';

$request = Request::createFromGlobals();

$container = require_once "../config/bootstrap_container.php";

$router = new RouteCollection($container,new RouteStrategy());
$router->get("/",HomePageController::class. "::get");
$router->get("/error", ErrorPageController::class. "::get");
$router->get("/blog/",BlogIndexController::class."::get");
$router->get("/blog/{year}/{title}/",BlogArticleController::class."::get");
$router->get("/about",AboutController::class."::get");


$dispatcher = $router->getDispatcher();


try {
    $response = $dispatcher->dispatch($request->getMethod(), $request->getPathInfo());
    $response->send();
} catch (Exception $e) {
    (new \Symfony\Component\HttpFoundation\RedirectResponse("/error"))->send();
}

