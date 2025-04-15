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
<xsl:apply-templates select="/ino:response/xq:result/result"/>
</xsl:when>

<xsl:otherwise>
-->
    <!-- begin 'No search results' page -->
    <!--html xmlns="http://www.w3.org/1999/xhtml"><body><p>No results found.</p></body></html-->
    <!-- end 'No search results' page -->

    <!--
</xsl:otherwise>

</xsl:choose>
</xsl:template>
-->


    <!--xsl:template match="ino:response/xq:result/result"-->

    <xsl:template match="/">


        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"/>

                <base href="http://ncsmodules.unl.edu/loveandseduction/"/>

                <title>Love Scenes and Scenes of Seduction: <xsl:copy-of
                        select="TEI.2/teiHeader/fileDesc/titleStmt/title[@level='a']//text()"
                    /></title>

                <link rel="stylesheet" media="screen, projection, tv" type="text/css"
                    href="scenes.css"/>
                <link rel="stylesheet" media="print" type="text/css" href="scenesprint.css"/>




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
                                        &lt;&lt; <a href="explore/settings.php?name={@ref}">
                                            <xsl:copy-of
                                                select="document('intros.xml')/text/div[@id=$referring]/h2/text()"
                                            />
                                        </a>
                                    </xsl:if>
                                </div>

                                <xsl:apply-templates select="TEI.2/text"/>
                                <!--FILE SIZE REFERENCE COUNTER -->
                                <xsl:if test="1=1">
                                    <!--xsl:if test="($showall != 'all') and ((count(descendant::p) + 4*(count(descendant::p[string-length()>700])) + count(descendant::lg1) + count(descendant::text[@type='correspondence']) + count(descendant::head)) &gt; 6)"-->
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
                                test="child::TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='setting' or @type='theme']">
                                <h2>Context:</h2>

                                <xsl:if
                                    test="child::TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='setting']"
                                    > &#160;&#160;&#160;<em>Setting: </em>
                                    <xsl:for-each
                                        select="TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='setting']">
                                        <xsl:variable name="referring" select="@id"/>
                                        <xsl:if test="position()!=1">, </xsl:if>
                                        <a href="explore/settings.php?name={@id}">
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
                                    test="child::TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='theme']"
                                    > &#160;&#160;&#160;<em>Theme: </em>
                                    <xsl:for-each
                                        select="TEI.2/teiHeader/profileDesc/textClass/keywords/term[@type='theme']">
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
                            <a href="explore/genres.php?name=history">History&#160;<img
                                    alt="History" src="images/history.gif"/></a>
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
            <!--xsl:if test="($showall = 'all') or ((count(preceding::p) + 4*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(descendant::text[@type='correspondence']) + count(descendant::head)) &lt; 7)"-->
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
            <!--xsl:if test="($showall = 'all') or ((count(preceding::p) + 4*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(descendant::text[@type='correspondence']) + count(descendant::head)) &lt; 7)"-->
            <p>
                <xsl:apply-templates/>
            </p>
        </xsl:if>
    </xsl:template>

    <xsl:template match="div1[@type='file references']"> </xsl:template>

    <xsl:template match="related[@id = 'closely']">
        <xsl:if test="descendant::item">
            <ul class="subject">

                <xsl:if test="descendant::item[term/@id='image']">
                    <li>
                        <xsl:apply-templates select="item[term/@id='image']"/>
                    </li>
                </xsl:if>
                <xsl:apply-templates select="item[term/@id = 'fiction']"/>
                <xsl:apply-templates select="item[term/@id = 'history']"/>
                <xsl:apply-templates select="item[term/@id = 'commentary']"/>

            </ul>
        </xsl:if>
    </xsl:template>



    <xsl:template match="related/item[@id]">
        <xsl:choose>

            <xsl:when test="term[@type='media'] = 'image' and parent::related[@id='closely']">

                <a href="content.php?id={@id}&amp;ref={../../../result/@ref}">
                    <img src="images/thumbs/{@id}.jpg" class="thumb"/>
                </a>

            </xsl:when>
            <xsl:otherwise>

                <li><img alt="{term/@id}" src="images/{term[@type='media']/@id}.gif"/>&#160; <a
                        href="content.php?id={@id}&amp;ref={../../../result/@ref}">
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
            test="($showall = 'all') or ((count(preceding::p) + 4*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(descendant::text[@type='correspondence']) + count(descendant::head)) &lt; 7)">
            <h2>
                <xsl:apply-templates/>
            </h2>
        </xsl:if>
    </xsl:template>

    <xsl:template match="lg1[@type='poem'] | lg[@type='poem']">
        <!--FILE SIZE REFERENCE COUNTER -->
        <xsl:if
            test="($showall = 'all') or ((count(preceding::p) + 4*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(descendant::text[@type='correspondence']) + count(descendant::head)) &lt; 7)">

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
        <xsl:if
            test="($showall = 'all') or ((count(preceding::p) + 4*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(descendant::text[@type='correspondence']) + count(descendant::head)) &lt; 7)">
            <h2>
                <xsl:apply-templates/>
            </h2>
        </xsl:if>
    </xsl:template>

    <xsl:template match="lg2/head">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>

    <xsl:template match="l">
        <li>
            <xsl:apply-templates/>
        </li>
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
            <img src="images/{@n}" alt="Image || {figDesc/label}"/>
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
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="body/list/item">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="text//bibl">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="text[@type='correspondence']">
        <!--FILE SIZE REFERENCE COUNTER -->
        <xsl:if
            test="($showall = 'all') or ((count(preceding::p) + 3*(count(preceding::p[string-length()>700])) + count(preceding::lg1) + count(descendant::text[@type='correspondence']) + count(descendant::head)) &lt; 7)">
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

            <xsl:when test="@categorytype='setting'">
                <h1>Spatial Settings</h1>
                <div class="setting">
                    <img src="images/themes/large/{@name}.gif" alt="{images/@name}"
                        style="float:left"/>
                    <xsl:copy-of select="document('intros.xml')/text/div[@id=$sectionid]"/>
                </div>
            </xsl:when>

            <xsl:when test="@categorytype='theme'">
                <h1>Common Themes</h1>
                <div class="setting">
                    <img src="images/themes/large/{@name}.gif" alt="{images/@name}"
                        style="float:left"/>
                    <xsl:copy-of select="document('intros.xml')/text/div[@id=$sectionid]"/>
                </div>
            </xsl:when>


            <!--<xsl:when test="@categorytype='media'">-->

            <xsl:otherwise>
                <h1>
                    <xsl:copy-of select="document('intros.xml')/text/div[@id=$sectionid]/h2/text()"
                    />
                </h1>
                <div class="setting">
                    <xsl:copy-of select="document('intros.xml')/text/div[@id=$sectionid]/p"/>
                </div>
            </xsl:otherwise>
            <!--</xsl:when>-->

        </xsl:choose>

        <xsl:if test="descendant::item/term[@id='fiction']">
            <h3>Literature</h3>
            <ul class="category">
                <xsl:for-each select="item[term/@id='fiction']">
                    <xsl:sort select="date/@value"/>
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </ul>
        </xsl:if>

        <xsl:if test="descendant::item/term[@id='image']">
            <h3>Art and Illustration</h3>
            <ul class="category">
                <xsl:for-each select="item[term/@id='image']">
                    <xsl:sort select="date/@value"/>
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </ul>
        </xsl:if>

        <xsl:if test="descendant::item/term[@id='history']">
            <h3>Historical Documents</h3>
            <ul class="category">
                <xsl:for-each select="item[term/@id='history']">
                    <xsl:sort select="date/@value"/>
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </ul>
        </xsl:if>


        <xsl:if test="descendant::item/term[@id='commentary']">
            <h3>Commentary</h3>
            <ul class="category">
                <xsl:for-each select="item[term/@id='commentary']">
                    <xsl:sort select="author/@name"/>
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </ul>
        </xsl:if>


    </xsl:template>



    <xsl:template match="TEI.2[@type='category']/item[@id]">
        <li>
            <img alt="{term/@id}" src="images/{term/@id}.gif"/>&#160;<a
                href="content.php?id={@id}&amp;ref={../@name}">
                <xsl:if test="descendant::author//text()"><xsl:apply-templates select="author[1]"/>, </xsl:if>
                <xsl:apply-templates select="title[@type != 'sub']"/>
                <xsl:if test="descendant::date/text()">(<xsl:apply-templates select="date"
                    />)</xsl:if>
            </a>
        </li>

    </xsl:template>

    <xsl:template match="q[@rend='block']">
        <xsl:choose>

            <xsl:when test="descendant::p">
                <blockquote class="block">
                    <xsl:apply-templates/>
                </blockquote>
            </xsl:when>
            <xsl:when test="ancestor::p">
                <q class="block">
                    <xsl:apply-templates/>
                </q>
            </xsl:when>
        </xsl:choose>

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

        <form action="search/search.php">

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
                            <label for="setting">Spatial Setting </label>
                        </p>
                    </td>
                    <td>
                        <p>
                            <select name="setting" id="setting">

                                <option value="" default="default"/>
                                <option value="boudoir" id="boudoir">In the Boudoir</option>
                                <option value="countrywalk" id="countrywalk">On a Country
                                    Walk</option>
                                <option value="garden" id="garden">In a Garden</option>
                                <option value="parlor" id="parlor">In the Parlor</option>
                                <option value="party" id="party">At a Dance or Party</option>
                                <option value="pains" id="piano">At the Piano</option>
                                <option value="publicspace" id="publicspace">In Public
                                    Spaces</option>
                                <option value="carriage" id="carriage">In a Carriage or
                                    Train</option>
                                <option value="urbanwalk" id="urbanwalk">On an Urban
                                    Walkway</option>
                                <option value="wild" id="wild">In the Wild</option>
                            </select>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <p>
                            <label for="theme">Common Theme</label>
                        </p>
                    </td>
                    <td>
                        <p>
                            <select id="theme" name="theme">

                                <option value="" default="default"/>
                                <option value="adultery" id="adultery">Adultery</option>
                                <option value="arrangedmarriage" id="arrangedmarriage">Arranged
                                    Marriage</option>
                                <option value="popularpress" id="popularpress">Popular
                                    Press</option>
                                <option value="breachofpromise" id="breachofpromise">Breach of
                                    Promise</option>
                                <option value="class" id="class">Class</option>
                                <option value="courtship" id="courtship">Courtship</option>
                                <option value="divorce" id="divorce">Divorce</option>
                                <option value="premaritalsex" id="premaritalsex">Premarital
                                    Sex</option>
                                <option value="prostitution" id="prostitution">Prostitution</option>
                                <option value="seduction" id="seduction">Seduction</option>
                            </select>
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
                            <label for="category">Category</label>
                        </p>
                    </td>
                    <td>
                        <p>
                            <select id="category" name="category">

                                <option value="" default="default"/>
                                <option value="fiction" id="fiction">Literature</option>
                                <option value="history" id="history">History</option>
                                <option value="image" id="images">Art &amp;
                                    Illustration</option>
                                <option value="commentary" id="commentary">Commentary</option>
                            </select>

                        </p>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <p>
                            <label for="nationality">Nationality</label>
                        </p>
                    </td>
                    <td>
                        <p>
                            <select id="nationality" name="nationality">

                                <option value="" default="default"/>
                                <option value="american" id="american">American</option>
                                <option value="british" id="british">British</option>
                                <option value="french" id="french">French</option>

                            </select>
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
            <img alt="{term/@id}" src="images/{term/@id}.gif"/>&#160;<a
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


    <xsl:template match="processing-instruction('REV_DISC')">
        <xsl:if test="contains(. , '+')">
            <xsl:text disable-output-escaping="yes"><![CDATA[<strong class="searchterm">]]></xsl:text>
        </xsl:if>
        <xsl:if test="contains(. , '-')">
            <xsl:text disable-output-escaping="yes"><![CDATA[</strong>]]></xsl:text>
        </xsl:if>
    </xsl:template>


</xsl:stylesheet>
