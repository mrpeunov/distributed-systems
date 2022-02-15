<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:template match="/">
        <html>
        <head>
            <meta charset="UTF-8"></meta>
        </head>
        <body>
            <p>
            <xsl:for-each select="list/*">
                <xsl:value-of select="@name"/>
                <xsl:if test="position() != last()" >, </xsl:if>
                <xsl:if test="position() = last()" >.</xsl:if>
            </xsl:for-each>
            </p>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>