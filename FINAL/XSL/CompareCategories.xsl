<!--
FileName: CompareCategories.xsl
Author: Atif Tirmizi
Professor: Schoenacher
Assignment: Final Project
Due Date: 12/2/2015 
-->

<!--XML Namespace 

<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	 xmlns:bc="http://finalProject/CompareCategories">
	 
	 
	<xsl:output method="html"
     	doctype-system="about:legacy-compat"
     	encoding="UTF-8"
     	indent="yes" /> 
		-->
		
		 <!--INCLUDING THIS FILE SO ALL OF ITS' FUNCTIONS CAN BE CALLED THROUGOUT -->
			
	 
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">	
	<xsl:template match="/">
		
		<html>
			<head>
				<title>Compare Categories</title>
				<style type="text/css"></style>
				<link href="CSS/BeefCategoryStyles.css" rel="stylesheet" type="text/css" />
				<link href="CSS/sm-clean.css" rel="stylesheet" type="text/css"/>
			</head>
			
			<body>
			<section id="container">
			
				<ul class="sm sm-clean">
					<div id="navbar">
						<ul>
							<li><a href="Index.xml">Home</a></li>
							<li><a href="Compound.xml">All Foods</a>
								<ul>
									<li><a href="ChickenCategory.xml">Chicken Entrees</a></li>
									<li><a href="BeefCategory.xml">Beef Entrees</a></li>
									<li><a href="CompareCategories.xml">Compare All Foods</a></li>
								</ul>
							</li>
						</ul>			
					</div>
				</ul>
			
				<h3>Compare All Foods</h3>
				<xsl:apply-templates/> 		
										
					
				</section>	
			</body>
		</html>
	</xsl:template>
	
	<!--Matching a specific product -->
	<xsl:template match="product">
  <p>
    <xsl:apply-templates select="name"/>  
    <xsl:apply-templates select="serves"/>
	<xsl:apply-templates select="calories"/>  
    <xsl:apply-templates select="price"/>
  </p>
</xsl:template>

	<xsl:template match="name">
	  Name: <span style="color:#ff0000">
	  <xsl:value-of select="."/></span>
	  <br />
	</xsl:template>

	<xsl:template match="serves">
	  Serves: <span style="color:#000099">
	  <xsl:value-of select="."/></span>
	  <br/>
	</xsl:template>

	<xsl:template match="calories">
	  Calories: <span style="color:#660033">
	  <xsl:value-of select="."/></span>
	  <br/>
	</xsl:template>

	<xsl:template match="price">
	  Price: <span style="color:purple">
	  <xsl:value-of select="."/></span>
	  <br/>
	</xsl:template>
	
</xsl:stylesheet>
	
	
	