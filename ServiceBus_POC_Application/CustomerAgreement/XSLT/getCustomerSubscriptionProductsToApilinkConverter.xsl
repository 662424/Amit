<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>				
	
<xsl:template match="/">
<cus:getCustomerSubscriptionProductsRequest xmlns:cus="http://dk/tdc/bss/crm/customeragreement">
         <cus:UserId><xsl:value-of select="//cus:getSubscriptionProductsByICCRequest/cus:request/cus:UserId"/></cus:UserId>
         <cus:Catalog><xsl:value-of select="//cus:getSubscriptionProductsByICCRequest/cus:request/cus:Catalog"/></cus:Catalog>
         <cus:SubscriptionNo><xsl:value-of select="//cus:getSubscriptionProductsByICCRequest/cus:request/cus:ICC"/></cus:SubscriptionNo>
         <cus:HideAdditionalProducts>false</cus:HideAdditionalProducts>
      </cus:getCustomerSubscriptionProductsRequest>
</xsl:template>			
</xsl:stylesheet>