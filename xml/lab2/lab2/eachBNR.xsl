<!-- 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:math="http://exslt.org/math" exclude-result-prefixes="math">



     <xsl:output method="html" indent="yes"/>

     <xsl:template match="/">
          <html>
               <head>
                    
               </head>
               <body>
                    <table border="1">
                         <tr bgcolor="#9acd32">
                              <th>Curs</th>
                              
                         </tr>
                         <xsl:for-each select="cursBNR/moneda">
                        
                              <tr>
                                
                                  <td><xsl:value-of select="curs"/></td>
                                   <td><xsl:value-of select="curs"/></td>
                                   <td><xsl:value-of select="curs"/></td>
                                     </tr> 
                             
                         </xsl:for-each>
                    </table>
                                 
               </body>
          </html>
     </xsl:template>
</xsl:stylesheet>