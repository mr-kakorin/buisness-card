<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  	<head>
  		<title>About me</title>
      <link rel="stylesheet" href="style.css"/>
    </head>
  <body>
      	<div class="lblMain">
       <table>      
        <tr>
          <td class="lblProperty">Name:
        
          <span class="lblText"> 
          <xsl:value-of select="card/name/firstname"/>  &#160;
          <xsl:value-of select="card/name/lastname"/> 
          </span>
          </td>
        </tr>        
   
        <tr>
          <td class="lblProperty">University: <span class="lblText"> 
                  <xsl:value-of select="card/education/university"/> </span>
          </td>
        </tr>

        <tr>
          <td class="lblProperty">Faculty:
          <span class="lblText"> <xsl:value-of select="card/education/faculty"/> </span>
          </td>
        </tr>

        <tr>
          <td class="lblProperty">Course:
          <span class="lblText"> <xsl:value-of select="card/education/course"/></span> 
          </td>
        </tr>
        
         <tr>
          <td class="lblProperty">E-mail:
                   <span class="lblText"> 
            <a href="mailto:{card/email}">
          <xsl:value-of select="card/email"/>
      </a> 
           </span> 
          </td>
        </tr>
      </table>
    </div>
  </body>
  </html>
</xsl:template>


</xsl:stylesheet>