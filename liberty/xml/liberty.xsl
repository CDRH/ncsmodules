<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:exist="http://exist.sourceforge.net/NS/exist">

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="titleStmt"/>
                </title>
            </head>
            <body bgcolor="#ffffff">

<font face="arial" size="2">

<xsl:apply-templates select="//text"/>

</font></body>
	</html>
    </xsl:template>

<xsl:template match="p">
<p><xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="head">
<h2><xsl:apply-templates/></h2>
</xsl:template>

<xsl:template match="hi[@rend='italic']">
<i><xsl:apply-templates/></i>
</xsl:template>

<xsl:template match="q[@rend='block']">
<blockquote><xsl:apply-templates/></blockquote>
</xsl:template>

<xsl:template match="l">
<xsl:apply-templates/><br />
</xsl:template>

<xsl:template match="div">
<xsl:apply-templates/><br /><p /><br />
</xsl:template>

</xsl:stylesheet>

