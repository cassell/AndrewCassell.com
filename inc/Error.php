<?php

class Error
{
    // Capture Errors
//    public static function captureError($number, $message, $file, $line )
//    {
//		echo '<pre>ccc';
//		print_r($exception);
//		echo '</pre>';
//		exit;
//		
////		throw new Exception(print_r(array($number, $message, $file, $line),true));
//    }
    
    // Exceptions
    public static function captureException($exception)
    {
		echo '<pre>ccc';
		print_r($exception);
		echo '</pre>';
		exit;
    }
	
}

