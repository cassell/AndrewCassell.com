<?php
namespace AndrewCassell;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class ErrorPage extends Controller
{
    public function get(Request $request, Response $response)
    {
        $response->setContent($this->engine->render("error/error",['title' => ""]));
        return $response;
    }

}