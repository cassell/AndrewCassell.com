<?php
namespace AndrewCassell;

use League\Container\Container;

class RouteCollection extends \League\Route\RouteCollection
{
    public function __construct(Container $container, RouteStrategy $routeStrategy)
    {
        parent::__construct($container);
        $this->setStrategy($routeStrategy);
    }

}

