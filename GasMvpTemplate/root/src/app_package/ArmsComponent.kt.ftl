package ${componentPackageName}

import dagger.Component
import com.base.lib.di.component.AppComponent
import com.base.lib.di.scope.ActivityScope

<#if needMoudle>
import ${moudlePackageName}.${pageName}Module
</#if>

import ${ativityPackageName}.${pageName}Activity

import ${contractPackageName}.${pageName}Contract

<#import "root://activities/GasMvpTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />

@ActivityScope
@Component(
<#if needMoudle>
modules = arrayOf(${pageName}Module::class),
</#if>
dependencies = arrayOf(AppComponent::class))
interface ${pageName}Component {

	fun inject(activity:${pageName}Activity)


 }
