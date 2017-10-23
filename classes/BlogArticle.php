<?php

namespace AndrewCassell;

use Exception;
use SplFileInfo;

class BlogArticle
{
    /**
     * @var \DateTimeImmutable
     */
    private $date;
    /**
     * @var string
     */
    private $title;
    private $relativeUrl;

    private function __construct(\DateTimeImmutable $date, $title, $relativeUrl)
    {
        $this->date = $date;
        $this->title = $title;
        $this->relativeUrl = $relativeUrl;
    }

    public static function fromFileInfo(SplFileInfo $fileInfo)
    {
        if ($fileInfo->getExtension() != "md") {
            throw new \RuntimeException("File must be markdown");
        }
        $year = (int) basename(dirname($fileInfo->getPathname()));
        if($year < 1983) {
            throw new \RuntimeException("I wasn't born yet :)");
        }

        $fileHandle = fopen($fileInfo->getPathname(), "r");
        $relativeUrl = $fileInfo->getPathname();
        $title = self::getArticleTitle($fileHandle);
        $date = self::getArticleDate($fileHandle);
//        $contents = file_get_contents($fileInfo->getPathname());
        fclose($fileHandle);

        return new self($date,$title,$relativeUrl);

    }

    private static function getArticleTitle($fileHandle)
    {
        // title is first line in file
        $title = ltrim(fgets($fileHandle), "# ");
        if ($title == "") {
            throw new Exception("Blog title not found");
        }
        return $title;
    }

    private static function getArticleDate($fileHandle)
    {
        // date is last line in file
        $pos = -1; $lastLine = ''; $c = '';
        do {
            $lastLine = $c . $lastLine;
            fseek($fileHandle, $pos--, SEEK_END);
            $c = fgetc($fileHandle);
        } while ($c != PHP_EOL);
        return new \DateTimeImmutable(trim($lastLine,"*"));
    }

    public function getUrl()
    {
        return "/blog/" . $this->date->format("Y") . "/" . str_replace(".md","",basename($this->relativeUrl)) . "/";
    }

    public function getTitle()
    {
        return $this->title;
    }

    public function getDateFormatted($format)
    {
        return $this->getDate()->format($format);
    }

    public function getDate()
    {
        return $this->date;
    }

}