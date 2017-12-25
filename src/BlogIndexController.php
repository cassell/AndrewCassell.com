<?php
namespace AndrewCassell;

use Exception;
use RecursiveDirectoryIterator;
use RecursiveIteratorIterator;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class BlogIndexController extends Controller
{
    public function get(Response $response)
    {
        $blog = [];

        $directory = new RecursiveDirectoryIterator(__DIR__ . '/../blog/entries/',RecursiveDirectoryIterator::SKIP_DOTS);
        $iterator = new RecursiveIteratorIterator($directory,RecursiveIteratorIterator::LEAVES_ONLY);

        foreach ($iterator as $fileInfo) {
            $blog[] = BlogArticle::fromFileInfo($fileInfo);
        }

        usort($blog, function(BlogArticle $a, BlogArticle $b) {
            return $a->getDate() < $b->getDate();
        });

        return $this->render($response,"/blog/index.html.twig",['title' => "Blog", "entries" => $blog]);
    }


}
