<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:strip-space elements="bibl analytic author monogr imprint biblScope"/>

<xsl:output method="html" indent="no"/>

<xsl:template match="TEI.2">
<html>
<head>
<title><xsl:value-of select="//sourceDesc/bibl" /></title>
<style>
body {
font-family: Arial, Arial Unicode MS, sans-serif;
font-size: small;
margin-left: 20px;
width: 20em;
margin-right: 20px;
font-family: arial, serif
p { margin-top: 0.25em; margin-bottom: 0.25em; text-indent: 0em; }
</style>
</head>
<body>
<table width="600" border="0">
<tr><td width="15"></td><td>

<xsl:variable name="prevNextID">
<xsl:value-of select="substring-after(@id,'ls.')" />
</xsl:variable>

<center>
<xsl:choose>
<xsl:when test="@n='1'">
<FONT FACE="Arial, Helvetica, Sans Serif" SIZE="-2" COLOR="#999999">
previous article</FONT>
</xsl:when>
<xsl:otherwise>
<FONT FACE="Arial, Helvetica, Sans Serif" SIZE="-2" COLOR="#003366">
<A><xsl:attribute name="href">ls.<xsl:value-of select='format-number($prevNextID - 1, "00000.")' />.xml</xsl:attribute>previous</A></FONT>
</xsl:otherwise>
</xsl:choose>

<FONT FACE="Arial, Helvetica, Sans Serif" SIZE="-2" COLOR="#003366">
&#160;&#160;|&#160;&#160;
</FONT>

<xsl:choose>
<xsl:when test="@id='DJ.0001' and @n='1012'">
<FONT FACE="Arial, Helvetica, Sans Serif" SIZE="-2" COLOR="#999999">
next article</FONT>
</xsl:when>
<xsl:otherwise>
<FONT FACE="Arial, Helvetica, Sans Serif" SIZE="-2" COLOR="#003366">
<A><xsl:attribute name="href">ls.<xsl:value-of select='format-number($prevNextID + 1, "00000.")' />.xml</xsl:attribute>next</A></FONT>
</xsl:otherwise>
</xsl:choose>
</center>





<xsl:apply-templates/>

</td></tr></table>

</body>
</html>
</xsl:template>

<xsl:template match="p">
<p><xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="head">
<h1><xsl:apply-templates/></h1>
</xsl:template>

<xsl:template match="teiHeader">
</xsl:template>

<xsl:template match="hi[@rend='italic']">
<i><xsl:apply-templates/></i>
</xsl:template>

<xsl:template match="hi[@rend='bold']">
<b><xsl:apply-templates/></b>
</xsl:template>

</xsl:stylesheet>