<?php
  require_once( '../globals/globals.inc.php' );
?>
<html><head><META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">

<title>Nineteenth-Century Studies: Icons of Liberty</title>

<link rel="stylesheet" media="screen, projection, tv" type="text/css" href="liberty.css" />
<link rel="stylesheet" media="print" type="text/css" href="libertyprint.css" />


<script type="text/javascript" src="anylink.js"></script>

<style type="text/css">
li a {display: block; margin-right: 20px; padding-top: 5px;}
li {margin-top: 0px;}
div.anylinkcss {margin-left: 205px;} 
</style></head><body style="text-align: center; margin: auto;">


<div style="width: 423px; margin-top: 30px; margin-right: auto; margin-left: auto;">

<img src="images/intro.gif" />

<table width="100%">
<tr>

<td align="right" valign= "top">
<ul style="padding: 0px; margin: 10px 0px 20px 0px; text-align: right; ">
<li><a href="introduction.php">Introduction</a></li>

<li><img  alt="Contexts and Themes" src="images/browse.gif" /></li>

<li><a href="explore/genres.php" onMouseover="dropdownmenu(this, event, 'genres')">Genre &gt;</a>

<a href="explore/topics.php" onMouseover="dropdownmenu(this, event, 'topics')">Topic &gt;</a><a href="explore/countries.php" onMouseover="dropdownmenu(this, event, 'countries')">Country &gt;</a></li>

<li><img  alt="Contexts and Themes" src="images/search.gif" /></li>
</ul>
<p style="text-align: left; margin-left: 10px;">
<form action="search/search.php">
<small>Search source documents:</small><br/>
<input name="keyword" id="keyword" type="text" size="20"><input type="submit" value="Go">
<br />
<a href="search/index.php">Advanced Search</a>
</form>
</p>
</td>
<td align="left" valign= "top">

<img src="images/intropic.jpg" />
</td>

</tr>
</table>
<div id="topics" class="anylinkcss" style="text-align: left">
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

<div id="genres" class="anylinkcss" style="text-align: left">
<a href="explore/genres.php?name=coins"><img src="illustrations/coins.gif" />&#160;Coins</a> 
<a href="explore/genres.php?name=commentary"><img src="illustrations/commentary.gif" />&#160;Commentary</a> 
<a href="explore/genres.php?name=fiction"><img src="illustrations/fiction.gif" />&#160;Fiction</a> 
<a href="explore/genres.php?name=history"><img src="illustrations/history.gif" />&#160;Historical documents</a> 
<a href="explore/genres.php?name=illustrations"><img src="illustrations/illustrations.gif" />&#160;Illustrations &amp; Cartoons</a> 
<a href="explore/genres.php?name=paintings"><img src="illustrations/paintings.gif" />&#160;Paintings</a> 
<a href="explore/genres.php?name=poetry"><img src="illustrations/poetry.gif" />&#160;Poetry</a> 
<a href="explore/genres.php?name=sculpture"><img src="illustrations/sculpture.gif" />&#160;Sculpture</a> 
<a href="explore/genres.php?name=seals"><img src="illustrations/seals.gif" />&#160;Seals</a> 

</div>

<div id="countries" class="anylinkcss" style="text-align: left">

<a href="explore/places.php?name=american">United States</a> 
<a href="explore/places.php?name=british">Britain</a> 
<a href="explore/places.php?name=french">France</a> 
<a href="explore/places.php?name=othercountry">Other Countries</a> 

</div>
<div style="width: 100%; margin: 10px 0px 10px 0px; padding: 10px 0px 15px 0px; border: solid #782C25; border-width: 0px 0px 2px 0px;">
<p style="text-align: left; text-indent: 2em;">
<em>Icons of Liberty</em> is one module within the Nineteenth-Century Studies <a href="<?php print( NCSM_BASE_HREF );?>" style="font-size: .9em;">Resources for an Interdisciplinary Curriculum</a>. Documents in this module are categorized by <a href="explore/countries.php" style="font-size: .9em;">country</a>, <a href="explore/genres.php" style="font-size: .9em;">genre</a>, and <a href="explore/topics.php" style="font-size: .9em;">topic</a>. Additional groupings are available via the <a href="search/index.php" style="font-size: .9em;">Advanced Search</a>.</p>
<p style="text-align: left; text-indent: 0em;">
<a href="<?php print( NCSM_BASE_HREF );?>classapplications.html">Classroom Applications</a>
<br />
<a href="<?php print( NCSM_BASE_HREF );?>">Project Homepage</a>
<br />
<a href="mailto:cdrh@unl.edu">Comments??</a>
</p>
</div>
</div>

<p style="margin-bottom: 20px;">
<img src="images/UNLColor.gif" />
</p>

</body></html>
