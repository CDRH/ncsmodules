<?php
require_once( "../../globals/globals.inc.php" );

function redirectAndSearch( $value ) {
  $URL = SOLR_BASE_HREF . "ncs_loveandseduction/select?" .
				"indent=on&" .
				"version=2.2&" .
				"q=category:" . $value . "&" .
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
<html><head><META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"><base href="<?php print(LS_BASE_HREF);?>"><title>Scenes of Seduction: Spatial Settings</title><style type="text/css">
@import "scenes.css";

</style></head><body><div id="body"><div class="article"><h1 class="theme">Spatial Settings</h1>
<ul class="theme">

<li>

<a href="explore/settings.php?name=boudoir">
<img src="images/settings/small/boudoir.gif">&nbsp;
The Boudoir</a>

</li>

<li>

<a href="explore/settings.php?name=countrywalk">
<img src="images/settings/small/countrywalk.gif">&nbsp;
On a Country Walk</a>

</li>


<li>

<a href="explore/settings.php?name=garden">
<img src="images/settings/small/garden.gif">&nbsp;
In a Garden</a>

</li>

<li>

<a href="explore/settings.php?name=parlor">
<img src="images/settings/small/parlor.gif">&nbsp;
In the Parlor</a>

</li>

<li>

<a href="explore/settings.php?name=dance">
<img src="images/settings/small/dance.gif">&nbsp;
At a Dance or Party</a>

</li>

<li>

<a href="explore/settings.php?name=piano">
<img src="images/settings/small/piano.gif">&nbsp;
At the Piano</a>

</li>

<li>

<a href="explore/settings.php?name=publicspace">
<img src="images/settings/small/publicspace.gif">&nbsp;
In Public Spaces</a>

</li>

<li>

<a href="explore/settings.php?name=carriage">
<img src="images/settings/small/carriage.gif">&nbsp;
In a Carriage or Train</a>

</li>

<li>

<a href="explore/settings.php?name=urbanwalk">
<img src="images/settings/small/urbanwalk.gif">&nbsp;
On an Urban Walkway</a>

</li>

<li>

<a href="explore/settings.php?name=wild">
<img src="images/settings/small/wild.gif">&nbsp;
In the Wild</a>

</li>


</ul>
<p class="intro">The conventions governing when and how lovers and would-be lovers could meet were usually rigid and unforgiving.  The separation of the sexes, except within a family setting, made it difficult for many lovers to develop much of an actual acquaintance before making decisions about engagement or marriage.  Conventions about the geography of a scene of love often determined whether it would lead to a romance smiled on by society that would end in marriage, or a scandal that would ruin lives. To be alone in a carriage with a man, even in daylight, would cast doubt on a woman's reputation if no engagement was immediately forthcoming.  In Trollope's <a href="content.php?id=ls.00074"><em>The American Senator</em></a>, the ambitious Arabella Trefoil counts on the strength of this convention to extract an "offer" from Lord Rufford after she manages a long carriage ride home with him after a day of hunting.  Trollope notes that "The hunting field is by no means a place suited for real love-making. . . . But in a post chaise it would be different." </p>

<p class="intro">In the literary representations the conventions of when and how lovers were to meet was a coded clue to who was going to be the heroine/hero and who the villain.   Walks in the open countryside signaled that the lovers would suppress desire and abide by the rules.  A walk in the garden was usually fine if the lovers were in full sunshine and avoided concealment in shade or behind bushes.  A walk in the garden after dusk, however, evidenced deceit and desire.  In the house, a visit in the parlor with another family member present was honorable, even if that other person was a young sister.  A meeting alone in the parlor was reserved for accepted or nearly accepted lovers.  One remembers the maneuvers of Jane Austen's Mrs. Bennett in <a href="content.php?id=ls.00191"><em>Pride and Prejudice</em></a>, setting up the scenes in which her girls could get the offer of marriage she so earnestly wished them to receive. If, however, that parlor setting involved a piano, one needed to be careful.  A young woman singing a serious song alone to her own accompaniment&#150;even if she sang badly&#150;was usually innocent enough, but if the young man sang over her shoulder, or turned the pages, or if the song took a more jolly tone, the degree of danger increased.  The line between an angelic creature singing of the soul and a flirt using music to beguile was a tricky one for a young woman to manage.  In  William Holman Hunt's painting, &nbsp;<a href="content.php?id=ls.00100"><em>The Awakening Conscienc</em>e</a>, the woman arises from the illicit lap of her lover who is seated at the piano.  As <a href="content.php?id=ls.00041">George Landow's discussion of this scene</a> indicates, the entire painting is coded with symbols that represent the sinful ways of this couple.</p>

<p class="intro">Though scenes in literature and art encoded the site of innocent love and or sinful behavior through the spatial setting, the conventions of publishers and art dealers typically imposed limits to what might be described or pictured.  In the British and American traditions, there are few sexually explicit novels or paintings among art and literature meant for a middle-class audience, and portraits of sexual desire almost always illustrated that the wages of sin were severe.  Nonetheless, coded language, including the imagery of flowers, could intimate what could not be written directly.  For instance, Nathaniel Hawthorne's hero of <a href="content.php?id=ls.00045"><em>The Blithedale Romance</em></a>, Coverdale, cannot ignore the lush physical charms of Zenobia, but he reshapes her full-flowered beauty and "freedom of her deportment" as the signs that she is not innocent.  He convinces himself, "''There is no folded petal, no latent dewdrop, in this perfectly developed rose!'" </p>

<p class="intro">Continental writers were less reticent about sensuality, however, and <a href="content.php?id=ls.00038"><em>Madame Bovary</em></a> is only one of several French novels of the nineteenth century with memorable moments of sensuality.  The "sweetness of sensation" that produces Emma's "faintness" when she "smelt the perfume of the pomade that made his hair glossy" opens up one of the most sensual literary representations of sexual desire in the century.  Emma also reluctantly takes an indiscreet carriage ride, assured by her lover that <a href="content.php?id=ls.00031">"It is done at Paris."</a>  Later Emma and Leon will cross yet another boundary to meet regularly  in a hotel room they delighted to call <a href="content.php?id=ls.00030">"our room."</a></p> 

<p class="intro">Scenes from real life were often not as constrained by convention as middle-class representations of love and seduction in art and literature.  The American journal, the <em>National Police Gazette</em>&#8212;the nineteenth century's version of the <em>National Enquirer</em>&#8212;related stories about seductions on the floor, under tables, in clothing stores, and in the minister's office.  The Reverend G.A. Kendrick of Columbus, Georgia, for example, <a href="content.php?id=ls.00012">seduced Miss Fannie Bush</a> on the sofa of his study in the church.  The day he got caught, however, they were on the floor, and he dived under a table to hide.  In addition to women who got in trouble with their pastors, women working as domestic help were also at risk of sexual assault in the homes they cleaned, or as they were attended by physicians.  One of the most lurid accounts of the latter is of Dr. Joseph E. Lowes, the physician who seduced his patient in her bed while plying her with drugs and forbidding her husband to have sexual relations with her because <a href="content.php?id=ls.00022">"her health would not admit of it."</a> </p> 

<p class="intro"> In artistic representations, setting gave clear signals about how culturally sanctioned the scene of romance was, but in real life such events more often followed from social and economic structures which exposed vulnerable women to predatory men, or structures that led women to follow their urges in defiance of cultural and moral constraints.  The court cases and public scandals, salacious as they often were, testify to the reality of sexual behavior in the mid-nineteenth century.  Such representations, of course, give little suggestions about erotic or romantic attractions which brought the scandals into being in the first place.  For representations of such passions, we do better to look to artistic representations, which were often charged with passion, even though the signs of such passion were coded. </p>

<div id="footer"><a href="mailto:cdrh@unl.edu"><strong>Comments??</strong></a> &#160;| <a href="<?php print( NCSM_BASE_HREF );?>">Project Homepage <img src="images/home.gif" /></a></div>

</div><div id="related"><p></p></div></div><div id="menu"><img alt="19th Century Studies: Scenes of Love and Seduction" src="images/bigtest.jpg"><ul><li><a href="index.html">Home</a></li><li><a href="introduction.php">Introduction</a></li><li><img alt="Contexts and Themes" src="images/context.gif"></li><li><a href="explore/settings.php">Spatial Setting</a></li><li><a href="explore/themes.php">Theme</a></li><li><img alt="Browse by content type" src="images/content.gif"></li><li><a href="explore/themes.php?name=fiction">Literature&nbsp;<img alt="Fiction" src="images/fiction.gif"></a></li><li><a href="explore/themes.php?name=image">Art &amp; Illustration&nbsp;<img alt="Art and Illustration" src="images/image.gif"></a></li><li><a href="explore/themes.php?name=history">History&nbsp;<img alt="History" src="images/history.gif"></a></li><li><a href="explore/themes.php?name=commentary">Commentary&nbsp;<img alt="Commentary" src="images/commentary.gif"></a></li></ul><form action="search/search.php"><p class="search"><a href="search/index.php"><img alt="Search" src="images/search.gif">SEARCH</a><br><br><input name="keyword" id="keyword" type="text" size="20"><input type="submit" value="Go"></p></form><p style="text-align: left;"><img alt="University of Nebraska - Lincoln" src="images/unl.gif"></p></div></body></html>
<?php
}
?>
