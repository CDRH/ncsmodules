<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:ino="http://namespaces.softwareag.com/tamino/response2"
    xmlns:xql="http://metalab.unc.edu/xql/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xq="http://namespaces.softwareag.com/tamino/XQuery/result" version="1.1"
    xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xql xsl xq ino">

    <xsl:output method="xml" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.1//EN"
        doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" indent="yes"
        omit-xml-declaration="yes"/>

    <xsl:variable name="showall" select="ino:response/xq:result/result/@show"/>
    <xsl:variable name="keyword" select="ino:response/xq:result/result/@keyword"/>

    <!--
<xsl:template match="/">

<xsl:choose>

<xsl:when test="ino:response/xq:result/result/TEI.2">
<xsl:apply-templates select="ino:response/xq:result/result"/>
</xsl:when>

<xsl:otherwise>
-->
    <!-- begin 'No search results' page -->
    <!--html><body><p>No results found.</p></body></html-->
    <!-- end 'No search results' page -->
    <!--/xsl:otherwise>

</xsl:choose>

</xsl:template>
-->

    <!--xsl:template match="ino:response/xq:result/result"-->
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
                                select="TEI.2/teiHeader/fileDesc/titleStmt/title[@level='a']//text()"
                            />
                        </xsl:otherwise>
                    </xsl:choose>
                </title>

                <link rel="stylesheet" media="screen, projection, tv" type="text/css"
                    href="liberty.css"/>
                <link rel="stylesheet" media="print" type="text/css" href="libertyprint.css"/>


                <script type="text/javascript" src="anylink.js"><xsl:comment>//script</xsl:comment></script>

            </head>
            <body>


                <div id="body">


                    <div class="article">



                        <xsl:choose>

                            <xsl:when test="child::TEI.2[@type='category']">
                                <xsl:apply-templates select="TEI.2[@type='category']"/>
                            </xsl:when>

                            <xsl:when test="child::TEI.2[@type='search']">
                                <xsl:apply-templates select="TEI.2[@type='search']"/>
                            </xsl:when>

                            <xsl:otherwise>

                                <h1 class="top">
                                    <xsl:if
                                        test="descendant::TEI.2/teiHeader/fileDesc/titleStmt/author//text()">
                                        <xsl:apply-templates
                                            select="TEI.2/teiHeader/fileDesc/titleStmt/author"/>, </xsl:if>
                                    <xsl:apply-templates
                                        select="TEI.2/teiHeader/fileDesc/titleStmt/title[@type!='sub']"/>
                                    <xsl:if
                                        test="descendant::TEI.2/teiHeader/fileDesc/titleStmt/date//text()"
                                        > (<xsl:apply-templates
                                            select="TEI.2/teiHeader/fileDesc/titleStmt/date"/>)
                                    </xsl:if>
                                </h1>
                                <p class="description">

                                    <xsl:apply-templates
                                        select="TEI.2/teiHeader/fileDesc/notesStmt/note[@type='project']"/>

                                </p>

                                <div class="icons">
                                    <xsl:text>&#x0020;</xsl:text>
                                    <xsl:if test="@ref!='none'">
                                        <xsl:variable name="referring" select="@ref"/>
                                        &lt;&lt; <a href="explore/topics.php?name={@ref}">
                                            <xsl:copy-of
                                                select="document('intros.xml')/text/div[@id=$referring]/h2/text()"
                                            />
                                        </a>
                                    </xsl:if>
                                </div>

                                <xsl:apply-templates select="TEI.2/text"/>
                                <!--FILE SIZE REFERENCE COUNTER -->
                                <xsl:if test="1=1">
                                <!--xsl:if test="($showall != 'all') and ((count(descendant::p) + 4*(count(descendant::p[string-length()>700])) + count(descendant::lg1) + count(descendant::head) + count(descendant::text[@type='correspondence'])) &gt; 6)"-->
<p>
<!--xsl:choose>

