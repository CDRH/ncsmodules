<?php

require_once( '../../globals/globals.inc.php' );

function redirectAndSearch( $value ) {
  $URL = SOLR_BASE_HREF . "ncs_liberty/select?" .
				"indent=on&" .
				"version=2.2&" .
				"q=(genre:" . $value . ")&" .
				"start=0&" .
				"rows=10&" .
				"fl=id,score,title&" .
				"qt=standard&" .
				"wt=xslt&" .
				"tr=search.xsl&" .
				"explainOther=&hl=on&" .
                "echoParams=all&" .
				"hl.fl=text";
		header( "Location: " . $URL );
}

//Example of input: content.php?id=ls.00001
$themeName = '';
if( isset( $_GET['name'] ) )
  $themeName = $_GET['name'];

if( is_null($themeName) || ($themeName == "") ) {
		header("HTTP/1.0 404 Not Found");
		exit();
}

$validThemes = array(
  'cartoons',
		'coins',
		'commentary',
		'fiction',
		'history',
		'illustrations',
		'paintings',
		'poetry',
		'sculpture',
		'seals',
		'american',
		'british',
		'french',
		'americanrevolution',
		'civilwar',
		'dissenting',
		'emancipation',
		'frenchrevolution',
		'gender',
		'icon',
		'individual',
		'italy',
		'jefferson',
		'liberalism',
		'libertybell',
		'libertycap',
		'lincoln',
		'mill',
		'napoleon',
		'poland',
		'radicalism',
		'rev1830',
		'rev1848',
		'russia',
		'spain',
		'statueofliberty',
		'switzerland',
		'wales',
		'washington',
		'othercountry'
);

if( in_array( $themeName, $validThemes ) ) {
  redirectAndSearch( $themeName );
} else {
  header("HTTP/1.0 404 Not Found");
}
?>
