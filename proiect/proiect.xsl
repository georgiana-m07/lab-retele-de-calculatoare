<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <meta charset="UTF-8"/>
            <title>Detalii filme</title>
            <link rel="stylesheet" href="proiect.css"/>
         </head>
         <body>
            <h1>Detalii filme</h1>
            <table>
               <tr>
                  <th>Titlu</th>
                  <th>Regizor</th>
                  <th>An</th>
                  <th>Distribuție</th>
                  <th>Descriere</th>
                  <th>Poster</th>
                  <th>Rating</th>
                  <th>Recenzii</th>
               </tr>
               <xsl:for-each select="filme/film">
                  <tr>
                     <td><xsl:value-of select="titlu"/></td>
                     <td><xsl:value-of select="regizor"/></td>
                     <td><xsl:value-of select="an"/></td>
                     <td>
                        <xsl:for-each select="distributie/actor">
                           <xsl:value-of select="."/>
                           <xsl:if test="position() != last()">, </xsl:if>
                        </xsl:for-each>
                     </td>
                     <td><xsl:value-of select="descriere"/></td>
                     <td><img src="{poster}" alt="Poster"/></td>
                     <td><xsl:value-of select="recenzii/recenzie/rating"/></td>
                     <td>
                        <xsl:for-each select="recenzii/recenzie">
                           <p>
                              <strong><xsl:value-of select="titlu"/></strong>
                              <br/>
                              <xsl:value-of select="autor"/>
                              <br/>
                              <xsl:value-of select="text"/>
                           </p>
                        </xsl:for-each>
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
