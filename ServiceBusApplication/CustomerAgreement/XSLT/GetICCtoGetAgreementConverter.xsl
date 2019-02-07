<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>				
	
<xsl:template match="/">
<cus:getAgreement xmlns:cus="http://dk/tdc/bss/crm/customeragreement">
    <cus:request>
        <cus:UserId><xsl:value-of select="//cus:getAgreementByICCRequest/cus:request/cus:UserId"/></cus:UserId>
        <cus:Catalog><xsl:value-of select="//cus:getAgreementByICCRequest/cus:request/cus:Catalog"/></cus:Catalog>
        <cus:SalesChannel><xsl:value-of select="//cus:getAgreementByICCRequest/cus:request/cus:SalesChannel"/></cus:SalesChannel>
        <cus:SubscriptionNo><xsl:value-of select="//cus:getAgreementByICCRequest/cus:request/cus:ICC"/></cus:SubscriptionNo>
        <cus:TargetSystem>CU</cus:TargetSystem>
        <cus:ShortReply><xsl:value-of select="//cus:getAgreementByICCRequest/cus:request/cus:ShortReply"/></cus:ShortReply>
        <cus:StartPos><xsl:value-of select="//cus:getAgreementByICCRequest/cus:request/cus:StartPos"/></cus:StartPos>
        <cus:ReturnedSubscriptionCount><xsl:value-of select="//cus:getAgreementByICCRequest/cus:request/cus:ReturnedSubscriptionCount"/></cus:ReturnedSubscriptionCount>
    </cus:request>
</cus:getAgreement>
</xsl:template>			
</xsl:stylesheet>