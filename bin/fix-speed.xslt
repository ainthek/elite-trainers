<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:ae="http://www.garmin.com/xmlschemas/ActivityExtension/v2"
  version="2.0">
  <xsl:template match="@*|*|processing-instruction()|comment()">
    <xsl:copy>
      <xsl:apply-templates select="*|@*|text()|processing-instruction()|comment()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="//ae:Speed">
  	<ae:Speed><xsl:value-of select=". div 3.6"/></ae:Speed>
  </xsl:template>
</xsl:stylesheet>