<?php

namespace AndrewCassell;

use Symfony\Component\HttpFoundation\Response;

class HomePage extends Controller
{
    public function get(Response $response)
    {
        $response->setContent($this->engine->render("/home/home",['title' => ""]));
        return $response;
    }

}

