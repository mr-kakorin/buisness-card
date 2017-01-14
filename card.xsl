<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  	<head>
  		<title>About me</title>
      <link rel="stylesheet" href="style.css"/>
    </head>
  <body>
    <div class="lblMain">
      <div class="lblTitle">
      Personal information:
      </div>  
      <div class="lblProperty">Name:        
        <span class="lblText"> 
          <xsl:value-of select="card/name/firstname"/>  &#160;
          <xsl:value-of select="card/name/lastname"/> 
        </span>
      </div>           
      <div class="lblTitle">
      Education:
      </div>
      <div class="lblProperty">University: 
        <span class="lblText"> 
          <xsl:value-of select="card/education/university"/> 
        </span>
      </div>      
      <div class="lblProperty">Faculty:
          <span class="lblText"> 
            <xsl:value-of select="card/education/faculty"/> 
          </span>
      </div>        
      <div class="lblProperty">Course:
          <span class="lblText">
            <xsl:value-of select="card/education/course"/>
          </span> 
      </div>       
      <div class="lblTitle">
      To contact me:
      </div>
      <div class="lblProperty">E-mail:
        <span class="lblText"> 
            <a href="mailto:{card/email}">
              <xsl:value-of select="card/email"/>
            </a> 
           </span>     
      </div>   
      <div class="lblProperty">Contact:
        <span class="lblText"> 
            <a href="form.html">
              <xsl:value-of select="//contactme"/>
            </a> 
           </span>     
      </div>   
    </div>
  </body>
  </html>
</xsl:template>


</xsl:stylesheet>