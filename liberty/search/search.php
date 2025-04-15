<?php

require_once( '../../globals/globals.inc.php' );

function redirectAndSearch( $value ) { 
		$URL = SOLR_BASE_HREF . "ncs_liberty/select?" .
				"indent=on&" .
				"version=2.2&" .
				"q=(" . $value . ")&" .
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

//topic, place, genre
$OP_topic = $_GET['topic'];
$OP_place = $_GET['place'];
$OP_genre = $_GET['genre'];

//Omit double quote:
$OP_keyword = str_replace('"', '', $OP_keyword);
$OP_topic = str_replace('"', '', $OP_topic);
$OP_place = str_replace('"', '', $OP_place);
$OP_genre = str_replace('"', '', $OP_genre);

if( isset( $OP_keyword ) && $OP_keyword != '' )
	$value .= 'text:' . $OP_keyword;
else
  $value .= 'text:*';
if( isset( $OP_genre ) && $OP_genre != '' )
	$value .= ' AND genre:' . $OP_genre;
if( isset( $OP_topic ) && $OP_topic != '' )
	$value .= ' AND topic:' . $OP_topic;
if( isset( $OP_place ) && $OP_place != '' )
	$value .= ' AND place:' . $OP_place;

redirectAndSearch( $value );

?>
