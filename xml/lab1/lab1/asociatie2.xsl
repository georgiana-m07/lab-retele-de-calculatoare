<?xml version="1.0" ?>     
<!-- Foaie XSL pentru transformarea datelor XML 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">

    <html>
      <head>
        <title>Asociatie</title>
        <link rel="stylesheet" type="text/css" href="asociatie.css"/>
     </head>

      <body>
        <h2> Asociatia de locatari </h2>
        <div id="listing">
          <xsl:apply-templates/>
       
    
        <table border="1" bgcolor="#43b78d" cellspacing="0" cellpadding="0">
          <tr>
            <td>
              <div align="center">
                <strong>Nr.</strong>
              </div>
            </td>
            <td>
              <div align="center">
                <strong>Proprietar</strong>
              </div>
            </td>
            <td>
              <div align="center">
                <strong>Numar camere</strong>
              </div>
            </td>
            <td>
              <div align="center">
                <strong>Suprafata totala</strong>
              </div>
            </td>
            </tr>
			
			   <xsl:for-each select="asociatie/apartament">
            <tr>
              <td><xsl:value-of select="nr"/></td>
              <td><xsl:value-of select="proprietar"/></td>
              <td><xsl:value-of select="nr_camere"/></td>
              <td><xsl:value-of select="suprafata_totala"/></td>
                         </tr>
          </xsl:for-each>
          
        </table>
     
          </div>
          

      </body>
    </html>

  </xsl:template>

 
</xsl:stylesheet>
