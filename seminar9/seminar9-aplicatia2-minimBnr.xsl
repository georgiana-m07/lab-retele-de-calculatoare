<!-- Foaie de stiluri recurgind la modulul EXSLT Math
     pentru determinarea maximului dintr-o multime de valori 
     (aici, cursul valutar)
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:math="http://exslt.org/math" exclude-result-prefixes="math">

     <xsl:output method="html" indent="yes"/>

     <xsl:template match="/">
          <html>
               <head>
                    <title>Minimul cursului valutar</title>
               </head>
               <body>
                    <h1>
                         <xsl:value-of select="//@cursvalutar"/>
                    </h1>
                    <hr/>
                    <p>Cel mai mic curs valutar inregistrat de moneda dolar este:
                              <xsl:value-of
                                   select="math:min(//moneda[@nume='Dolar']/curs)"
                              />
                    </p>
                    
                                 
               </body>
          </html>
     </xsl:template>
</xsl:stylesheet>