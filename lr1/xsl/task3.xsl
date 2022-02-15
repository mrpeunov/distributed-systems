<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:template match="/">
        <html>
        <head>
            <meta charset="UTF-8"></meta>
        </head>
        <body>
            <xsl:for-each select="employees/*">
                <b>
                    <i>
                        <xsl:value-of select="@id"/>
                    </i>
                </b>
                <xsl:text> </xsl:text>
                <xsl:value-of select="."/><br/>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>