<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   <xsl:output method="html" indent="no" encoding="iso-8859-1"/>


   <xsl:variable name="rows" select="//str[@name='rows']" as="xs:string"/>
   <xsl:variable name="searchTerm" select="//str[@name='q']" as="xs:string"/>
   <xsl:variable name="start" select="//str[@name='start']" as="xs:string"/>
   <xsl:variable name="numFound" select="//result/@numFound" as="xs:string"/>



   <xsl:strip-space elements="*"/>
   <xsl:template match="/">





      <html xmlns="http://www.w3.org/1999/xhtml">
         <head>
            <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"/>

            <base href="http://ncsmodules.unl.edu/loveandseduction/"/>

            <title>Love Scenes and Scenes of Seduction: <xsl:copy-of
                  select="TEI.2/teiHeader/fileDesc/titleStmt/title[@level='a']//text()"/></title>

            <link rel="stylesheet" media="screen, projection, tv" type="text/css" href="scenes.css"/>
            <link rel="stylesheet" media="print" type="text/css" href="scenesprint.css"/>




         </head>
         <body>


            <div id="body">


               <div class="article">
                  <h1 class="top"> Search </h1>
                  <p class="description"> </p>
                  <div class="icons"> </div> Your search for <strong><xsl:value-of
                        select="$searchTerm"/></strong> returned <strong><xsl:value-of
                        select="$numFound"/></strong> results. <br/> Results <xsl:value-of
                     select="$start+1"/> through <xsl:value-of select="$start+$rows"/> shown. <br/><br/>
                  <xsl:choose>
                     <xsl:when test="$start &lt;= 0"> previous </xsl:when>
                     <xsl:otherwise>
                        <a>
                           <xsl:attribute name="href">
                              <xsl:text>http://cors1601.unl.edu:8983/solr/ncs_loveandseduction/select?echoParams=all&#38;indent=on&#38;version=2.2&#38;q=</xsl:text>
                              <xsl:value-of select="$searchTerm"/>
                              <xsl:text>&#38;start=</xsl:text>
                              <xsl:value-of select="$start - $rows"/>
                              <xsl:text>&#38;rows=</xsl:text>
                              <xsl:value-of select="$rows"/>
                              <xsl:text>&#38;fl=id,score,title&#38;qt=standard&#38;wt=xslt&#38;tr=search.xsl&#38;explainOther=&#38;hl=on&#38;hl.fl=text</xsl:text></xsl:attribute>previous
                        </a>
                     </xsl:otherwise>
                  </xsl:choose> | <xsl:choose>
                     <xsl:when test="($start + $rows) &gt;= $numFound"> next </xsl:when>
                     <xsl:otherwise>
                        <a>
                           <xsl:attribute name="href">
                              <xsl:text>http://cors1601.unl.edu:8983/solr/ncs_loveandseduction/select?echoParams=all&#38;indent=on&#38;version=2.2&#38;q=</xsl:text>
                              <xsl:value-of select="$searchTerm"/>
                              <xsl:text>&#38;start=</xsl:text>
                              <xsl:value-of select="$start + $rows"/>
                              <xsl:text>&#38;rows=</xsl:text>
                              <xsl:value-of select="$rows"/>
                              <xsl:text>&#38;fl=id,score,title&#38;qt=standard&#38;wt=xslt&#38;tr=search.xsl&#38;explainOther=&#38;hl=on&#38;hl.fl=text</xsl:text></xsl:attribute>next
                        </a>
                     </xsl:otherwise>
                  </xsl:choose>
                  <ul>
                     <xsl:for-each select="//doc">
                        <li>
                           <a>
                              <xsl:attribute name="href">
                                 <xsl:text>http://ncsmodules.unl.edu/ncs_loveandseduction/content.php?id=</xsl:text>
                                 <xsl:value-of select="str[@name='id']"/>
                              </xsl:attribute>
                              <xsl:value-of select="str[@name='title']"/>
                           </a></li>
                     </xsl:for-each>
                  </ul>
                  <br/>
                  <xsl:choose>
                     <xsl:when test="$start &lt;= 0"> previous </xsl:when>
                     <xsl:otherwise>
                        <a>
                           <xsl:attribute name="href">
                              <xsl:text>http://cors1601.unl.edu:8983/solr/ncs_loveandseduction/select?echoParams=all&#38;indent=on&#38;version=2.2&#38;q=</xsl:text>
                              <xsl:value-of select="$searchTerm"/>
                              <xsl:text>&#38;start=</xsl:text>
                              <xsl:value-of select="$start - $rows"/>
                              <xsl:text>&#38;rows=</xsl:text>
                              <xsl:value-of select="$rows"/>
                              <xsl:text>&#38;fl=id,score,title&#38;qt=standard&#38;wt=xslt&#38;tr=search.xsl&#38;explainOther=&#38;hl=on&#38;hl.fl=text</xsl:text></xsl:attribute>previous
                        </a>
                     </xsl:otherwise>
                  </xsl:choose> | <xsl:choose>
                     <xsl:when test="($start + $rows) &gt;= $numFound"> next </xsl:when>
                     <xsl:otherwise>
                        <a>
                           <xsl:attribute name="href">
                              <xsl:text>http://cors1601.unl.edu:8983/solr/ncs_loveandseduction/select?echoParams=all&#38;indent=on&#38;version=2.2&#38;q=</xsl:text>
                              <xsl:value-of select="$searchTerm"/>
                              <xsl:text>&#38;start=</xsl:text>
                              <xsl:value-of select="$start + $rows"/>
                              <xsl:text>&#38;rows=</xsl:text>
                              <xsl:value-of select="$rows"/>
                              <xsl:text>&#38;fl=id,score,title&#38;qt=standard&#38;wt=xslt&#38;tr=search.xsl&#38;explainOther=&#38;hl=on&#38;hl.fl=text</xsl:text></xsl:attribute>next
                        </a>
                     </xsl:otherwise>
                  </xsl:choose>
               </div>





               <div id="footer"><a href="mailto:cdrh@unl.edu">
                     <strong>Comments??</strong>
                  </a> &#160;| <a href="/">Project Homepage <img src="images/home.gif"
                  /></a></div>

            </div>
            <div id="menu">



               <img alt="19th Century Studies: Scenes of Love and Seduction"
                  src="images/bigtest.jpg"/>

               <ul>

                  <li>
                     <a href="index.php">Home</a>
                  </li>

                  <li>
                     <a href="introduction.php">Introduction</a>
                  </li>

                  <li>
                     <img alt="Contexts and Themes" src="images/context.gif"/>
                  </li>

                  <li>
                     <a href="explore/settings.php">Spatial Setting</a>
                  </li>

                  <li>
                     <a href="explore/themes.php">Theme</a>
                  </li>

                  <li>
                     <img alt="Browse by content type" src="images/content.gif"/>
                  </li>

                  <li>
                     <a href="explore/genres.php?name=fiction">Literature&#160;<img
                           alt="Literature" src="images/fiction.gif"/></a>
                  </li>

                  <li>
                     <a href="explore/genres.php?name=image">Art &amp;
                           Illustration&#160;<img alt="Art and Illustration"
                           src="images/image.gif"/></a>
                  </li>

                  <li>
                     <a href="explore/genres.php?name=history">History&#160;<img alt="History"
                           src="images/history.gif"/></a>
                  </li>

                  <li>
                     <a href="explore/genres.php?name=commentary">Commentary&#160;<img
                           alt="Commentary" src="images/commentary.gif"/></a>
                  </li>

               </ul>


               <form action="search/search.php">
                  <p class="search">
                     <a href="search/index.php"><img alt="Search" src="images/search.gif"
                        />SEARCH</a>
                     <br/>
                     <br/>
                     <input name="keyword" id="keyword" type="text" size="20"/>
                     <input type="submit" value="Go"/>
                  </p>
               </form>
               <p style="text-align: left;">
                  <img alt="University of Nebraska - Lincoln" src="images/unl.gif"/>
               </p>

            </div>

         </body>
      </html>



   </xsl:template>
















</xsl:stylesheet>
