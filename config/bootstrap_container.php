<?php

$container = new \League\Container\Container();

$container->add(Twig_Environment::class,
    new Twig_Environment(new Twig_Loader_Filesystem(__DIR__ .'/../templates/'), []) );

return $container;