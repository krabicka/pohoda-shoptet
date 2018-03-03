<?xml version="1.0" encoding="Windows-1250"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rsp="http://www.stormware.cz/schema/version_2/response.xsd" xmlns:lStk="http://www.stormware.cz/schema/version_2/list_stock.xsd" xmlns:stk="http://www.stormware.cz/schema/version_2/stock.xsd" extension-element-prefixes="xsl rsp lStk stk">
<xsl:output encoding="UTF-8" />
<xsl:template match="/">
<SHOP>
      <xsl:for-each select="rsp:responsePack/rsp:responsePackItem/lStk:listStock/lStk:stock">
      <SHOPITEM>
          <CODE><xsl:value-of select="stk:stockHeader/stk:code"/></CODE>
          <STOCK>
             <AMOUNT><xsl:value-of select="stk:stockHeader/stk:count"/></AMOUNT>
          </STOCK>
      </SHOPITEM>
      </xsl:for-each>
</SHOP>
</xsl:template>
</xsl:stylesheet>