<xsl:when test="$keyword!=''">
<a href="highlight.php?id={TEI.2/@id}&amp;show=all&amp;keyword={../result/@keyword}"><img src="images/down.gif" />Show entire document...</a>
</xsl:when>
<xsl:otherwise>
<a href="content.php?id={TEI.2/@id}&amp;show=all&amp;ref={../result/@ref}"><img src="images/down.gif" />Show entire document...</a>
</xsl:otherwise>
</xsl:choose-->
</p>

</xsl:if>

                            </xsl:otherwise>
                        </xsl:choose>

                    </div>


                    <div id="related">

                        <xsl:if test="child::related//item">

                            <h1>Related Scenes</h1>


                            <xsl:apply-templates select="related[@id = 'closely']"/>


                        </xsl:if>

                        <p>
                            <xsl:if
                                test="child::TEI.2/teiHeader/profileDesc/textClass/keywords/term">
                                <h2>Context:</h2>

                                <xsl:if
                                    test="child::TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='place']"
                                    > &#160;&#160;&#160;<em>Origin: </em>
                                    <xsl:for-each
                                        select="TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='place']">
                                        <xsl:variable name="referring" select="@id"/>
                                        <xsl:if test="position()!=1">, </xsl:if>
                                        <xsl:choose>

                                            <xsl:when
                                                test="(@id = 'american') or (@id = 'british') or (@id = 'french')">
                                                <a href="explore/places.php?name={@id}">
                                                  <small>
                                                  <xsl:copy-of
                                                  select="document('intros.xml')/text/div[@id=$referring]/h2/text()"
                                                  />
                                                  </small>
                                                </a>
                                            </xsl:when>

                                            <xsl:otherwise>
                                                <a href="explore/places.php?name=othercountry">
                                                  <small>
                                                  <xsl:copy-of select=".//text()"/>
                                                  </small>
                                                </a>
                                            </xsl:otherwise>

                                        </xsl:choose>
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
                                        <a href="explore/genres.php?name={@id}">
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
                                        <a href="explore/topics.php?name={@id}">
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
                        </a> &#160;| <a href="http://ncsmodules.unl.edu/">Project
                            Homepage <img src="images/home.gif"/></a></div>

                </div>


                <div id="menu">



                    <img alt="19th Century Studies: Icons of Liberty" src="images/liberty.jpg"
                        width="212" height="374"/>

                    <ul>

                        <li>
                            <a href="index.php">Home</a>
                            <a href="introduction.php">Introduction</a>
                        </li>

                        <li>
                            <img alt="Contexts and Themes" src="images/browse.gif"/>
                        </li>

                        <li>
                            <a href="explore/genres.php"
                                onMouseover="dropdownmenu(this, event, 'genres')">Genre &gt;</a>

                            <a href="explore/topics.php"
                                onMouseover="dropdownmenu(this, event, 'topics')">Topic &gt;</a>
                            <a href="explore/countries.php"
                                onMouseover="dropdownmenu(this, event, 'countries')">Country
                                &gt;</a>
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
                    <a href="explore/topics.php?name=icon">Iconography</a>
                    <a href="explore/topics.php?name=individual">Individual Liberty</a>
                    <a href="explore/movements.php">Political Movements</a>
                    <a href="explore/topics.php?name=gender">Gendered Icons</a>
                    <a href="explore/topics.php?name=dissenting">Dissenting Voices</a>
                </div>

                <div id="genres" class="anylinkcss">
                    <a href="explore/genres.php?name=coins"><img src="illustrations/coins.gif"
                        />&#160;Coins</a>
                    <a href="explore/genres.php?name=commentary"><img
                            src="illustrations/commentary.gif"/>&#160;Commentary</a>
                    <a href="explore/genres.php?name=fiction"><img src="illustrations/fiction.gif"
                        />&#160;Fiction</a>
                    <a href="explore/genres.php?name=history"><img src="illustrations/history.gif"
                        />&#160;Historical documents</a>
                    <a href="explore/genres.php?name=illustrations"><img
                            src="illustrations/illustrations.gif"/>&#160;Illustrations &amp;
                        Cartoons</a>
                    <a href="explore/genres.php?name=paintings"><img
                            src="illustrations/paintings.gif"/>&#160;Paintings</a>
                    <a href="explore/genres.php?name=poetry"><img src="illustrations/poetry.gif"
                        />&#160;Poetry</a>
                    <a href="explore/genres.php?name=sculpture"><img
                            src="illustrations/sculpture.gif"/>&#160;Sculpture</a>
                    <a href="explore/genres.php?name=seals"><img src="illustrations/seals.gif"
                        />&#160;Seals</a>

                </div>

                <div id="countries" class="anylinkcss">

                    <a href="explore/places.php?name=american">United States</a>
                    <a href="explore/places.php?name=british">Britain</a>
                    <a href="explore/places.php?name=french">France</a>
                    <a href="explore/places.php?name=othercountry">Other Countries</a>

                </div>


            </body>
        </html>

    </xsl:template>

    <xsl:template match="TEI.2/text">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="body">

        <xsl:apply-templates/>

    </xsl:template>


    <xsl:template match="body/head[position()=1]">

        <h2>
            <xsl:apply-templates/>
        </h2>

    </xsl:template>

    <xsl:template match="body/head[position() != 1]">
        <xsl:if test="1=1">
            <!--xsl:if test="($showall = 'all') or ((count(preceding::p) + 4*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(preceding::head)+ count(descendant::text[@type='correspondence'])) &lt; 7)"-->
            <h3>
                <xsl:apply-templates/>
            </h3>
        </xsl:if>
    </xsl:template>

    <xsl:template match="author">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="date">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="title">
        <xsl:choose>
            <xsl:when test="@level='a'">
                <xsl:variable name="chapter" select=".//text()"/>
                <xsl:variable name="lastchar"
                    select="substring($chapter, string-length($chapter), 1)"/>

                <xsl:choose>
                    <xsl:when test="$lastchar = '&#34;' ">
                        <xsl:value-of select="substring($chapter, 1, string-length($chapter)-1)"/>," </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates/>
                    </xsl:otherwise>
                </xsl:choose>

            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


    <xsl:template match="p">
        <!--FILE SIZE REFERENCE COUNTER -->
        <xsl:if test="1=1">
            <!--xsl:if test="($showall = 'all') or ((count(preceding::p) + 4*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(preceding::head)+ count(descendant::text[@type='correspondence'])) &lt; 7)"-->
            <p>
                <xsl:apply-templates/>
            </p>
        </xsl:if>
    </xsl:template>

    <xsl:template match="div1[@type='file references']"> </xsl:template>

    <xsl:template match="related[@id = 'closely']">
        <xsl:if test="descendant::item">




            <xsl:for-each
                select="item[not(term/@id=preceding-sibling::item/term/@id)]/term[@type='genre']/@id">
                <xsl:sort select="."/>
                <xsl:variable name="currentid" select="."/>
                <h3>
                    <xsl:copy-of select="document('intros.xml')/text/div[@id=$currentid]/h2/text()"
                    />
                </h3>
                <ul class="subject">
                    <xsl:apply-templates select="//related/item[term/@id=$currentid]"/>
                </ul>
            </xsl:for-each>


        </xsl:if>
    </xsl:template>



    <xsl:template match="related/item[@id]">

        <xsl:choose>

            <xsl:when test="term[@type='media'] = 'image' and parent::related[@id='closely']">

                <a href="content.php?id={@id}&amp;ref={../../../result/@ref}">
                    <img src="illustrations/thumbs/{@id}.jpg" class="thumb"/>
                </a>

            </xsl:when>
            <xsl:otherwise>
                <li>
                    <img alt="{term/@id}" src="illustrations/{term[@type='genre']/@id}.gif"
                    />&#160; <a href="content.php?id={@id}&amp;ref={../../../result/@ref}">
                        <xsl:if test="descendant::author//text()"><xsl:apply-templates
                                select="author[1]"/>, </xsl:if>
                        <xsl:apply-templates select="title[@type!='sub']"/>
                        <xsl:if test="descendant::date/text()">&#160;(<xsl:apply-templates
                                select="date"/>) </xsl:if>
                    </a>
                </li>

            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <xsl:template match="related/item[@id]/bibl">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="related/item[@id]/bibl/title[@level='a']">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="related/item[@id]/bibl/title[@level='m']">
        <xsl:apply-templates/>
    </xsl:template>


    <xsl:template match="div/head">
        <xsl:if
            test="($showall = 'all') or ((count(preceding::p) + 4*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(preceding::head)+ count(descendant::text[@type='correspondence'])) &lt; 7)">
            <h2>
                <xsl:apply-templates/>
            </h2>
        </xsl:if>
    </xsl:template>

    <xsl:template match="lg1 | lg">
        <!--FILE SIZE REFERENCE COUNTER -->
        <xsl:if
            test="($showall = 'all') or ((count(preceding::p) + 4*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(preceding::head) + count(descendant::text[@type='correspondence'])) &lt; 7)">

            <div class="poem">
                <xsl:choose>
                    <xsl:when test="child::lg2[@type='stanza']">
                        <xsl:apply-templates/>
                    </xsl:when>
                    <xsl:otherwise>
                        <ul class="stanza">
                            <xsl:apply-templates/>
                        </ul>
                    </xsl:otherwise>
                </xsl:choose>
            </div>

        </xsl:if>

    </xsl:template>

    <xsl:template match="lg2[@type='stanza']">

        <ul class="stanza">
            <xsl:apply-templates/>
        </ul>

    </xsl:template>

    <xsl:template match="lg1/head">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>

    <xsl:template match="lg2/head">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>

    <xsl:template match="l">
        <xsl:choose>
            <xsl:when test="parent::epigraph">
                <xsl:apply-templates/>
                <br/>
            </xsl:when>
            <xsl:otherwise>
                <li>
                    <xsl:apply-templates/>
                </li>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="hi[@rend='bold']">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>

    <xsl:template match="hi[@rend='italic']">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>

    <xsl:template match="figure">
        <p>
            <img src="illustrations/{@n}" alt="Icons of Liberty image"/>
        </p>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="figDesc"> </xsl:template>

    <xsl:template match="label"> </xsl:template>

    <xsl:template match="figDesc/bibl/respStmt">
        <xsl:if test="descendant::name//text()">
            <xsl:apply-templates/>
            <br/>
        </xsl:if>
    </xsl:template>

    <xsl:template match="figDesc/bibl/respStmt/resp">
        <xsl:apply-templates/>:&#160; </xsl:template>

    <xsl:template match="figDesc/bibl/respStmt/name">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="figDesc/caption">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>

    <xsl:template match="figDesc/bibl/date">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="figDesc/bibl/note">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="figDesc/bibl/publisher">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>


    <xsl:template match="figDesc/bibl/biblScope"> </xsl:template>

    <xsl:template match="figDesc/bibl/title[@level='m']">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="figDesc//orgName">
        <xsl:if test="descendant::text()">
            <xsl:apply-templates/>
        </xsl:if>
    </xsl:template>

    <xsl:template match="body/list">
        <ul>
            <xsl:apply-templates/>
        </ul>
    </xsl:template>

    <xsl:template match="body/list/item">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template>

    <xsl:template match="text//bibl">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="text[@type='correspondence']">
        <!--FILE SIZE REFERENCE COUNTER -->
        <xsl:if
            test="($showall = 'all') or ((count(preceding::p) + 3*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(preceding::head) + count(descendant::text[@type='correspondence'])) &lt; 7)">
            <div class="corresp">
                <xsl:apply-templates/>
            </div>
        </xsl:if>
    </xsl:template>

    <xsl:template match="opener">
        <p class="opener">
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="dateline">
        <p class="dateline">
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="closer">
        <p class="closer">
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="salute">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="TEI.2[@type='category']">

        <xsl:variable name="sectionid" select="@name"/>

        <xsl:choose>

            <xsl:when test="@categorytype='place'">
                <h1><a href="explore/countries.php">Country of
                        Origin:</a>&#160;&#160;<xsl:copy-of
                        select="document('intros.xml')/text/div[@id=$sectionid]/h2/text()"/></h1>
                <div class="setting">
                    <xsl:text>&#x0020;</xsl:text>
                    <xsl:copy-of select="document('intros.xml')/text/div[@id=$sectionid]/p"/>
                </div>
            </xsl:when>

            <xsl:when test="@categorytype='genre'">
                <h1><a href="explore/genres.php">Genre:</a>&#160;&#160;<xsl:copy-of
                        select="document('intros.xml')/text/div[@id=$sectionid]/h2/text()"/></h1>
                <div class="setting">
                    <xsl:text>&#x0020;</xsl:text>
                    <xsl:copy-of select="document('intros.xml')/text/div[@id=$sectionid]/p"/>
                </div>
            </xsl:when>


            <!--<xsl:when test="@categorytype='topic'">-->

            <xsl:otherwise>
                <h1><a href="explore/topics.php">Topics:</a>&#160;&#160;<xsl:copy-of
                        select="document('intros.xml')/text/div[@id=$sectionid]/h2/text()"/></h1>
                <div class="setting">
                    <xsl:copy-of select="document('intros.xml')/text/div[@id=$sectionid]/p"/>
                </div>
            </xsl:otherwise>
            <!--</xsl:when>-->

        </xsl:choose>

        <xsl:if test="descendant::item">


            <xsl:for-each
                select="item[not(term/@id=preceding-sibling::item/term/@id)]/term[@type='genre']/@id">
                <xsl:sort select="."/>
                <xsl:variable name="currentid" select="."/>

                <h3>
                    <xsl:copy-of select="document('intros.xml')/text/div[@id=$currentid]/h2/text()"
                    />
                </h3>
                <ul class="category">
                    <xsl:for-each select="//TEI.2[@type='category']/item[term/@id=$currentid]">
                        <xsl:sort select="date/@value"/>
                        <xsl:apply-templates select="."/>
                    </xsl:for-each>
                </ul>

            </xsl:for-each>
        </xsl:if>










    </xsl:template>



    <xsl:template match="TEI.2[@type='category']/item[@id]">
        <li>
            <img alt="{term/@id}" src="illustrations/{term/@id}.gif"/>&#160;<a
                href="content.php?id={@id}&amp;ref={../@name}">
                <xsl:if test="descendant::author//text()"><xsl:apply-templates select="author[1]"/>, </xsl:if>
                <xsl:apply-templates select="title[@type != 'sub']"/>
                <xsl:if test="descendant::date/text()">(<xsl:apply-templates select="date"
                    />)</xsl:if>
            </a>
        </li>

    </xsl:template>

    <xsl:template match="q[@rend='block']">
        <p class="block">
            <q>
                <xsl:apply-templates/>
            </q>
        </p>
    </xsl:template>

    <xsl:template match="TEI.2[@type='search']">

        <h1>Search Results</h1>

        <xsl:choose>
            <xsl:when test="@count = 0">
                <h2>No results were returned</h2>


            </xsl:when>

            <xsl:when test="@count > 50">
                <h2>More than 50 documents were returned. <br/>You may wish to narrow your
                    search.</h2>


                <ul>
                    <xsl:apply-templates/>
                </ul>
            </xsl:when>

            <xsl:otherwise>

                <h2>Your search returned <xsl:value-of select="@count"/> document(s).</h2>
                <ul class="category">
                    <xsl:apply-templates/>
                </ul>
            </xsl:otherwise>

        </xsl:choose>

        <h2>Search Again</h2>

        <form action="search/search.php" method="get">

            <table border="0">

                <tr>
                    <td align="right">
                        <p>
                            <b>
                                <label for="keyword">Keyword </label>
                            </b>
                        </p>
                    </td>
                    <td>
                        <p>
                            <input type="text" name="keyword" id="keyword" size="40"/>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>&#160;</p>
                    </td>
                    <td/>
                </tr>
                <tr>
                    <td align="right">

                        <p>
                            <label for="genre">Genre</label>
                        </p>
                    </td>
                    <td>
                        <p>
                            <select name="genre" id="genre">

                                <option value="" default="default"/>
                                <option value="coins" id="coins">coins</option>
                                <option value="commentary" id="commentary">commentary</option>
                                <option value="fiction" id="fiction">fiction</option>
                                <option value="history" id="history">history</option>
                                <option value="illustrations" id="illustrations">illustrations
                                    &amp; cartoons</option>
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
                        <p>
                            <label for="theme">Topic</label>
                        </p>
                    </td>
                    <td>
                        <p>
                            <select id="topic" name="topic">


                                <option value="" default="default"/>
                                <option value="americanrevolution" id="americanrevolution"
                                    >americanrevolution</option>
                                <option value="civilwar" id="civilwar">civilwar</option>
                                <option value="dissenting" id="dissenting">dissenting</option>
                                <option value="emancipation" id="emancipation">emancipation</option>
                                <option value="frenchrevolution" id="frenchrevolution"
                                    >frenchrevolution</option>
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
                                <option value="statueofliberty" id="statueofliberty"
                                    >statueofliberty</option>
                                <option value="switzerland" id="switzerland">switzerland</option>
                                <option value="wales" id="wales">wales</option>
                                <option value="washington" id="washington">washington</option>
                            </select>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <p>
                            <label for="category">Country of Origin</label>
                        </p>
                    </td>
                    <td>
                        <p>
                            <select id="place" name="place">

                                <option value="" default="default"/>
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
                <tr> </tr>
                <tr>
                    <td>
                        <p>&#160;</p>
                    </td>
                    <td/>
                </tr>

                <tr>
                    <td>
                        <p>&#160;</p>
                    </td>
                    <td>
                        <p>
                            <input type="submit" value="Search"/>
                        </p>
                    </td>
                </tr>
            </table>


        </form>


    </xsl:template>

    <xsl:template match="TEI.2[@type='search']/item[@id]">
        <li>
            <img alt="{term/@id}" src="illustrations/{term/@id}.gif"/>&#160;<a
                href="highlight.php?id={@id}&amp;keyword={../@keyword}">
                <xsl:if test="descendant::author//text()"><xsl:apply-templates select="author[1]"/>, </xsl:if>
                <xsl:apply-templates select="title[@type != 'sub']"/>
                <xsl:if test="descendant::date//text()">(<xsl:apply-templates select="date"
                    />)</xsl:if>
            </a>
        </li>

    </xsl:template>

    <xsl:template match="note[@type='project']">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="epigraph">

        <blockquote class="epigraph">
            <xsl:apply-templates/>
        </blockquote>
    </xsl:template>

    <xsl:template match="processing-instruction('REV_DISC')">
        <xsl:if test="contains(. , '+')">
            <xsl:text disable-output-escaping="yes"><![CDATA[<strong class="searchterm">]]></xsl:text>
        </xsl:if>
        <xsl:if test="contains(. , '-')">
            <xsl:text disable-output-escaping="yes"><![CDATA[</strong>]]></xsl:text>
        </xsl:if>
    </xsl:template>


</xsl:stylesheet>
