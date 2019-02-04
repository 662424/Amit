<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:cus="http://dk/tdc/bss/crm/customeragreement">
	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="node()|@*">
		<xsl:copy copy-namespaces="no">
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="cus:AccountInfo">
		<xsl:variable name="currentAccountId" select="./cus:AccountNo/."/>
		<xsl:variable name="currentLinkitInfo" select="/*//cus:getLinkitInfoResponse/cus:return/cus:LinkitInfoList[cus:Ban=$currentAccountId][1]"/>
		<cus:AccountInfo>
			<xsl:apply-templates select="cus:NameAddressRef"/>
			<cus:LinktItId>
				<xsl:value-of select="$currentLinkitInfo/cus:LinktItId/."/>
			</cus:LinktItId>
			<xsl:apply-templates select="cus:CustomerNumber|cus:CustomerNoRef|cus:CvrNumber|cus:AccountType|cus:AccountNo|cus:AccountNoStatus|cus:ArBalance|cus:GroupID|cus:PaymentMethod|cus:ERegistrationInfo|cus:PermissionDetails"/>
			<xsl:copy-of select="$currentLinkitInfo/cus:CustomerSegment"/>
                       <cus:LegacySystem>nabs</cus:LegacySystem>
		</cus:AccountInfo>
	</xsl:template>
	<xsl:template match="cus:getLinkitInfoResponse">
		<!-- do nothing-->
	</xsl:template>
</xsl:stylesheet>