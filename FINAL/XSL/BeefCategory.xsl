<?xml version="1.0" encoding="UTF-8" ?>


<!--
FileName: Ingredients.xsl
Author: Atif Tirmizi
Professor: Schoenacher
Assignment: Final Project
Due Date: 12/2/2015 
-->

<!--XML Namespace 
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	 xmlns:bc="http://finalProject/BeefCategory">
	 
	
	 
	<xsl:output method="html"
     	doctype-system="about:legacy-compat"
     	encoding="UTF-8"
     	indent="yes" /> 
		-->	
			
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">	
	<xsl:template match="/">
	<html>
		<head>
			<title>Beef Category</title>
			
			<!-- LINKING TO THE STYLESHEET -->
			<!-- <style type="text/css"></style> -->
			<link href="CSS/BeefCategoryStyles.css" rel="stylesheet" type="text/css" />
			<link href="CSS/sm-core-css.css" rel="stylesheet" type="text/css"/>  
			<link href="CSS/sm-clean.css" rel="stylesheet" type="text/css"/>
			
			<script src="Scripts/jquery.min.js"></script>
			<script src="Scripts/jquery-1.11.0.min.js"></script>
			<script src="Scripts/jquery.smartmenus.min.js"></script> 
			<script src="Scripts/jquery-ui.min.js"></script>
			
			<script>
			$(document).ready(function() {
						$('.sm').smartmenus({
							showFunction: function($ul, complete) {
								$ul.slideDown(250, complete);
							},
							hideFunction: function($ul, complete) {
								$ul.slideUp(250, complete);
							}
						});	
			</script>
			<script>
				$(document).ready(function() {
					$('#accordion').accordion({
						collapsible: true
					});
				});
			</script>				
		

		
		</head>
		
		<!-- THE HTML BODY TAG -->
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
			
		<p>Beef entrees in the American Chinese culture play a big importance. Chinese tradition has been enjoying beef entrees for centuries.
		Most beef antrees are juicy and usually coated with a hard shell.
		Beef entrees also include many types of appetizers such as soups, rolls, dumplings, and more. The main entrees are too many to count,
		but they are served very similarly to most chicken or vegetable entrees.</p>		
				
			<!-- Description about the Entree -->			
		<h3>Beef Entrees:</h3>
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
		<div id = "accordion">
		<h2>Ingredients</h2>
		
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
		</div>	
		
		<!--Steps for cooking the entree -->	
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
						
		
		
		
		
	</section> <!-- End of this Section -->	
	
	</body>
	</html>	
	</xsl:template>    	 
</xsl:stylesheet>
