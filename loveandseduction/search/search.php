<?php

require_once( '../../globals/globals.inc.php' );

function redirectAndSearch( $value ) { 
		$URL = SOLR_BASE_HREF . "ncs_loveandseduction/select?" .
				"indent=on&" .
				"version=2.2&" .
				"q=" . $value . "&" .
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

//Example of input: search.php?keyword=honeymoon

$OP_keyword = $_GET['keyword'];
$OP_setting = $_GET['setting'];
$OP_theme = $_GET['theme'];
$OP_category = $_GET['category'];
$OP_nationality = $_GET['nationality'];

//Omit double quote:

$OP_keyword = str_replace('"', '', $OP_keyword);
$OP_setting = str_replace('"', '', $OP_setting);
$OP_theme = str_replace('"', '', $OP_theme);
$OP_category = str_replace('"', '', $OP_category);
$OP_nationality = str_replace('"', '', $OP_nationality);

$value = '(';
if( isset( $OP_keyword ) && $OP_keyword != '' )
	$value .= 'text:' . $OP_keyword;
else
  $value .= 'text:*';
if( isset( $OP_setting ) && $OP_setting != '' )
	$value .= ' AND setting:' . $OP_setting;
if( isset( $OP_theme ) && $OP_theme != '' )
	$value .= ' AND theme:' . $OP_theme;
if( isset( $OP_category ) && $OP_category != '' )
	$value .= ' AND category:' . $OP_category;
if( isset( $OP_nationality ) && $OP_nationality != '' )
	$value .= ' AND nationality:' . $OP_nationality;
$value .= ')';

redirectAndSearch( $value );

?>
