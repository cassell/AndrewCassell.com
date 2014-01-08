<?php

require_once '../inc/config.php';

$blogContents = "";

if(strpos($_SERVER['REQUEST_URI'], "."))
{
	header("Location: /error.php");
	exit;
}

$page = new AndrewCassellPage();


if($_SERVER['REQUEST_URI'] != "" && $_SERVER['REQUEST_URI'] != "/blog/")
{
	$folderName = __DIR__ . '/entries/'.substr($_SERVER['REQUEST_URI'], 5);
	
	if(file_exists($folderName . basename($folderName) . '.md'))
	{
		$markdownParser = new dflydev\markdown\MarkdownExtraParser();
		$blogContents = $markdownParser->transformMarkdown(file_get_contents($folderName . basename($folderName) . '.md'));
		$page->open();
		?>
		<div class="container">
			<div class="blog-container">
			<?php echo $blogContents; ?>
			</div>
		</div>
		<br><br><br>
		<?php
	}
	else
	{
		header("Location: /error.php");
		exit;
	}
}
else
{
	$blog = array();
	
	$directory = new RecursiveDirectoryIterator(__DIR__ . '/entries/',RecursiveDirectoryIterator::SKIP_DOTS);
	$iterator = new RecursiveIteratorIterator($directory,RecursiveIteratorIterator::LEAVES_ONLY);
	
	foreach($iterator as $fileinfo)
	{
		if($fileinfo->getExtension() == "md")
		{
			$year = (int)basename(dirname(dirname($fileinfo->getPathname())));
			if($year > 2000)
			{
				// create the year array if it doesn't exist already
				if(!array_key_exists($year, $blog))
				{
					$blog[$year] = array();
				}
				
				$file_handle = fopen($fileinfo->getPathname(), "r");
				
				// title is first line in file
				$title = ltrim(fgets($file_handle), "# ");
				if($title == "")
				{
					throw new Exception("Blog title not found");
				}
				
				// date is last line in file
				$pos = -1; $lastLine = ''; $c = '';
				do {
					$lastLine = $c . $lastLine;
					fseek($file_handle, $pos--, SEEK_END);
					$c = fgetc($file_handle);
				} while($c != PHP_EOL);
				$date = strtotime(trim($lastLine,"*"));
				if($date == "")
				{
					throw new Exception("Blog date not found");
				}
				
				if(!array_key_exists($date, $blog[$year]))
				{
					$blog[$year][$date] = array();
				}
				
				fclose($file_handle);
				
				$blog[$year][$date][] = array("title" => $title, "folder" => basename(dirname($fileinfo->getPathname())));
			}
		}
	}
	
	$page->setHtmlTitle('Blog');
	$page->open();
	?>
	<div class="container">
		<div class="blog-container">
			<h1>Blog Articles</h1>
		<?php
		
		krsort($blog);
		
		foreach($blog as $year => $dates)
		{
			echo '<h2>' . (int)$year . '</h2>';
			echo '<ul>';
			krsort($dates);
			foreach($dates as $date => $articles)
			{
				krsort($articles);
				foreach($articles as $article)
				{
					echo '<li><a href="/blog/' . (int)$year . '/' . $article["folder"] . '/">' . $article["title"] . '</a><small>' . date("M j",$date) . '</small></li>';
				}
			}
			echo '</ul>';
		}
		?>
		</div>
	</div>
	<br><br><br>
	<?php
	
}


$page->close();
