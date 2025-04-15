<?php
require_once( "../../globals/globals.inc.php" );
?>
<html><head><META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"><base href="<?php print( LS_BASE_HREF );?>"><title>Scenes of Seduction: Search</title><style type="text/css">
@import "scenes.css";

</style></head><body><div id="body"><div class="article"><p class="icons"></p><h1>Search for a Scene</h1>

<form action="search/search.php">

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

<p><label for="setting">Spatial Setting </label>
</p>
</td>
<td>
<p>
<select name="setting" id="setting">

<option value="" default="default" />
<option value="boudoir" id="boudoir">In the Boudoir</option>
<option value="countrywalk" id="countrywalk">On a Country Walk</option>
<option value="garden" id="garden">In a Garden</option>
<option value="parlor" id="parlor">In the Parlor</option>
<option value="party" id="party">At a Dance or Party</option>
<option value="pains" id="piano">At the Piano</option>
<option value="publicspace" id="publicspace">In Public Spaces</option>
<option value="carriage" id="carriage">In a Carriage or Train</option>
<option value="urbanwalk" id="urbanwalk">On an Urban Walkway</option>
<option value="wild" id="wild">In the Wild</option>
</select>
</p>
</td>
</tr>
<tr>
<td align="right">
<p><label for="theme">Common Theme</label></p>
</td>
<td>
<p>
<select id="theme" name="theme">

<option value="" default="default" />
<option value="adultery" id="adultery">Adultery</option>
<option value="arrangedmarriage" id="arrangedmarriage">Arranged Marriage</option>
<option value="popularpress" id="popularpress">Popular Press</option>
<option value="breachofpromise" id="breachofpromise">Breach of Promise</option>
<option value="class" id="class">Class</option>
<option value="courtship" id="courtship">Courtship</option>
<option value="divorce" id="divorce">Divorce</option>
<option value="premaritalsex" id="premaritalsex">Premarital Sex</option>
<option value="prostitution" id="prostitution">Prostitution</option>
<option value="seduction" id="seduction">Seduction</option>
</select>
</p>
</td>
</tr>
<tr><td><p>&nbsp;</p></td><td /></tr>
<tr>
<td align="right">
<p><label for="category">Category</label></p>
</td>
<td>
<p>
<select id="category" name="category">

<option value="" default="default" />
<option value="fiction" id="fiction">Fiction</option>
<option value="history" id="history">History</option>
<option value="image" id="images">Art &amp; Illustration</option>
<option value="commentary" id="commentary">Commentary</option>
</select>

</p>
</td>
</tr>
<tr>
<td align="right">
<p><label for="nationality">Nationality</label></p>
</td>
<td>
<p>
<select id="nationality" name="nationality">

<option value="" default="default" />
<option value="american" id="american">American</option>
<option value="british" id="british">British</option>
<option value="french" id="french">French</option>

</select>
</p>
</td>
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

<p>Searches are not case sensitive. For example: <em>henry ward beecher</em> will come up with the same results as <em>Henry Ward Beecher</em>. </p>


</div><div id="related"><p></p></div></div><div id="menu"><img alt="19th Century Studies: Scenes of Love and Seduction" src="images/bigtest.jpg"><ul><li><a href="index.html">Home</a></li><li><a href="introduction.php">Intoroduction</a></li><li><img alt="Contexts and Themes" src="images/context.gif"></li><li><a href="explore/settings.php">Spatial Setting</a></li><li><a href="explore/themes.php">Theme</a></li><li><img alt="Browse by content type" src="images/content.gif"></li><li><a href="explore/genres.php?name=fiction">Fiction&nbsp;<img alt="Fiction" src="images/fiction.gif"></a></li><li><a href="explore/genres.php?name=image">Art &amp; Illustration&nbsp;<img alt="Art and Illustration" src="images/image.gif"></a></li><li><a href="explore/genres.php?name=history">History&nbsp;<img alt="History" src="images/history.gif"></a></li><li><a href="explore/genres.php?name=commentary">Further Reading&nbsp;<img alt="Commentary" src="images/commentary.gif"></a></li></ul><form action="search/search.php"><p class="search"><a href="search/index.php"><img alt="Search" src="images/search.gif">SEARCH</a><br><br><input name="keyword" id="keyword" type="text" size="20"><input type="submit" value="Go"></p></form><p style="text-align: left;"><img alt="University of Nebraska - Lincoln" src="images/unl.gif"></p></div></body></html>
