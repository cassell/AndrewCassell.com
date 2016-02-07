<?php

abstract class HtmlPage
{
	private $htmlTitle;
	private $scripts = array();
	private $styleSheets = array();
	
	// prototypes
	abstract function open();
	abstract function close();
	abstract function printAnalytics();
	abstract function getMeta();
	
	function __construct() { }
	
	function insertScript($scriptName)
	{
		$this->scripts[] =  '<script src="' . substr($scriptName,0,-3) . PRODUCTION_RELEASE_NUMBER . '.js"></script>';
	}
	
	function insertStyleSheet($styleSheet)
	{
		$this->styleSheets[] = '<link rel="stylesheet" href="' . substr($styleSheet,0,-4) . PRODUCTION_RELEASE_NUMBER . '.css" type="text/css" />';
	}
	
	function insertPrintMediaStyleSheet($styleSheet)
	{
		$this->styleSheets[] = '<link rel="stylesheet" href="' . substr($styleSheet,0,-4) . PRODUCTION_RELEASE_NUMBER . '.css" type="text/css" media="print" />';
	}
	
	function insertJavaScriptBlock($block)
	{
		$this->scripts[] = '<script>' . $block . '</script>';
	}
	
	function insertJavascriptData($mixed,$variableName = 'data')
	{
		if($mixed !== null)
		{
			$this->insertJavaScriptBlock('var ' . $variableName . ' = ' . Util::jsonEncode($mixed) . ';');
		}
		else if(is_array($mixed))
		{
			$this->insertJavaScriptBlock('var ' . $variableName . ' = [];');
		}
		else
		{
			$this->insertJavaScriptBlock('var ' . $variableName . ' = [];');
		}
	}
	
	function insertStyleBlock($block)
	{
		$this->styleSheets[] = '<style type="text/css">' . $block . '</style>';
	}
	
	function getScripts()
	{
		return $this->scripts;
	}
	
	function getStyleSheets()
	{
		return $this->styleSheets;
	}
	
	function setHtmlTitle($val) { $this->htmlTitle = $val; }
	function getHtmlTitle() { return $this->htmlTitle; }
	
	function printHtmlHeader()
	{
		echo '<!DOCTYPE html>',
			 '<html>',
		 	 '<head>',
		  	 '<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />',
		     '<meta http-equiv="Pragma" content="no-cache" />',
			 '<meta http-equiv="cache-control" content="no-cache" /> ',
			 '<meta name="viewport" content="width=device-width, initial-scale=1.0">',
			 '<title>' , $this->getHtmlTitle() , '</title>',
			 implode("",$this->getMeta()),
			 implode("",$this->getStyleSheets()),
			 implode("",$this->getScripts()),
			 '</head>';
		
		$this->printAnalytics();

		echo '<body onunload="">';  // onunload forces the browser to reload the page when the back button is pressed (Safari back button issue)
									// See:
									// http://stackoverflow.com/questions/5297122/preventing-cache-on-back-button-in-safari-5
									// http://stackoverflow.com/questions/24046/the-safari-back-button-problem
	}
	
	function printHtmlFooter() 
	{
		echo '</body>';
		echo '</html>';
	}
	
}
