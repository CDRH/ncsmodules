<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output encoding="UTF-8" indent="yes" method="html"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <add>
            <doc>

                <field name="id">
                    <xsl:value-of select="TEI.2/@id"/>
                </field>

                <field name="title">
                    <xsl:value-of select="TEI.2/teiHeader/fileDesc/titleStmt/title[@type='main']"/>
                </field>

                <xsl:for-each select="descendant::teiHeader/profileDesc/textClass/keywords/term">
                    <xsl:if
                        test="@type='media' or @type='place' or @type='setting' or @type='theme'">
                        <field>
                            <xsl:attribute name="name">
                                <xsl:choose>
                                    <xsl:when test="@type='media'">
                                        <xsl:text>category</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="@type='place'">
                                        <xsl:text>nationality</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="@type"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                            <xsl:value-of select="@id"/>
                        </field>
                    </xsl:if>
                </xsl:for-each>

                <field name="text">
                    <xsl:for-each select="descendant::text">
                        <xsl:value-of select="."/>
                        <xsl:text> </xsl:text>
                    </xsl:for-each>
                </field>

            </doc>
        </add>
    </xsl:template>

</xsl:stylesheet>
