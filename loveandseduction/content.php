<?php

//Example of input: content.php?id=ls.00001


// *** Set required prefix of image id (for validation):
$IdPrefix = 'ls.';

// *** Set required total id Length in characters (for validation):
$IdLength = 8;

$fileID = $_GET['id'];
$refID = $_GET['ref'];

$showall = $_GET['show'];
if ($showall != "all")
$showall = "";

if (!is_null($refID) && !($refID == ""))
{
switch ($refID) {

case 'boudoir':
break;
case 'countrywalk':
break;
case 'garden':
break;
case 'parlor':
break;
case 'dance':
break;
case 'piano':
break;
case 'publicspace':
break;
case 'carriage':
break;
case 'urbanwalk':
break;
case 'wild':
break;
case 'adultery':
break;
case 'arrangedmarriage':
break;
case 'breachofpromise':
break;
case 'class':
break;
case 'courtship':
break;
case 'divorce':
break;
case 'popularpress':
break;
case 'premaritalsex':
break;
case 'seduction':
break;
case 'fiction':
break;
case 'commentary':
break;
case 'history':
break;
case 'image':
break;
default:
$refID = 'none';
break;
}
}
else {
$refID = 'none';
}

if ( is_null($fileID) || ($fileID == ""))
$fileID = 'error';

$fileID = str_replace('*', 'no', $fileID);
$fileID = str_replace('?', 'no', $fileID);
$fileID = str_replace('"', 'no', $fileID);
$fileID = str_replace('\'', 'no', $fileID);

if ((strlen($fileID) == $IdLength) && (strstr($picID, $IdPrefix) == $picID))
{
$xsl_file = "scenes.xsl";
$xml_file =  "xml/" . $fileID . ".xml";

$proc = new XsltProcessor();
$xsl = new DomDocument;
$xml = new DomDocument;
$xsl->load( $xsl_file );
$xml->load( $xml_file );
$proc->importStyleSheet( $xsl );

  print( $proc->transformToXML( $xml ) );

}else
{
echo("<h1>Error</h1>");
}
exit();
?>
