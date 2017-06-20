<?xml version="1.0" encoding="UTF-8" ?>
<!--
FileName: Index.xsl
Author: Atif Tirmizi
Professor: Schoenacher
Assignment: Final Project
Due Date: 12/2/2015 
-->


<!--XML Namespace -->
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	 xmlns:bc="http://finalProject/Index">
	 
	 
	<xsl:output method="html"
     	doctype-system="about:legacy-compat"
     	encoding="UTF-8"
     	indent="yes" /> 
		
		<xsl:include href="general.xsl"/>

		
		
<xsl:template match="/">
<html>
	<body>
		<head>
			<title>All Food</title>	
			<link href="CSS/BeefCategoryStyles.css" rel="stylesheet" type="text/css" />
				<link href="CSS/sm-core-css.css" rel="stylesheet" type="text/css"/> 
				<link href="CSS/sm-clean.css" rel="stylesheet" type="text/css"/>
				<link href="CSS/slides.css" rel="stylesheet" type="text/css"/>
				<script src="Scripts/jquery.min.js"></script>
				<script src="Scripts/jquery.smartmenus.min.js"></script>
				<script src="Scripts/jquery.slides.min.js"></script>
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
						$(function() {
					     	$('#slides').slidesjs({
					     		width: 940,
					     		height: 528,
					     		play: {
					     			active: true,
					     			auto: true,
					     			interval: 3000,
					     			swap: true
					     		}
					     	});
						});
					});
				</script>
				<style type="text/css">
					.slidesjs-pagination {
						display:none;
					}
				</style>
			
		</head>
		<h2 color = "white">Chinese Food</h2>
	<section id="container">
			<div id="navbar">
				<ul class="sm sm-clean">>
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
		<p><b>Chinese Food is an increasing part of the American food culture. There are numerous Chinese restaurants across the United States
		that serve a vareity of dishes. Most chinese restaurants in the US serve American blend of chinese food. Chinese food here,
		is a mixture of ingredients and spices that are favored in China, as well as some that are common in the US. Most chinese dishes 
		are sweet and drizzled with sweet sauce.Furthermore, the appetizers come in many vareities such as many kinds of soups, 
		shrimp, sea food, fried chicken and more.
		Chinese food is served usually with a side of fried rice and/or noodles.</b></p>
		
		
		<div id="slides">
			<xsl:for-each select="foodPictures/food">	
				<img src="{@picture}" alt="picture of {carName}"/>
			</xsl:for-each>
		</div>
		
	</section>		
		
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
