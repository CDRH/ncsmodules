<?php
require_once( "../globals/globals.inc.php" );

//Example of input: content.php?id=ls.00001


// *** Set required prefix of image id (for validation):
$IdPrefix = 'ls.';

// *** Set required total id Length in characters (for validation):
$IdLength = 8;



$fileID = $_GET['id'];
$keyword = $_GET['keyword'];
$showall = $_GET['show'];
if ($showall != "all")
   $showall = "";
$refID = 'search';

if ( is_null($fileID) || ($fileID == ""))
$fileID = 'error';

$fileID = str_replace('*', 'no', $fileID);
$fileID = str_replace('?', 'no', $fileID);
$fileID = str_replace('"', 'no', $fileID);
$fileID = str_replace('\'', 'no', $fileID);

if ( is_null($keyword) || ($keyword == ""))
$keyword = '';

if ($keyword=='*') $keyword='';
$keyword= str_replace('~', '', $keyword);
$keyword= str_replace('@', '', $keyword);
$keyword= str_replace('#', '', $keyword);
$keyword= str_replace('$', '', $keyword);
$keyword= str_replace('%', '', $keyword);
$keyword= str_replace('^', '', $keyword);
$keyword= str_replace('&', '', $keyword);
$keyword= str_replace('?', '', $keyword);
$keyword= str_replace('>', '', $keyword);
$keyword= str_replace('<', '', $keyword);
$keyword= str_replace('!', '', $keyword);
$keyword= str_replace('(', '', $keyword);
$keyword= str_replace(')', '', $keyword);
$keyword= str_replace('+', '', $keyword);
$keyword= str_replace('-', '', $keyword);
$keyword= str_replace('_', '', $keyword);
$keyword= str_replace('`', '', $keyword);
$keyword= str_replace(':', '', $keyword);
$keyword= str_replace(';', '', $keyword);
$keyword= str_replace('[', '', $keyword);
$keyword= str_replace(']', '', $keyword);
$keyword= str_replace('{', '', $keyword);
$keyword= str_replace('}', '', $keyword);
$keyword= str_replace('"', '', $keyword);

$keyword = stripcslashes($keyword);

if ((strlen($fileID) == $IdLength) && (strstr($fileID, $IdPrefix) == $fileID) && ($keyword!=''))
{

$dbname = "http://libr.unl.edu/examples/servlet/transform/tamino/Library/loveandseduction?&_XQUERY=";
$xslname = "&_xslsrc=http://libr.unl.edu:2000/loveandseduction/scenes.xsl";

readfile( $dbname . urlencode('declare namespace tf = "http://namespaces.softwareag.com/tamino/TaminoFunction"
 let $id := \''
. $fileID .
'\' let $thedocument := input()/TEI.2[@id=$id]
let $likefiles := (for $each in $thedocument/:text/body/div1[@type=\'file references\']/list/item/xptr return input()/category[@name=\'all\']/item[@id eq $each/@n])
let $ref := tf:createTextReference($thedocument, "' . $keyword . '")
return <result ref="none" keyword="'. $keyword .'" show="' .$showall. '">{tf:highlight($thedocument, $ref, "REV_DISC")}<related id="closely">{$likefiles}</related></result>') . $xslname);
exit;
}

/* If keyword is null */
if ((strlen($fileID) == $IdLength) && (strstr($fileID, $IdPrefix) == $fileID) && ($keyword='') )
{

$dbname = "http://libr.unl.edu/examples/servlet/transform/tamino/Library/loveandseduction?&_XQUERY=";
$xslname = "&_xslsrc=http://libr.unl.edu:2000/loveandseduction/scenes.xsl";

readfile( $dbname . urlencode('declare namespace tf = "http://namespaces.softwareag.com/tamino/TaminoFunction"
 let $id := \''
. $fileID .
'\' let $thedocument := input()/TEI.2[@id=$id]
let $likefiles := (for $each in $thedocument/:text/body/div1[@type=\'file references\']/list/item/xptr return input()/category[@name=\'all\']/item[@id eq $each/@n])
return <result ref="none" show="' .$showall. '">{$thedocument}<related id="closely">{$likefiles}</related></result>'). $xslname);
exit;
}



/* if fileId is null */

if ( $fileId='error')
{

$dbname = "http://libr.unl.edu/examples/servlet/transform/tamino/Library/loveandseduction?&_XQUERY=";
$xslname = "&_xslsrc=http://libr.unl.edu:2000/loveandseduction/scenes.xsl";

readfile( $dbname . urlencode('declare namespace tf = "http://namespaces.softwareag.com/tamino/TaminoFunction"
 let $id := \''
. $fileID .
'\' let $thedocument := input()/TEI.2[@id=$id]
let $likefiles := (for $each in $thedocument/:text/body/div1[@type=\'file references\']/list/item/xptr return input()/category[@name=\'all\']/item[@id eq $each/@n])
return <result ref="none" show="' .$showall. '">{$thedocument}<related id="closely">{$likefiles}</related></result>'). $xslname);
exit;
}
else
{
echo("<h1>Error</h1>");

exit();
}


?>
