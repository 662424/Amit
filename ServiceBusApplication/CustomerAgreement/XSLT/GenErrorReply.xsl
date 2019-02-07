<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:cus="http://dk/tdc/bss/crm/customeragreement"
       xmlns:datetime="http://exslt.org/dates-and-times">
	<xsl:output method="xml" version="1.0" indent="yes" />
        <xsl:param name="errorMessage" />
         <xsl:param name="errorCode" />
          <xsl:param name="severityLevel" />

	<xsl:template match="/">
   <cus:getAgreementResponse  xmlns:cus="http://dk/tdc/bss/crm/customeragreement">
	<cus:return>
	<cus:ReplyInfo>
	<cus:ReplyTimestamp><xsl:value-of select="datetime:dateTime()" /></cus:ReplyTimestamp>
	<cus:ServerId>itsb</cus:ServerId>
	<cus:SeverityLevel><xsl:value-of select="$severityLevel" /></cus:SeverityLevel>
	<cus:StatusCode><xsl:value-of select="$errorCode" /></cus:StatusCode>
	<cus:StatusMessage><xsl:value-of select="$errorMessage" /></cus:StatusMessage>
	<cus:TransactionDuration>0</cus:TransactionDuration>
	</cus:ReplyInfo>
</cus:return>
</cus:getAgreementResponse>
	</xsl:template>
   
</xsl:stylesheet>