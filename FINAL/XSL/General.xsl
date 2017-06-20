<?xml version="1.0" encoding="UTF-8" ?>
<!--
FileName: General.xsl
Author: Atif Tirmizi
Professor: Schoenacher
Assignment: Final Project
Due Date: 12/2/2015 
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template name="navbar">
		<div id="navbar">
			<ul class="sm sm-clean">
				<li><a href="Index.xml">Home</a></li>
				<li><a href="Compound.xml">Menu</a>
					<ul>
						<li><a href="ChickenCategory.xml">Chicken Entrees</a></li>
						<li><a href="BeefCategory.xml">Beef Entrees</a></li>
						<li><a href="Compound.xml">All Entrees</a></li>
					</ul>
				</li>
				<li><a href="CompareCategories.xml">Compare All Food Categories</a></li>
			</ul>
		</div>
	</xsl:template>
	
	
	<!--Calling the template by name "car" -->
	<xsl:template match="product">
		<h2 id="{generate-id()}"><xsl:value-of select="name"/></h2>
		<div>
				<ul>
					<li>Serves</li>
					<li>Calories</li>
					<li>Price</li>
					<li>Description</li>
					<li>Ingredient Name</li>
					<li>Measurement Quantity</li>
					<li>Measurement Type</li>
					<li>Desciption</li>
				</ul>				
				<!-- LISTING ALL OF THE DATA OF EACH FOOD IN AN ORGRANIZED MANNER SO IT CAN BE CALLED LATER -->
				<ul>
					<li><xsl:value-of select="serves"/></li>
					<li><xsl:value-of select="calories"/></li>
					<li><xsl:value-of select="price"/></li>
					<li><xsl:value-of select="instructions/step"/></li>
					<li><xsl:value-of select="ingredients/ingredient/ingredientName"/></li>
					<li><xsl:value-of select="ingredients/ingredient/measurement/@type"/></li>
					<li><xsl:value-of select="ingredients/ingredient/measurement/measurementQuantity"/></li>
					<li><xsl:value-of select="ingredients/ingredient/description"/></li>
				</ul>
			
		</div>
	</xsl:template>
	
	
	<!-- generate ids and list all variables to create a link bar -->
	<xsl:template match="product" mode="linkbar">
		<a href="#{generate-id()}">
			<xsl:value-of select="name"/>
		</a> 
	</xsl:template>

</xsl:stylesheet>

