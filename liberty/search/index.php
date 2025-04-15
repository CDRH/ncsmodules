<?php
  require_once( '../../globals/globals.inc.php' );
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

<h1>Search documents</h1>

<form action="search/search.php" method="get">

<table border="0">
<tr><td><p>&nbsp;</p></td><td /></tr>
<tr>
<td align="right">
<p>
<b><label for="keyword">Keyword </label></b></p>
</td>
<td>
<p>
<input type="text" name="keyword" id="keyword" size="40" />
</p>
</td>
</tr>
<tr><td><p>&nbsp;</p></td><td/></tr>
<tr>
<td align="right">

<p><label for="genre">Genre</label>
</p>
</td>
<td>
<p>
<select name="genre" id="genre">

<option value="" default="default" />
<option value="coins" id="coins">coins</option>
<option value="commentary" id="commentary">commentary</option>
<option value="fiction" id="fiction">fiction</option>
<option value="history" id="history">history</option>
<option value="illustrations" id="illustrations">illustrations and cartoons</option>
<option value="paintings" id="paintings">paintings</option>
<option value="poetry" id="poetry">poetry</option>
<option value="sculpture" id="sculpture">sculpture</option>
<option value="seals" id="seals">seals</option>


</select>
</p>
</td>
</tr>
<tr>
<td align="right">
<p><label for="theme">Topic</label></p>
</td>
<td>
<p>
<select id="topic" name="topic">


<option value="" default="default" />
<option value="americanrevolution" id="americanrevolution">americanrevolution</option>
<option value="civilwar" id="civilwar">civilwar</option>
<option value="dissenting" id="dissenting">dissenting</option>
<option value="emancipation" id="emancipation">emancipation</option>
<option value="frenchrevolution" id="frenchrevolution">frenchrevolution</option>
<option value="gender" id="gender">gender</option>
<option value="icon" id="icon">icon</option>
<option value="individual" id="individual">individual</option>
<option value="italy" id="italy">italy</option>
<option value="jefferson" id="jefferson">jefferson</option>
<option value="liberalism" id="liberalism">liberalism</option>
<option value="libertybell" id="libertybell">libertybell</option>
<option value="libertycap" id="libertycap">libertycap</option>
<option value="lincoln" id="lincoln">lincoln</option>
<option value="mill" id="mill">mill</option>
<option value="napoleon" id="napoleon">napoleon</option>
<option value="poland" id="poland">poland</option>
<option value="radicalism" id="radicalism">radicalism</option>
<option value="rev1830" id="rev1830">rev1830</option>
<option value="rev1848" id="rev1848">rev1848</option>
<option value="russia" id="russia">russia</option>
<option value="spain" id="spain">spain</option>
<option value="statueofliberty" id="statueofliberty">statueofliberty</option>
<option value="switzerland" id="switzerland">switzerland</option>
<option value="wales" id="wales">wales</option>
<option value="washington" id="washington">washington</option>
</select>
</p>
</td>
</tr>
<tr>
<td align="right">
<p><label for="category">Country</label></p>
</td>
<td>
<p>
<select id="place" name="place">

<option value="" default="default" />
<option value="american" id="american">american</option>
<option value="belgian" id="belgian">belgian</option>
<option value="british" id="british">british</option>
<option value="ecuadoran" id="ecuadoran">ecuadoran</option>
<option value="french" id="french">french</option>
<option value="german" id="german">german</option>
<option value="italian" id="italian">italian</option>
<option value="spanish" id="spanish">spanish</option>
<option value="welsh" id="welsh">welsh</option>
</select>

</p>
</td>
</tr>
<tr>

</tr>
<tr><td><p>&nbsp;</p></td><td /></tr>

<tr><td><p>&nbsp;</p></td><td><p><input type="submit" value="Search" /></p></td></tr>
</table>


</form>



<h2>Search help</h2>

<h3>Basic search</h3>

<p>Simply enter the word you wish to find and the search engine will search for every instance of the word in the source material. For example: Fight. All instances of the use of the word fight will show up on the results page. 
</p>

<h3>Wildcard search</h3>

<p>Using a wildcard (*) will increase the odds of finding the results you are seeking. For example: <em>Fight*</em>. The search results will display every instance of fight, fights, fighting, etc. More than one wildcard may be used.</p>

<h3>Capitalization</h3>

<p>Searches are not case sensitive. For example: <em>napoleon* wars</em> will come up with the same results as <em>Napoleon* Wars</em>. </p>


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
<a href="explore/themes.php?name=icon">Iconography</a>
<a href="explore/themes.php?name=individual">Individual Liberty</a>
<a href="explore/movements.php">Political Movements</a>
<a href="explore/themes.php?name=gender">Gendered Icons</a>
<a href="explore/themes.php?name=dissenting">Dissenting Voices</a>
</div>

<div id="genres" class="anylinkcss"><a href="explore/themes.php?name=coins"><img src="illustrations/coins.gif" />&nbsp;Coins</a><a href="explore/themes.php?name=commentary"><img src="illustrations/commentary.gif" />&nbsp;Commentary</a><a href="explore/themes.php?name=fiction"><img src="illustrations/fiction.gif" />&nbsp;Fiction</a><a href="explore/themes.php?name=history"><img src="illustrations/history.gif" />&nbsp;Historical documents</a><a href="explore/themes.php?name=illustrations"><img src="illustrations/illustrations.gif" />&nbsp;Illustrations &amp; Cartoons</a><a href="explore/themes.php?name=paintings"><img src="illustrations/paintings.gif" />&nbsp;Paintings</a><a href="explore/themes.php?name=poetry"><img src="illustrations/poetry.gif" />&nbsp;Poetry</a><a href="explore/themes.php?name=sculpture"><img src="illustrations/sculpture.gif" />&nbsp;Sculpture</a><a href="explore/themes.php?name=seals"><img src="illustrations/seals.gif" />&nbsp;Seals</a></div>
<div id="countries" class="anylinkcss"><a href="explore/themes.php?name=american">United States</a><a href="explore/themes.php?name=british">Britain</a><a href="explore/themes.php?name=french">France</a><a href="explore/themes.php?name=othercountry">Other Countries</a></div>

</body></html>
