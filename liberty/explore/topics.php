<?php

require_once( "../../globals/globals.inc.php" );

function redirectAndSearch( $value ) {
  $URL = SOLR_BASE_HREF . "ncs_liberty/select?" .
				"indent=on&" .
				"version=2.2&" .
				"q=(topic:" . $value . ")&" .
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
						'washington',
						'othercountry'
				);

  if( in_array( $themeName, $validNames ) ) {
			 redirectAndSearch( $themeName );
  } else {
		  print( "<h1>Error with name category</h1>" );
    print( "<h2><a href='genres.php'>go back</a></h2>");
				exit();
  }
} else {
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="<?php print( IL_BASE_HREF );?>" />
<title>Icons of Liberty: Topics
</title><link rel="stylesheet" media="screen, projection, tv" type="text/css" href="liberty.css" />
<link rel="stylesheet" media="print" type="text/css" href="libertyprint.css" /><script type="text/javascript" src="anylink.js"></script></head><body>
<div id="body">


<div class="article">
<h1 class="theme">Topics</h1>


<p class="intro">
Iconic representations of Liberty as a concept are necessarily widespread in their use and understanding and evocative of larger meanings than may be accurately ascribed to a particular historical incident or figure.  The topics in this section were selected because they function as tropes for these wider implications.  The iconic power of Liberty, or Columbia as she was often called, of  <a href="explore/topics.php?name=washington">Washington</a> or <a href="explore/topics.php?name=lincoln">Lincoln</a>, of the <a href="explore/topics.php?name=libertybell">Liberty Bell</a> or the <a href="explore/topics.php?name=americanrevolution">American</a> and <a href="explore/topics.php?name=frenchrevolution">French Revolutions</a>, are abstract but culturally defining, extending in their emotional impact much beyond the historical moment out of which they arose.  <a href="explore/topics.php?name=washington">George Washington</a> as icon has, for example, come to symbolize the <a href="explore/topics.php?name=americanrevolution">American Revolution</a>, Independence, the Founding Father of American government, love of country, honesty, the capitol, and the success of the new nation.  He is on dollar bills, noble monuments, and sale ads in newspapers on his birthday. Whole states and countless towns bear his name.  Icons are so prevalent in a culture that people may forget the details of their meaning but retain the emotional response to what they represent. These icons of Liberty influenced the imagination of the century,  coloring the interpretations cultures made of their history.  New generations in turn revised the meaning assigned to the icons.  The most durable icons retained their power throughout the nineteenth century, altering their emphasis as historical events gave new perspectives to the idea of Liberty.
</p>



<ul>

<li>
<h2><a href="explore/moments.php">
Moments in History
</a></h2>

<ul>
<li>
<a href="explore/topics.php?name=americanrevolution">
American Revolution</a>
</li>
<li>
<a href="explore/topics.php?name=frenchrevolution">
French Revolution</a>
</li>
<li>
<a href="explore/topics.php?name=rev1830">
Revolutions of 1830</a>
</li>
<li>
<a href="explore/topics.php?name=rev1848">
Revolutions of 1848</a>
</li>
<li>
<a href="explore/topics.php?name=civilwar">
Civil War</a>
</li>
</ul>

</li>
<li>
<h2><a href="explore/figures.php">
Historical Figures
</a></h2>

<ul>

<li>
<a href="explore/topics.php?name=washington">
Washington</a>
</li>

<li>
<a href="explore/topics.php?name=jefferson">
Jefferson</a>
</li>

<li>
<a href="explore/topics.php?name=napoleon">
Napoleon</a>
</li>

<li>
<a href="explore/topics.php?name=lincoln">
Lincoln</a>
</li>

<li>
<a href="explore/topics.php?name=mill">
Mill</a>
</li>



</ul>



</li>
<li>
<h2><a href="explore/nations.php">
Nations
</a></h2>

<ul>


<li>
<a href="explore/topics.php?name=italy">
Italy</a>
</li>

<li>
<a href="explore/topics.php?name=poland">
Poland</a>
</li>

<li>
<a href="explore/topics.php?name=russia">
Russia</a>
</li>

<li>
<a href="explore/topics.php?name=spain">
Spain</a>
</li>

<li>
<a href="explore/topics.php?name=switzerland">
Switzerland</a>
</li>

<li>
<a href="explore/topics.php?name=wales">
Wales</a>
</li>



</ul>



</li>
<li>
<h2><a href="explore/images.php">
Images of Liberty
</a></h2>

<ul>

<li>
<a href="explore/topics.php?name=libertycap">
Liberty Cap</a>
</li>
<li>
<a href="explore/topics.php?name=libertybell">
Liberty Bell</a>
</li>

<li>
<a href="explore/topics.php?name=statueofliberty">
Statues of Liberty</a>
</li>

</ul>



</li>
<li>
<h2><a href="explore/topics.php?name=icon">
Iconography
</a></h2></li>
<li>
<h2><a href="explore/topics.php?name=individual">
Individual Liberty
</a></h2></li>
<li>
<h2><a href="explore/movements.php">
Political Movements
</a></h2>

<ul>
<li>
<a href="explore/topics.php?name=emancipation">
Emancipation</a>
</li>
<li>
<a href="explore/topics.php?name=liberalism">
Liberalism</a>
</li>
<li>
<a href="explore/topics.php?name=radicalism">
Radicalism</a>
</li>
</ul>


</li>
<li>
<h2><a href="explore/topics.php?name=gender">
Gendered Icons
</a></h2></li>
<li>
<h2><a href="explore/topics.php?name=dissenting">
Dissenting Voices
</a></h2></li>

</ul>

<p class="intro" style="height: 50px;">
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
</div>

<div id="topics" class="anylinkcss">
<a href="explore/moments.php">Moments in History</a>
<a href="explore/figures.php">Historical Figures</a>
<a href="explore/nations.php">Nations</a>
<a href="explore/images.php">Images of Liberty</a>
<a href="explore/topics.php?name=icon">Iconography</a>
<a href="explore/topics.php?name=individual">Individual Liberty</a>
<a href="explore/movements.php">Political Movements</a>
<a href="explore/topics.php?name=gender">Gendered Icons</a>
<a href="explore/topics.php?name=dissenting">Dissenting Voices</a>
</div>

<div id="genres" class="anylinkcss"><a href="explore/genres.php?name=coins"><img src="illustrations/coins.gif" />&nbsp;Coins</a><a href="explore/genres.php?name=commentary"><img src="illustrations/commentary.gif" />&nbsp;Commentary</a><a href="explore/genres.php?name=fiction"><img src="illustrations/fiction.gif" />&nbsp;Fiction</a><a href="explore/genres.php?name=history"><img src="illustrations/history.gif" />&nbsp;Historical documents</a><a href="explore/genres.php?name=illustrations"><img src="illustrations/illustrations.gif" />&nbsp;Illustrations &amp; Cartoons</a><a href="explore/genres.php?name=paintings"><img src="illustrations/paintings.gif" />&nbsp;Paintings</a><a href="explore/genres.php?name=poetry"><img src="illustrations/poetry.gif" />&nbsp;Poetry</a><a href="explore/genres.php?name=sculpture"><img src="illustrations/sculpture.gif" />&nbsp;Sculpture</a><a href="explore/genres.php?name=seals"><img src="illustrations/seals.gif" />&nbsp;Seals</a></div>
<div id="countries" class="anylinkcss"><a href="explore/topicplacesphp?name=american">United States</a><a href="explore/places.php?name=british">Britain</a><a href="explore/places.php?name=french">France</a><a href="explore/places.php?name=othercountry">Other Countries</a></div>

</body></html>
<?php
}
?>
