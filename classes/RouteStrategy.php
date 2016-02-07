<?php
namespace AndrewCassell;

class RouteStrategy extends \League\Route\Strategy\AbstractStrategy implements \League\Route\Strategy\StrategyInterface
{
    public function dispatch($controller, array $vars)
    {
        $container = clone $this->container;
        $container->singleton('Symfony\Component\HttpFoundation\Request',$this->getRequest());

        if (is_array($controller)) {
            $controller = [
                $container->get($controller[0]),
                $controller[1]
            ];
        }

        $response = $container->call($controller,$vars);

        return $this->determineResponse($response);
    }

}