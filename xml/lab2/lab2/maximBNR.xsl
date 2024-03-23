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
                    <title>Maximul cursului valutar</title>
               </head>
               <body>
                    <h1>
                         <xsl:value-of select="//@cursvalutar"/>
                    </h1>
                    <hr/>
                    <p>Cel mai mare curs valutar inregistrat in data de 11 martie 2013 a fost:
                              <xsl:value-of
                                   select="math:max(//moneda/curs[@data='11.03.2013'])"
                              />
                    </p>
                    
                                 
               </body>
          </html>
     </xsl:template>
</xsl:stylesheet>