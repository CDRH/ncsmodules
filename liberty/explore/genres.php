<?php

require_once( "../../globals/globals.inc.php" );

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
<title>Icons of Liberty: Genres
</title><link rel="stylesheet" media="screen, projection, tv" type="text/css" href="liberty.css" />
<link rel="stylesheet" media="print" type="text/css" href="libertyprint.css" /><script type="text/javascript" src="anylink.js"></script></head><body>
<div id="body">


<div class="article">

<h1 class="theme">Genres</h1>

<p class="intro">
Liberty as a concept was so important to the nineteenth century's way of thinking that it shows up in almost every genre and in almost every country in North America and Europe.  The consequences of the <a href="explore/topics.php?name=americanrevolution">American</a> and <a href="explore/topics.php?name=frenchrevolution">French Revolutions</a> reverberated into the new century, and the revolutions in Europe in 1830 and 1848 kept the vitality of the theme of Liberty in the forefront of the cultural imagination.  In the United States the emblems of a new nation were taking shape, and icons of liberty were on coins, state seals, buildings, and statuary.  Cartoons in the press might debunk the iconic excesses, but engravings, paintings, and sculptures institutionalized and sanctioned the glorification of the Spirit of Liberty.  By mid-century the traditional icons of liberty, such as the <a href="explore/topics.php?name=libertycap">Liberty Cap</a> and <a href="explore/topics.php?name=libertybell">Bell</a>, took on new life in the literature of the antislavery movements.  American abolitionists adapted the rhetoric of the American Revolution to justify their cause in sermons, songs, and poems.  The historical documents from the nineteenth century include some of the most noted writers who have defined our philosophical and emotional understanding of liberty: <a href="explore/topics.php?name=mill">John Stuart Mill</a>, <a href="explore/topics.php?name=jefferson">Thomas Jefferson</a>, <a href="content.php?id=lby.00035">Frederick Douglass</a>, <a href="">Margaret Fuller</a>, <a href="explore/topics.php?name=lincoln">Abraham Lincoln</a>, <a href="content.php?id=lby.00065">Ralph Waldo Emerson</a>, <a href="content.php?id=lby.00063">Alex de Tocqueville</a>, and poems by <a href="">William Blake</a>, <a href="content.php?id=lby.00062">William Wordsworth</a>, <a href="content.php?id=lby.00013">Lord Byron</a>, and <a href="content.php?id=lby.00015">Percy Bysshe Shelley</a>. 
</p>

<p class="intro">
Perhaps the most resonant visual  image of revolution was <a href="content.php?id=lby.00117">Eugène Delacroix's "The 28th of July: Liberty Leading the People,"</a> which serves as the icon for this unit of Nineteenth-Century Studies: Resources for an Interdisciplinary Curriculum.  The central figure of Liberty, wearing the pileus (<a href="">cap</a>) and draped in the white of her purity,  is the revolutionary female, young, vital, and ready to storm the Bastille to crush the tyrant. Carrying the flag of France, she rallies the people to the battle.  Either in word or image the different genres represented in this section illustrate variations on this theme.
</p>  


<ul>

<li>
<h2><a href="explore/genres.php?name=illustrations">
Cartoons</a></h2>
</li>

<li>
<h2><a href="explore/genres.php?name=coins">
Coins</a></h2>
</li>

<li>
<h2><a href="explore/genres.php?name=fiction">
Fiction</a></h2>
</li>

<li>
<h2><a href="explore/genres.php?name=history">
History</a></h2>
</li>

<li>
<h2><a href="explore/genres.php?name=paintings">
Paintings</a></h2>
</li>

<li>
<h2><a href="explore/genres.php?name=poetry">
Poetry</a></h2>
</li>

<li>
<h2><a href="explore/genres.php?name=sculpture">
Sculpture</a></h2>
</li>

<li>
<h2><a href="explore/genres.php?name=seals">
Seals</a></h2>
</li>


</ul>

</div>



<div id="footer"><a href="mailto:cdrh@unl.edu"><strong>Comments??</strong></a> &#160;| <a href="<?php print( NCSM_BASE_HREF );?>">Project Homepage <img src="images/home.gif" /></a></div>
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
<div id="countries" class="anylinkcss"><a href="explore/places.php?name=american">United States</a><a href="explore/places.php?name=british">Britain</a><a href="explore/places.php?name=french">France</a><a href="explore/places.php?name=othercountry">Other Countries</a></div>

</body></html>
<?php
}
?>
