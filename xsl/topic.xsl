<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">

  <xsl:template match="*[contains(@class,' topic/image ')]" name="image">
    <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-startprop ')]" mode="outofline"/>
    <xsl:choose>
      <xsl:when test="empty(@href)"/>
      <xsl:when test="@placement = 'break'">
        <fo:block xsl:use-attribute-sets="image__block">
          <xsl:call-template name="commonattributes"/>
          <xsl:apply-templates select="." mode="placeImage">
            <xsl:with-param name="imageAlign" select="@align"/>
            <xsl:with-param name="href" select="@href"/>
            <xsl:with-param name="height" select="@height"/>
            <xsl:with-param name="width" select="@width"/>
          </xsl:apply-templates>
        </fo:block>
        <xsl:if test="$artLabel='yes'">
          <fo:block>
            <xsl:apply-templates select="." mode="image.artlabel"/>
          </fo:block>
        </xsl:if>
      </xsl:when>
      <xsl:otherwise>
        <fo:inline xsl:use-attribute-sets="image__inline">
          <xsl:call-template name="commonattributes"/>
          <xsl:apply-templates select="." mode="placeImage">
            <xsl:with-param name="imageAlign" select="@align"/>
            <xsl:with-param name="href" select="@href"/>
            <xsl:with-param name="height" select="@height"/>
            <xsl:with-param name="width" select="@width"/>
          </xsl:apply-templates>
        </fo:inline>
        <xsl:if test="$artLabel='yes'">
          <xsl:apply-templates select="." mode="image.artlabel"/>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-endprop ')]" mode="outofline"/>
  </xsl:template>

</xsl:stylesheet>
