<?php

namespace AndrewCassell;

use Michelf\MarkdownExtra;
use Symfony\Component\HttpFoundation\Response;

class AboutController extends Controller
{
    public function get(Response $response, MarkdownExtra $markdown)
    {
        $contents = file_get_contents('../templates/about/about.md');

        $contents = $markdown->transform($contents);

        return $this->render($response,"/about/about.html.twig",['title' => "About Me", "contents" => $contents]);
    }


}