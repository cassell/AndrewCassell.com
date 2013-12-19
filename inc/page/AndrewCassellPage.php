<?php

class AndrewCassellPage extends HtmlPage
{
	function open()
	{
		$this->insertStyleSheet('/lib/vendor/frameworks/bootstrap/css/bootstrap.css');
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