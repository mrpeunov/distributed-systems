<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:template match="/">
        <html>
        <head>
            <meta charset="UTF-8"></meta>
        </head>
        <body>
            <table border="1" cellpadding="6">
                <tr><th colspan="2">Axis: child</th></tr>
                <tr><th>Element</th><th>Nodeset</th></tr>

                <xsl:for-each select="root//*">
                    <tr>
                        <td><xsl:value-of select="name()"/> id = <xsl:value-of select="@id"/><br/></td>
                        <td><xsl:value-of select="../@id"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>