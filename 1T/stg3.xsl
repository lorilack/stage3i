<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs"
  version="2.0">
  
  <xsl:output method="xhtml" omit-xml-declaration="yes"/>
  
  <xsl:template match = "/">
    <html>
      <head/>
      <booy>
        <xsl:apply-templates/>
      </booy>
    </html>
  </xsl:template>

  <xsl:template match = "titre1">
    <h1>
      <xsl:apply-templates/>
    </h1>
  </xsl:template>
  

  <xsl:template match = "titre2">
    <h2>
      <xsl:apply-templates/>
    </h2>
  </xsl:template>
  
  <xsl:template match = "p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match = "puce[empty(preceding-sibling::puce)]">
    <ul>
      <xsl:apply-templates select = ".|following-sibling::puce" mode = "element"/>
    </ul>
  </xsl:template>
  
  <xsl:template match = "puce" mode = "element">
    <li><xsl:apply-templates/></li>
  </xsl:template>
    
  <xsl:template match = "puce"/>
  
  <xsl:template match = "lien">
    <a href="{idref}">      
      <xsl:apply-templates/>
    </a>
  </xsl:template>
  
</xsl:stylesheet>