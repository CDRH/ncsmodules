<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   <xsl:output method="html" indent="no" encoding="iso-8859-1"/>


   <xsl:variable name="rows" select="//str[@name='rows']" as="xs:string"/>
   <xsl:variable name="searchTerm" select="//str[@name='q']" as="xs:string"/>
   <xsl:variable name="start" select="//str[@name='start']" as="xs:string"/>
   <xsl:variable name="numFound" select="//result/@numFound" as="xs:string"/>



   <xsl:strip-space elements="*"/>
   <xsl:template match="/">





      <html>
         <head>
            <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"/>
            
            <base href="http://ncsmodules.unl.edu/liberty/"/>
            
            <title>Icons of Liberty: <xsl:choose>
               <xsl:when test="child::TEI.2[@type='search']"> Search </xsl:when>
               <xsl:when test="child::TEI.2[@type='category']"> Explore </xsl:when>
               <xsl:otherwise>
                  <xsl:copy-of
                     select="TEI.2/teiHeader/fileDesc/titleStmt/title[@level='a']//text()"/>
               </xsl:otherwise>
            </xsl:choose>
            </title>
            
            <link rel="stylesheet" media="screen, projection, tv" type="text/css" href="liberty.css"/>
            <link rel="stylesheet" media="print" type="text/css" href="libertyprint.css"/>
            
            
            <script type="text/javascript" src="anylink.js"><xsl:comment>//script</xsl:comment></script>
            
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
                              <xsl:text>http://cors1601.unl.edu:8983/solr/ncs_liberty/select?echoParams=all&#38;indent=on&#38;version=2.2&#38;q=</xsl:text>
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
                              <xsl:text>http://cors1601.unl.edu:8983/solr/ncs_liberty/select?echoParams=all&#38;indent=on&#38;version=2.2&#38;q=</xsl:text>
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
                                 <xsl:text>http://ncsmodules.unl.edu/liberty/content.php?id=</xsl:text>
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
                              <xsl:text>http://cors1601.unl.edu:8983/solr/ncs_liberty/select?echoParams=all&#38;indent=on&#38;version=2.2&#38;q=</xsl:text>
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
                              <xsl:text>http://cors1601.unl.edu:8983/solr/ncs_liberty/select?echoParams=all&#38;indent=on&#38;version=2.2&#38;q=</xsl:text>
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




               <div id="related">
                  
                  <xsl:if test="child::related//item">
                     
                     <h1>Related Scenes</h1>
                     
                     
                     <xsl:apply-templates select="related[@id = 'closely']"/>
                     
                     
                  </xsl:if>
                  
                  <p>
                     <xsl:if test="child::TEI.2/teiHeader/profileDesc/textClass/keywords/term">
                        <h2>Context:</h2>
                        
                        <xsl:if
                           test="child::TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='place']"
                           > &#160;&#160;&#160;<em>Origin: </em>
                           <xsl:for-each
                              select="TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='place']">
                              <xsl:variable name="referring" select="@id"/>
                              <xsl:if test="position()!=1">, </xsl:if>
                              <xsl:choose> <xsl:when
                                 test="(@id = 'american') or (@id = 'british') or (@id = 'french')">
                                 <a href="explore/themes.php?name={@id}">
                                    <small>
                                       <xsl:copy-of
                                          select="document('intros.xml')/text/div[@id=$referring]/h2/text()"
                                       />
                                    </small>
                                 </a>
                              </xsl:when> <xsl:otherwise>
                                 <a href="explore/themes.php?name=othercountry">
                                    <small>
                                       <xsl:copy-of select=".//text()"/>
                                    </small>
                                 </a>
                              </xsl:otherwise> </xsl:choose>
                           </xsl:for-each>
                           <br/>
                        </xsl:if>
                        
                        <xsl:if
                           test="child::TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='genre']"
                           > &#160;&#160;&#160;<em>Genre: </em>
                           <xsl:for-each
                              select="TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='genre']">
                              <xsl:variable name="referring" select="@id"/>
                              <xsl:if test="position()!=1">, </xsl:if>
                              <a href="explore/themes.php?name={@id}">
                                 <small>
                                    <xsl:copy-of
                                       select="document('intros.xml')/text/div[@id=$referring]/h2/text()"
                                    />
                                 </small>
                              </a>
                           </xsl:for-each>
                           <br/>
                        </xsl:if>
                        
                        <xsl:if
                           test="child::TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='topic']"
                           > &#160;&#160;&#160;<em>Topic: </em>
                           <xsl:for-each
                              select="TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='topic']">
                              <xsl:variable name="referring" select="@id"/>
                              <xsl:if test="position()!=1">, </xsl:if>
                              <a href="explore/themes.php?name={@id}">
                                 <small>
                                    <xsl:copy-of
                                       select="document('intros.xml')/text/div[@id=$referring]/h2/text()"
                                    />
                                 </small>
                              </a>
                           </xsl:for-each>
                           <br/>
                        </xsl:if>
                        
                     </xsl:if>
                  </p>
                  
                  <p> </p>
               </div>
               
               
               <div id="footer"><a href="mailto:cdrh@unl.edu">
                  <strong>Comments??</strong>
               </a> &#160;| <a href="http://ncsmodules.unl.edu/">Project Homepage
                  <img src="images/home.gif"/></a></div>
               
            </div>
            
            
            <div id="menu">
               
               
               
               <img alt="19th Century Studies: Icons of Liberty" src="images/liberty.jpg" width="212"
                  height="374"/>
               
               <ul>
                  
                  <li>
                     <a href="index.php">Home</a>
                     <a href="introduction.php">Introduction</a>
                  </li>
                  
                  <li>
                     <img alt="Contexts and Themes" src="images/browse.gif"/>
                  </li>
                  
                  <li>
                     <a href="explore/genres.php" onMouseover="dropdownmenu(this, event, 'genres')"
                        >Genre &gt;</a>
                     
                     <a href="explore/topics.php" onMouseover="dropdownmenu(this, event, 'topics')"
                        >Topic &gt;</a>
                     <a href="explore/countries.php"
                        onMouseover="dropdownmenu(this, event, 'countries')">Country &gt;</a>
                  </li>
                  
                  <li>
                     <img alt="Contexts and Themes" src="images/search.gif"/>
                  </li>
                  
               </ul>
               <form action="search/search.php">
                  <p class="search">
                     <input name="keyword" id="keyword" type="text" size="20"/>
                     <input type="submit" value="Go"/>
                     <br/>
                     <a href="search/index.php">Advanced Search</a>
                  </p>
               </form>
               <p style="text-align: left;">
                  <img alt="University of Nebraska - Lincoln" src="images/unl.gif"/>
               </p>
               
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
            
            <div id="genres" class="anylinkcss">
               <a href="explore/themes.php?name=coins"><img src="illustrations/coins.gif"
               />&#160;Coins</a>
               <a href="explore/themes.php?name=commentary"><img src="illustrations/commentary.gif"
               />&#160;Commentary</a>
               <a href="explore/themes.php?name=fiction"><img src="illustrations/fiction.gif"
               />&#160;Fiction</a>
               <a href="explore/themes.php?name=history"><img src="illustrations/history.gif"
               />&#160;Historical documents</a>
               <a href="explore/themes.php?name=illustrations"><img
                  src="illustrations/illustrations.gif"/>&#160;Illustrations &amp;
                  Cartoons</a>
               <a href="explore/themes.php?name=paintings"><img src="illustrations/paintings.gif"
               />&#160;Paintings</a>
               <a href="explore/themes.php?name=poetry"><img src="illustrations/poetry.gif"
               />&#160;Poetry</a>
               <a href="explore/themes.php?name=sculpture"><img src="illustrations/sculpture.gif"
               />&#160;Sculpture</a>
               <a href="explore/themes.php?name=seals"><img src="illustrations/seals.gif"
               />&#160;Seals</a>
               
            </div>
            
            <div id="countries" class="anylinkcss">
               
               <a href="explore/themes.php?name=american">United States</a>
               <a href="explore/themes.php?name=british">Britain</a>
               <a href="explore/themes.php?name=french">France</a>
               <a href="explore/themes.php?name=othercountry">Other Countries</a>
               
            </div>
            
            
         </body>
      </html>
      



   </xsl:template>
















</xsl:stylesheet>
