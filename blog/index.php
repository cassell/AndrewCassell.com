<?php

require_once '../inc/config.php';

$blogContents = "";

if(strpos($_SERVER['REQUEST_URI'], "."))
{
	header("Location: /error.php");
	exit;
}


if($_SERVER['REQUEST_URI'] != "" && $_SERVER['REQUEST_URI'] != "/blog/")
{
	$folderName = __DIR__ . '/entries/'.substr($_SERVER['REQUEST_URI'], 5);
	
	if(file_exists($folderName . basename($folderName) . '.md'))
	{
		$markdownParser = new dflydev\markdown\MarkdownExtraParser();
		$blogContents = $markdownParser->transformMarkdown(file_get_contents($folderName . basename($folderName) . '.md'));
	}
}
else
{
}



$page = new AndrewCassellPage();

if($blogContents != "")
{
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
	$page->setHtmlTitle('Blog');
	$page->open();
	?>
	<div class="container">
		<div class="blog-container">
			<h1>Blog Articles</h1>
		<?php echo $blogContents; ?>
		</div>
	</div>
	<br><br><br>
	<?php
	
}



$page->close();
