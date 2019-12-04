<?xml version="1.0"?>
<globals>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="excludeMenu" type="boolean" value="false" />
    <global id="isLauncher" type="boolean" value="false" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <global id="relativePackage" value="${fragmentPackageName}" />
    <global id="fragmentClass" value="${pageName}Fragment" />
    <#include "../common/common_globals.xml.ftl" />
</globals>

<#macro fileHeader>
/**
 * ================================================
 * Description:
 * <p>
 * Created by GasMvpFragment on ${.now?string["MM/dd/yyyy HH:mm"]}
 * ================================================
 */
</#macro>