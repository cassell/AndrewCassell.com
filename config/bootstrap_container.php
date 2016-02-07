<?php

$container = new \League\Container\Container();
$container->add('League\Plates\Engine',new \League\Plates\Engine(__DIR__."/../templates"));
$container->add('League\Plates\Extension\Asset',new League\Plates\Extension\Asset(__DIR__."/../www"));
$container->add('League\Plates\Extension\URI', new \League\Plates\Extension\URI($_SERVER['REQUEST_URI']));

return $container;