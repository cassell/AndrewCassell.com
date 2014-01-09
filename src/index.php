<?php

require_once 'inc/config.php';

$page = new AndrewCassellPage();
$page->setHtmlTitle("Web Application Developer - Herndon, Virginia - United States of America");
$page->open();

?>
<style>
#me-highlight
{
	background-image: url(/img/cassell_oregon_coast.jpg);
	background-position: center 100%;
	color: #ffffff;
	min-height: 200px;
}
@media (min-width: 400px)
{
	#me-highlight
	{
		min-height: 300px;
	}
}
@media (min-width: 700px)
{
	#me-highlight
	{
		min-height: 400px;
	}
}
@media (min-width: 1000px)
{
	#me-highlight
	{
		min-height: 500px;
	}
}
@media (min-width: 1200px)
{
	#me-highlight
	{
		min-height: 600px;
	}
}
</style>
<div id="me-highlight" class="highlight height5 full-screen-background"></div>

<!--<style>
#me-photo img
{
	display: inline-block;
	width: 160px;
	height: 160px;
	 border-radius: 100%;
	-o-border-radius: 100%;
	-webkit-border-radius: 100%;
	-moz-border-radius: 100%;
	opacity: .95;
	border: 1px solid #5B6E7A;
}
</style>

<div id="me-photo">
		<img alt="Andrew Cassell" src="/img/andrew-cassell.jpg">
</div>
hello-->

<?php



$page->close();
