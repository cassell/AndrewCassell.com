<?php

require_once 'inc/config.php';

$page = new AndrewCassellPage();
$page->setHtmlTitle("Error");
$page->open();

?>
<style>
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


<?php



$page->close();
