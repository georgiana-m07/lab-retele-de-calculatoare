<?xml version="1.0" ?>     
<!-- Foaie XSL pentru transformarea datelor XML 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">

    <html>
      <head>
        <title>Clinica</title>
     
     </head>

      <body>
        <h2> Medici </h2>
       
    
        <table border="1" bgcolor="#43b78d" cellspacing="0" cellpadding="0">
          <tr>
            <td>
              <div align="center">
                <strong>Nume</strong>
              </div>
            </td>
            <td>
              <div align="center">
                <strong>Prenume</strong>
              </div>
            </td>
            <td>
              <div align="center">
                <strong>Titulatura</strong>
              </div>
            </td>
            </tr>
			
			   <xsl:for-each select="clinica/departament/medic">
            <tr>
              <td><xsl:value-of select="nume"/></td>
              <td><xsl:value-of select="prenume"/></td>
              <td><xsl:value-of select="titulatura"/></td>
                         </tr>
          </xsl:for-each>
          
        </table>


      </body>
    </html>

  </xsl:template>

 
</xsl:stylesheet>
