<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:adap="http://dk/tdc/nabs/adaptor" 	xmlns:cus="http://dk/tdc/bss/crm/customeragreement" xmlns:java="java:dk.tdc.nabs.adaptor.external.datatypes"
 xmlns:java1="java:dk.tdc.nabs.adaptor.external.datatypes.newSSA">
	<xsl:output method="xml" version="1.0" indent="yes" />
	<xsl:template match="cus:getAgreement">

	    <adap:getAgreement>	
    <xsl:apply-templates select="cus:request"/>
            </adap:getAgreement>
	</xsl:template>
   <xsl:template match="cus:request">
 <adap:request>
           <java:SalesChannel>KVIK</java:SalesChannel>
           <java:UserId></java:UserId>
           <java1:Catalog><xsl:value-of select="cus:Catalog" /></java1:Catalog> 
           <java1:SimNo></java1:SimNo> 
           <java1:SubscriptionNumber><xsl:value-of select="cus:SubscriptionNo" /></java1:SubscriptionNumber>
 </adap:request>

     </xsl:template>
</xsl:stylesheet>