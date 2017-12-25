<?php
namespace AndrewCassell;

use League\Plates\Engine;
use League\Plates\Extension\Asset;
use League\Plates\Extension\URI;
use Symfony\Component\HttpFoundation\Response;

abstract class Controller
{
    /**
     * @var \Twig_Environment
     */
    private $twig;

    public function __construct(\Twig_Environment $twig)
    {
        $this->twig = $twig;
    }

    protected function render(Response $response, $template, $data)
    {
        $response->setContent($this->twig->render($template,$data));
        return $response;
    }

}
