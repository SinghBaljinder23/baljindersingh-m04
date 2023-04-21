<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <title>Estil 1 XSLT</title>
    </head>
    <body>
      <div>
        <ul>
          <xsl:for-each select="planta">
            <li><xsl:value-of select="nom"/></li>
            <ul>
              <li><xsl:value-of select="especie" /></li>
              <li><xsl:value-of select="color" /></li>
              <li><xsl:value-of select="temps_floracio" /></li>
            </ul>
          </xsl:for-each>
        </ul>
      </div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>