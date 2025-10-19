<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		version="1.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="/">
    <xsl:element name="namelist">
      <xsl:for-each select="//name">
	<xsl:copy-of select="." />
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>

  
