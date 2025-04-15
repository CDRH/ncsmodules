<?php
/*
http://libr.unl.edu:2000/liberty/highlightliberty.php?id=ls.00092&keyword=was
http://libr.unl.edu:2000/liberty/highlightliberty.php?id=ls.00092&keyword=was&show=all
*/

//Example of input: content.php?id=ls.00001


// *** Set required prefix of image id (for validation):
$IdPrefix = 'lby.';

// *** Set required total id Length in characters (for validation):
$IdLength = 9;



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
$keyword = '222222222';

if ($keyword=='*') $keyword='';
$keyword= str_replace('~', '', $keyword);
$keyword= str_replace('@', '', $keyword);
$keyword= str_replace('#', '', $keyword);
$keyword= str_replace('$', '', $keyword);
$keyword= str_replace('%', '', $keyword);
$keyword= str_replace('^', '', $keyword);
$keyword= str_replace('&', '', $keyword);
$keyword= str_replace('>', '', $keyword);
$keyword= str_replace('<', '', $keyword);
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
$xslname = "&_xslsrc=http://libr.unl.edu:2000/liberty/liberty.xsl";



readfile( $dbname . urlencode('declare namespace tf = "http://namespaces.softwareag.com/tamino/TaminoFunction"
 let $id := \''
. $fileID .
'\' let $thedocument := input()/lTEI.2[@id=$id]
let $likefiles := (for $each in $thedocument/:text/body/div1[@type=\'file references\']/list/item/xptr return input()/lcategory[@name=\'all\']/item[@id eq $each/@n])
let $ref := tf:createTextReference($thedocument, "' . $keyword . '")
return <result ref="none" keyword="'. $keyword .'" show="' .$showall. '">{tf:highlight($thedocument, $ref, "REV_DISC")}<related id="closely">{$likefiles}</related></result>') . $xslname);
exit;
}

 //If keyword is null 


if ((strlen($fileID) == $IdLength) && (strstr($fileID, $IdPrefix) == $fileID) && ($keyword == '') )
{

$dbname = "http://libr.unl.edu/examples/servlet/transform/tamino/Library/loveandseduction?&_XQUERY=";
$xslname = "&_xslsrc=http://libr.unl.edu:2000/liberty/liberty.xsl";

readfile( $dbname . urlencode('declare namespace tf = "http://namespaces.softwareag.com/tamino/TaminoFunction" let $id := \''
. $fileID . 'let $likefiles := (for $each in $thedocument/:text/body/div1[@type=\'file references\']/list/item/xptr return input()/lcategory[@name=\'all\']/item[@id eq $each/@n]) return <result ref="none" show="' .$showall. '">{$thedocument}<related id="closely">{$likefiles}</related></result>'). $xslname);
exit;

}



//if fileId is null 

if ( $fileId == 'error')
{

$dbname = "http://libr.unl.edu/examples/servlet/transform/tamino/Library/loveandseduction?&_XQUERY=";
$xslname = "&_xslsrc=http://libr.unl.edu:2000/liberty/liberty.xsl";

readfile( $dbname . urlencode('declare namespace tf = "http://namespaces.softwareag.com/tamino/TaminoFunction"
 let $id := \''
. $fileID .
'\' let $thedocument := input()/lTEI.2[@id=$id]
let $likefiles := (for $each in $thedocument/:text/body/div1[@type=\'file references\']/list/item/xptr return return <result ref="none" show="' .$showall. '">{$thedocument}<related id="closely">{$likefiles}</related></result>'). $xslname);
exit;
}
else
{
echo("<h1>Error</h1>");


echo('hello');

exit();
}

?>