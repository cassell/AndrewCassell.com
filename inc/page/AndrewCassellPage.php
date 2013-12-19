<?php

class AndrewCassellPage extends HtmlPage
{
	function open()
	{
		$this->insertStyleSheet('/lib/vendor/frameworks/bootstrap/css/bootstrap.css');
		$this->insertStyleSheet('/css/main.css');
		$this->setHtmlTitle('Andrew Cassell - Web Application Developer - Herndon, Virginia');
		$this->printHtmlHeader();
	}
	
	function close()
	{
		$this->printHtmlFooter();
	}
	
	function printAnalytics()
	{
		
	}
	
	function getMeta()
	{
		return Array();
	}
	
}