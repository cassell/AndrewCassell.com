<?php
namespace AndrewCassell;

use Exception;
use RecursiveDirectoryIterator;
use RecursiveIteratorIterator;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class BlogIndex extends Controller
{
    public function get(Response $response)
    {
        $blog = array();

        $directory = new RecursiveDirectoryIterator(__DIR__ . '/../blog/entries/',RecursiveDirectoryIterator::SKIP_DOTS);
        $iterator = new RecursiveIteratorIterator($directory,RecursiveIteratorIterator::LEAVES_ONLY);

        foreach ($iterator as $fileinfo) {
            if ($fileinfo->getExtension() == "md") {
                $year = (int) basename(dirname(dirname($fileinfo->getPathname())));
                if ($year > 2000) {
                    // create the year array if it doesn't exist already
                    if (!array_key_exists($year, $blog)) {
                        $blog[$year] = array();
                    }

                    $file_handle = fopen($fileinfo->getPathname(), "r");

                    // title is first line in file
                    $title = ltrim(fgets($file_handle), "# ");
                    if ($title == "") {
                        throw new Exception("Blog title not found");
                    }

                    // date is last line in file
                    $pos = -1; $lastLine = ''; $c = '';
                    do {
                        $lastLine = $c . $lastLine;
                        fseek($file_handle, $pos--, SEEK_END);
                        $c = fgetc($file_handle);
                    } while ($c != PHP_EOL);
                    $date = strtotime(trim($lastLine,"*"));
                    if ($date == "") {
                        throw new Exception("Blog date not found");
                    }

                    if (!array_key_exists($date, $blog[$year])) {
                        $blog[$year][$date] = array();
                    }

                    fclose($file_handle);

                    $blog[$year][$date][] = array("title" => $title, "folder" => basename(dirname($fileinfo->getPathname())));
                }
            }
        }

        krsort($blog);
        foreach ($blog as $year => $dates) {
            krsort($dates);
            foreach ($dates as $date => $articles) {
                krsort($articles);
            }

        }

        $response->setContent($this->engine->render("/blog/index",['title' => "Blog", "entries" => $blog]));

        return $response;
    }
}
