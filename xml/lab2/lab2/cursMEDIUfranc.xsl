<!-- Foaie de stiluri recurgind la modulul EXSLT Math
     pentru determinarea cursului mediu
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:math="http://exslt.org/math" exclude-result-prefixes="math">
    
    
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:variable name="francCOUNT" select="(//moneda [@nume='FrancElvetian']/curs)" > </xsl:variable>
    
    <xsl:variable name="franc10" select="(//moneda [@nume='FrancElvetian']/curs)" > </xsl:variable>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Cursul mediu: </title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="//@cursvalutar"/>
                </h1>
                <hr/>
                <p> Cursul mediu al francului elvetian in perioada [10.03.2013 – 16.03.2013] a fost:
                    <xsl:variable name="media" 
                        select="sum($franc10) div count($francCOUNT)"/>
                    <xsl:value-of select="sum($franc10) div count($francCOUNT)"/>
                    
                </p>
                
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>