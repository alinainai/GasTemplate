<#macro addAllKaptDependencies>
  <#if !isNewModule && ((language!'Java')?string == 'Kotlin')>
    <apply plugin="kotlin-kapt" />
    <merge from="root://activities/GasMvpTemplate/dagger2.gradle.ftl"
        to="${escapeXmlAttribute(projectOut)}/build.gradle" />
  </#if>
</#macro>
