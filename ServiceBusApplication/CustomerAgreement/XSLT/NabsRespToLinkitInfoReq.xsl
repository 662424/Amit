<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:ser="http://service.chub.tdc.dk" 	xmlns:cus="http://dk/tdc/bss/crm/customeragreement">
	<xsl:output method="xml" version="1.0" indent="yes" />
        <xsl:param name="userId" />
	<xsl:template match="/">
	    <ser:getLinkitInfo>
                  <ser:request>
                   <ser:UserId><xsl:value-of select="$userId" /></ser:UserId>
	           <xsl:apply-templates select="//cus:AccountInfo"/>
                   </ser:request>
            </ser:getLinkitInfo>
	</xsl:template>
   <xsl:template match="cus:AccountInfo">
    <xsl:if test="cus:AccountNo/. != ''">        
    <ser:Ban><xsl:value-of select="cus:AccountNo" /></ser:Ban>
   </xsl:if> 
   </xsl:template>
</xsl:stylesheet>