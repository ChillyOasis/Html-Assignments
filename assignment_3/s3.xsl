<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">
<xsl:template match="/forecast">
	<html>
		<head>
			<title>Assignment 3</title>
		</head>
		<body>
			<h1><xsl:value-of select="@queryLocation"/> @ <xsl:value-of select="@queryTime"/></h1>
			<table cellpadding="15">
				<tr>
					<xsl:for-each select="weather">
					<xsl:sort select="@yyyymmdd"/>
						<td align="center">
							<font color="blue"><xsl:value-of select="dayOfWeek"/></font>
							<xsl:text> </xsl:text>
							<xsl:value-of select="date"/>
							<xsl:text>/</xsl:text>
							<xsl:value-of select="month"/>
							<br/>
							<img>
								<xsl:attribute name="src">
									<xsl:value-of select="overallCode"/>
									<xsl:text>.png</xsl:text>
								</xsl:attribute>
							</img>
							<br/>
							<big><b><xsl:value-of select="highest"/>°</b></big>/<xsl:value-of select="lowest"/>°
							<br/>
							<i><xsl:value-of select="overall"/></i>
						</td>
					</xsl:for-each>
				</tr>
			</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>