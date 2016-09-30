<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  	<head>
  		<title>About me</title>
  	</head>
  <body>
  	
  <div class="Information">   		
        <span style="font-style:italic">First Name: </span>
      <xsl:value-of select="card/name/firstname"/><br/>
        <span style="font-style:italic">Second Name: </span>
      <xsl:value-of select="card/name/lastname"/><br/>
        <span style="font-style:italic">University: </span>
      <xsl:value-of select="card/education/university"/><br/>
        <span style="font-style:italic">Faculty: </span>
      <xsl:value-of select="card/education/faculty"/><br/>
        <span style="font-style:italic">Course: </span>
      <xsl:value-of select="card/education/course"/><br/>
        <span style="font-style:italic">E-mail: </span>
      <a href="mailto:{card/email}">
          <xsl:value-of select="card/email"/>
      </a> 
   </div>       
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>