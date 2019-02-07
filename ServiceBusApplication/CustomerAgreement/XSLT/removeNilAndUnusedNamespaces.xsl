<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:java="java:dk.tdc.nabs.adaptor.external.datatypes" xmlns:cus="http://dk/tdc/bss/crm/customeragreement" >
	
<xsl:template match="*">
                <xsl:element name="{name()}" namespace="{namespace-uri()}">
			<xsl:copy-of select="@*"/>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
 <xsl:template match="*[@xsi:nil = 'true']" /> 
</xsl:stylesheet>