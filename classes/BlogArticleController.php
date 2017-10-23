<?php
namespace AndrewCassell;

use Michelf\MarkdownExtra;
use SplFileInfo;
use Symfony\Component\HttpFoundation\Response;

class BlogArticleController  extends Controller
{
    public function get(Response $response, MarkdownExtra $markdown, $year, $title)
    {
        $year = (int)$year;

        $filename = "../blog/entries/" . $year . "/". $title . '.md';

        if(!file_exists($filename))
        {
            throw new \RuntimeException("Article not found");
        }

        $article = BlogArticle::fromFileInfo(new SplFileInfo($filename));

        $contents = file_get_contents($filename);

        $contents = $markdown->transform($contents);

        $response->setContent($this->engine->render("/blog/article",['title' => $article->getTitle(), "article" => $contents]));

        return $response;

    }
}
