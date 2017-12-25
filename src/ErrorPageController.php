<?php
namespace AndrewCassell;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class ErrorPageController extends Controller
{
    public function get(Response $response)
    {
        return $this->render($response,"error/error.html.twig",['title' => ""]);
    }

}