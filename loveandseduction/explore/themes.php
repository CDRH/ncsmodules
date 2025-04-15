<?php
require_once( "../../globals/globals.inc.php" );

function redirectAndSearch( $value ) {
  $URL = SOLR_BASE_HREF . "ncs_loveandseduction/select?" .
				"indent=on&" .
				"version=2.2&" .
				"q=theme:" . $value . "&" .
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

if( isset( $_GET['name'] ) && $_GET['name'] != "" ) {
  //Example of input: content.php?id=ls.00001

  $themeName = $_GET['name'];

  if ( is_null($themeName) || ($themeName == "")) {
		  print( "<h1>Error with name category</h1>" );
    print( "<h2><a href='" . LS_BASE_HREF . ">go home</a></h2>");
    exit();
  }

		$valid_names = array(
				'boudoir',
				'countrywalk',
				'garden',
				'parlor',
				'dance',
				'piano',
				'publicspace',
				'carriage',
				'urbanwalk',
				'wild',
				'adultery',
				'scandals',
				'breachofpromise',
				'class',
				'courtship',
				'divorce',
				'premaritalsex',
				'popularpress',
				'prostitution',
				'seduction',
				'arrangedmarriage',
				'fiction',
				'commentary',
				'image',
				'history'
		);

  if( in_array( $themeName, $valid_names ) ) {
			 redirectAndSearch( $themeName );
  } else {
		  print( "<h1>Error with name category</h1>" );
    print( "<h2><a href='settings.php'>go back</a></h2>");
				exit();
  }
} else {
?>
<html xmlns:ino="http://namespaces.softwareag.com/tamino/response2" xmlns:xq="http://namespaces.softwareag.com/tamino/XQuery/result" xmlns:xql="http://metalab.unc.edu/xql/"><head><META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"><base href="<?php print( LS_BASE_HREF ); ?>"><title>Scenes of Seduction: Common Themes</title><style type="text/css">
@import "scenes.css";

</style></head><body><div id="body"><div class="article"><p class="icons"></p><h1 class="theme">Common Themes</h1>
<ul class="theme">

<li>

<a href="explore/themes.php?name=adultery">
<img src="images/themes/small/adultery.gif">&nbsp;&nbsp;
Adultery</a>

</li>

<li>

<a href="explore/themes.php?name=arrangedmarriage">
<img src="images/themes/small/arrangedmarriage.gif">&nbsp;&nbsp;
Arranged Marriage</a>

</li>


<li>

<a href="explore/themes.php?name=breachofpromise">
<img src="images/themes/small/breachofpromise.gif">&nbsp;&nbsp;
Breach of Promise</a>

</li>


<li>

<a href="explore/themes.php?name=class">
<img src="images/themes/small/class.gif">&nbsp;&nbsp;
Class</a>

</li>

<li>

<a href="explore/themes.php?name=courtship">
<img src="images/themes/small/courtship.gif">&nbsp;&nbsp;
Courtship</a>

</li>


<li>

<a href="explore/themes.php?name=divorce">
<img src="images/themes/small/divorce.gif">&nbsp;&nbsp;
Divorce</a>

</li>


<li>

<a href="explore/themes.php?name=popularpress">
<img src="images/themes/small/popularpress.gif">&nbsp;&nbsp;
Popular Press</a>

</li>

<li>

<a href="explore/themes.php?name=premaritalsex">
<img src="images/themes/small/premaritalsex.gif">&nbsp;&nbsp;
Premarital Sex</a>

</li>

<li>

<a href="explore/themes.php?name=prostitution">
<img src="images/themes/small/prostitution.gif">&nbsp;&nbsp;
Prostitution</a>

</li>

<li>

<a href="explore/themes.php?name=seduction">
<img src="images/themes/small/seduction.gif">&nbsp;&nbsp;
Seduction</a>

</li>
</ul>


<p class="intro">Different spatial settings could provide the stage for proper or improper conduct, but it was the actions and emotions of people in those settings that determined if the courtship would end in a happy marriage or a searing divorce, if a lover would be faithful or betray, if sexual activity was restrained or out of control. This section of Scenes of Love and Seduction explores several themes in romantic relations from literature and art and instances that illustrate these same themes in the popular press.  The expression of love and the practices of seduction sometimes led to premarital sex, sometimes to engagement and marriage, sometimes to abandonment, breach of promise suits, or prostitution.  Broken promises of engagement were of such serious import for a woman that she might well feel that exposure of her personal life in court and in the press was worth it to clear her name.  Seeking remedy for wrongs through a breach of promise suit was not uncommon, though the reporting in the press and the gossip of the community could be utterly humiliating to all parties. Many breach of promise suits grew out of pregnancies.  If a couple were engaged, they were permitted some freedom of sexual expression since it was assumed that they would soon be man and wife.  If premarital sex went too far, however, and the wedding did not follow, a woman and her family might have little choice but to sue or see her castigated by the community. </p>

<p class="intro">Marriages might come from the heart or by prearrangement.  Whether the marriage was happy or unhappy, it was unlikely to end in divorce, but some divorces occurred.  Divorce required proof of adultery, one of the nineteenth-century's greatest moral taboos.  The adulterer was romance's monster figure.  Although there was a strong double standard in sexual mores, even the culture of men did not wink at adultery, and a woman accused of it risked home, husband, and children.  Augustus Egg's triptych vividly illustrates the abject shame of the woman, the injury to her children, and her miserable fate when her lover tosses her and the bastard child into <a href="content.php?id=ls.00104">the gutter of the city</a>.  This narrative implies that for an adulteress, only death or prostitution await.</p>

<p class="intro">Yet, in the reality of mid-nineteenth-century, both adultery and premarital sex were not uncommon, and not all who indulged in either sin were left at the altar or thrown out of their homes.  The literary representations are highly moralistic, and the press accounts are as lurid as the case would allow.  The letters and journals of real people, however, suggest that such behavior was often tolerated, or forgiven, or ignored, or patched up.  As we recognize today, human behavior in love and seduction is too complex to be easily sorted out and judged by social conventions alone.</p>

<div id="footer"><a href="mailto:cdrh@unl.edu"><strong>Comments??</strong></a> &#160;| <a href="<?php print( NCSM_BASE_HREF );?>">Project Homepage <img src="images/home.gif" /></a></div>

</div><div id="related"><p></p></div></div><div id="menu"><img alt="19th Century Studies: Scenes of Love and Seduction" src="images/bigtest.jpg"><ul><li><a href="index.html">Home</a></li><li><a href="introduction.php">Introduction</a></li><li><img alt="Contexts and Themes" src="images/context.gif"></li><li><a href="explore/settings.php">Spatial Setting</a></li><li><a href="explore/themes.php">Theme</a></li><li><img alt="Browse by content type" src="images/content.gif"></li><li><a href="explore/themes.php?name=fiction">Literature&nbsp;<img alt="Fiction" src="images/fiction.gif"></a></li><li><a href="explore/themes.php?name=image">Art &amp; Illustration&nbsp;<img alt="Art and Illustration" src="images/image.gif"></a></li><li><a href="explore/themes.php?name=history">History&nbsp;<img alt="History" src="images/history.gif"></a></li><li><a href="explore/themes.php?name=commentary">Commentary&nbsp;<img alt="Commentary" src="images/commentary.gif"></a></li></ul><form action="search/search.php"><p class="search"><a href="search/index.php"><img alt="Search" src="images/search.gif">SEARCH</a><br><br><input name="keyword" id="keyword" type="text" size="20"><input type="submit" value="Go"></p></form><p style="text-align: left;"><img alt="University of Nebraska - Lincoln" src="images/unl.gif"></p></div></body></html>
<?php
}
?>
