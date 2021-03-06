<?xml version="1.0" encoding="UTF-8" ?>


<!--
FileName: ChickenCategory.xsl
Author: Atif Tirmizi
Professor: Schoenacher
Assignment: Final Project
Due Date: 12/2/2015 
-->

<!-- This is the namespace for the file: 
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	 xmlns:cc="http://finalProject/ChickenCategory">
						  
						  
<xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />	
-->	  
   
 
	
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
<!-- Selecting all of the elements, starting from the root -->	
<xsl:template match="/">
<html>
	<head>
		<title>Chicken Category</title> 
		
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
		
		
		<p>Chicken is a very common food category in the American-Chinese food culture. Most chicken entrees are best served with chicken
		fried rice and can even be served with vegetable fried rice or plain white rice. Entrees in this category come with small chunks 
		of vegetables along with the choice of rice. They useually come with broccoly, green peppers, onions, pickles and more.</p>
		
		<h2>Chicken Entrees:</h2>
		<table border="5" cellSpacing="0" cellPadding="5">
			<tr bgcolor="#9acd32">
				<th style="text-align:left">Name</th>
				<th style="text-align:left">Serves</th>
				<th style="text-align:left">Calories</th>
				<th style="text-align:left">Price ($)</th>
				<th style="text-align:left">Description</th>
			</tr>
      
		<xsl:for-each select="products/product">
		  <tr>
		  <td><xsl:value-of select="name"/></td>
			<td><xsl:value-of select="serves"/></td>
			<td><xsl:value-of select="calories"/></td>
			<td><xsl:value-of select="price"/></td>
			<td><xsl:value-of select="description"/></td>
		  </tr>
		</xsl:for-each>
		</table> 
		
		<!-- Ingredients-->
		<h2>Ingredients:</h2>
		<xsl:for-each select="products/product">
					<div style="background-color:teal;color:white;padding:4px">
						<span style="font-weight:bold"><xsl:value-of select="name"/> - </span>
						<xsl:value-of select="price"/>
					</div>
				
				<h3>Ingredient Name</h3>
				<xsl:for-each select="ingredients/ingredient">
					<div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
						<ul>
							
							<li><xsl:value-of select="ingredientName"/></li>
						</ul>
					</div>
				</xsl:for-each>
				
				<h3>Ingredient Quantity</h3>
				<xsl:for-each select="ingredients/ingredient/measurement">
					<div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
						<ul>
							<li><xsl:value-of select="measurementQuantity"/></li>
						</ul>
					</div>
				</xsl:for-each>
				
			</xsl:for-each>
		
		<h2>Steps:</h2>
		<table border="5">
			<tr bgcolor="#9acd32">
				<th style="text-align:left">Step</th>
			</tr>
		
			<xsl:for-each select="products/product/instructions">
				<ul>
				  <instructions>
					<li><xsl:copy-of select="step"/></li>
				  </instructions>
				</ul>
			</xsl:for-each>
		</table>
		
		
		</section>
	
		
		<!-- Closing/ stop tags for the template -->				  
					  			  
	</body>					  
</html>				  		
</xsl:template>
						  
</xsl:stylesheet>