<?php

//Example of input: content.php?id=lby.00001

// *** Set required prefix of image id (for validation):
$idPrefix = 'xml/';
$idSuffix = '.xml';

// *** Set required total id Length in characters (for validation):
$idLength = 8;

$fileID = '';
if( isset( $_GET['id'] ) )
  $fileID = $_GET['id'];

if( is_null($fileID) || ($fileID == "") )
  $fileID = 'error';

$fileID = str_replace('*', 'no', $fileID);
$fileID = str_replace('?', 'no', $fileID);
$fileID = str_replace('"', 'no', $fileID);
$fileID = str_replace('\'', 'no', $fileID);

$file = $idPrefix . $fileID . $idSuffix;

print( $file );
if( file_exists( $file ) ) {
  $xsl_file = "liberty.xsl";
		$xml_file =  $file;

		$proc = new XsltProcessor();
		$xsl = new DomDocument;
		$xml = new DomDocument;
		$xsl->load( $xsl_file );
		$xml->load( $xml_file );
		$proc->importStyleSheet( $xsl );

		print( $proc->transformToXML( $xml ) );

} else {
  echo("<h1>Error</h1>");
}
?>
