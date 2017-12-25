<?php

namespace AndrewCassell;

use Symfony\Component\HttpFoundation\Response;

class HomePageController extends Controller
{
    public function get(Response $response)
    {
        return $this->render($response,"/home/home.html.twig",['title' => ""]);
    }



}

