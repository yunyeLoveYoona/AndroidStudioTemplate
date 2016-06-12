<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

	<#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
            <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
     </#if>

    <#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
           <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
    </#if>

    <#if (buildApi gte 22) && appCompat && !(hasDependency('com.android.support:design'))>
        <dependency mavenUrl="com.android.support:design:${buildApi}.+" />
    </#if>

   <instantiate from="root/src/app_package/RecyclerViewActivity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="root/src/app_package/ParallaxRecyclerAdapter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/ParallaxRecyclerAdapter.java" />   
		
   <instantiate from="root/src/app_package/MyRecyclerView.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/MyRecyclerView.java" />   
		
		
		
    <instantiate from="root/res/layout/activity_main.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
		<instantiate from="root/res/layout/navigation_header.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/navigation_header.xml" />
		
	<instantiate from="root/res/menu/drawer.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/menu/drawer.xml" />	
		
	
	<merge  from="root/res/values/colors.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/values/colors.xml" />	
	<merge  from="root/res/values/strings.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/values/strings.xml" />			
	<merge  from="root/res/values/styles.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/values/styles.xml" />		
				   
    <open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>        

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

	
 
</recipe>
