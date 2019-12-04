<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<#import "root://activities/GasMvpTemplate/dagger2_macros.ftl" as dagger2>
<recipe>
<@kt.addAllKotlinDependencies />
<@dagger2.addAllKaptDependencies />

<#include "../common/recipe_manifest.xml.ftl" />

<instantiate from="root/src/app_package/ArmsActivity.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.${ktOrJavaExt}" />


<#if  generateActivityLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>



<instantiate from="root/src/app_package/ArmsContract.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(contractPackageName)}/${pageName}Contract.${ktOrJavaExt}" />



    <instantiate from="root/src/app_package/ArmsPresenter.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.${ktOrJavaExt}" />


<#if needModel>
    <instantiate from="root/src/app_package/ArmsModel.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(modelPackageName)}/${pageName}Model.${ktOrJavaExt}" />
</#if>

 <instantiate from="root/src/app_package/ArmsComponent.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(componentPackageName)}/${pageName}Component.${ktOrJavaExt}" />

<#if needMoudle>
   
    <instantiate from="root/src/app_package/ArmsModule.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(moudlePackageName)}/${pageName}Module.${ktOrJavaExt}" />

</#if>

</recipe>
