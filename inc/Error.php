<?php

class Error
{
    // Capture Errors
    public static function captureError($number, $message, $file, $line )
    {
		throw new Exception(serialize($number, $message, $file, $line));
    }
    
    // Exceptions
    public static function captureException($exception)
    {
		echo '<pre>';
		print_r($exception);
		echo '</pre>';
		exit;
    }
	
}

