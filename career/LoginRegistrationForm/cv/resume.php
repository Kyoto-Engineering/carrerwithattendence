<?php
require 'inc/pdfcrowd.php';

// create an API client instance
$client = new Pdfcrowd("Arnab_roy", "46fb791753e737956b8443a330e4bb7e");

// convert a web page and store the generated PDF into a variable
   $pdf = $client->convertFile("../index.php");

// set HTTP response headers
header("Content-Type: application/pdf");
header("Cache-Control: max-age=0");
header("Accept-Ranges: none");
header("Content-Disposition: attachment; filename=\"mycv.pdf\"");

// send the generated PDF 
echo $pdf;

?>