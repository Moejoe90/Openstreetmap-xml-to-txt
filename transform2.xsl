<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<xsl:for-each select="osm/node">
	<!-- This will arrange the data as coulmns -->
	<!-- Latitude -->
<xsl:value-of select="@lat"/>
			<xsl:text>,</xsl:text>
            <xsl:text>&#x09;</xsl:text>
	<!-- Longitude -->
<xsl:value-of select="@lon"/>
			<xsl:text>,</xsl:text>
            <xsl:text>&#x09;</xsl:text>
	<!-- Select object with tag 'name' -->
<xsl:value-of select="./tag[@k = 'name']/@v"/>
		<xsl:text>,</xsl:text>
        <xsl:text>&#x09;</xsl:text>
	<!-- Street name -->
<xsl:value-of select="./tag[@k = 'addr:street']/@v"/>
		<xsl:text>,</xsl:text>
        <xsl:text>&#x09;</xsl:text>
	<!-- Accssesibilty -->
<xsl:value-of select="./tag[@k = 'wheelchair']/@v"/>
		<xsl:text>,</xsl:text>
        <xsl:text>&#x09;</xsl:text>
<xsl:text>&#x0A;</xsl:text>
        </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
