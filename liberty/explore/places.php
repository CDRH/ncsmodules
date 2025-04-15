<?php

require_once( "../../globals/globals.inc.php" );

function redirectAndSearch( $value, $override=FALSE ) {
  if( !$override )
				$URL = SOLR_BASE_HREF . "ncs_liberty/select?" .
						"indent=on&" .
						"version=2.2&" .
						"q=(place:" . $value . ")&" .
						"start=0&" .
						"rows=10&" .
						"fl=id,score,title&" .
						"qt=standard&" .
						"wt=xslt&" .
						"tr=search.xsl&" .
						"explainOther=&hl=on&" .
						"echoParams=all&" .
						"hl.fl=text";
  else
				$URL = SOLR_BASE_HREF . "liberty/select?" .
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

$themeName = '';
if( isset( $_GET['name'] ) )
  $themeName = $_GET['name'];


if( $themeName != '' ) {
		$validNames = array(
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
						'washington'
				);

  print( $themeName );
  if( in_array( $themeName, $validNames ) ) {
			 redirectAndSearch( $themeName );
  } else if( $themeName == 'othercountry' ) {
		  redirectAndSearch( '-place:american AND -place:british AND -place:french', TRUE );
  } else {
		  print( "<h1>Error with name category</h1>" );
    print( "<h2><a href='places.php'>go back</a></h2>");
				exit();
  }
} else {
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="<?php print( IL_BASE_HREF );?>" />
<title>Icons of Liberty: Countries
</title><link rel="stylesheet" media="screen, projection, tv" type="text/css" href="liberty.css" />
<link rel="stylesheet" media="print" type="text/css" href="libertyprint.css" /><script type="text/javascript" src="anylink.js"></script></head><body>
<div id="body">


<div class="article">

<h1>Geographic Locations</h1>

<p class="intro">
The geographic locations in this section give the country of origin of materials cited in each of the genres and topics.  Many paintings, sculptures, and commentaries about the American Revolution, for example, originated in European countries, and Americans created many icons in honor of French contributions to the American cause.  This site will allow students to review the contributions from different countries to the genres and topics addressing the theme of Liberty.
</p>

<ul>

<li>
<h2><a href="explore/places.php?name=american">
United States</a></h2>
</li>
<li>
<h2><a href="explore/places.php?name=british">
Britain</a></h2>
</li>
<li>
<h2><a href="explore/places.php?name=french">
France</a></h2>
</li>
<li>
<h2><a href="explore/places.php?name=othercountry">
Other Countries</a></h2>
</li>

</ul>

<p class="intro" style="height: 300px;">
<div id="footer"><a href="mailto:cdrh@unl.edu"><strong>Comments??</strong></a> &#160;| <a href="<?php print( NCSM_BASE_HREF );?>">Project Homepage <img src="images/home.gif" /></a></div>
</p>
</div>




</div><div id="menu"><img alt="19th Century Studies: Icons of Liberty" src="images/liberty.jpg" width="212" height="374" />
  <ul><li><a href="index.php">Home</a><a href="introduction.php">Introduction</a></li><li><img alt="Contexts and Themes" src="images/browse.gif" /></li>
  <li><a href="explore/genres.php" onmouseover="dropdownmenu(this, event, 'genres')">Genre &gt;</a><a href="explore/topics.php" onmouseover="dropdownmenu(this, event, 'topics')">Topic &gt;</a><a href="explore/countries.php" onmouseover="dropdownmenu(this, event, 'countries')">Country &gt;</a></li><li><img alt="Contexts and Themes" src="images/search.gif" /></li>
  </ul><form action="search/search.php"><p class="search"><input name="keyword" id="keyword" type="text" size="20" />
  <input type="submit" value="Go" />
  <br />
  <a href="search/index.php">Advanced Search</a></p></form><p style="text-align: left;"><img alt="University of Nebraska - Lincoln" src="images/unl.gif" /></p>
</div><div id="topics" class="anylinkcss">
<a href="explore/moments.php">Moments in History</a>
<a href="explore/figures.php">Historical Figures</a>
<a href="explore/nations.php">Nations</a>
<a href="explore/images.php">Images of Liberty</a>
<a href="explore/topics.php?name=icon">Iconography</a>
<a href="explore/topics.php?name=individual">Individual Liberty</a>
<a href="explore/movements.php">Political Movements</a>
<a href="explore/topics.php?name=gender">Gendered Icons</a>
<a href="explore/topics.php?name=dissenting">Dissenting Voices</a>
</div><div id="genres" class="anylinkcss"><a href="explore/genres.php?name=coins"><img src="illustrations/coins.gif" />&nbsp;Coins</a><a href="explore/genres.php?name=commentary"><img src="illustrations/commentary.gif" />&nbsp;Commentary</a><a href="explore/genres.php?name=fiction"><img src="illustrations/fiction.gif" />&nbsp;Fiction</a><a href="explore/genres.php?name=history"><img src="illustrations/history.gif" />&nbsp;Historical documents</a><a href="explore/genres.php?name=illustrations"><img src="illustrations/illustrations.gif" />&nbsp;Illustrations &amp; Cartoons</a><a href="explore/genres.php?name=paintings"><img src="illustrations/paintings.gif" />&nbsp;Paintings</a><a href="explore/genres.php?name=poetry"><img src="illustrations/poetry.gif" />&nbsp;Poetry</a><a href="explore/genres.php?name=sculpture"><img src="illustrations/sculpture.gif" />&nbsp;Sculpture</a><a href="explore/genres.php?name=seals"><img src="illustrations/seals.gif" />&nbsp;Seals</a></div>
<div id="countries" class="anylinkcss"><a href="explore/places.php?name=american">United States</a><a href="explore/places.php?name=british">Britain</a><a href="explore/places.php?name=french">France</a><a href="explore/places.php?name=othercountry">Other Countries</a></div></body></html>
<?php
}
?>
