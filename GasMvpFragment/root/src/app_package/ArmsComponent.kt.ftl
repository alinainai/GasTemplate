package ${componentPackageName}

import dagger.Component
import com.base.lib.di.component.AppComponent
import com.base.lib.di.scope.FragmentScope
<#if needMoudle>
import ${moudlePackageName}.${pageName}Module
</#if>
import ${contractPackageName}.${pageName}Contract
import ${fragmentPackageName}.${pageName}Fragment

<#import "root://activities/GasMvpFragment/globals.xml.ftl" as gb>

<@gb.fileHeader />

@FragmentScope
@Component(<#if needMoudle>modules = arrayOf(${pageName}Module::class),</#if>dependencies = arrayOf(AppComponent::class))
interface ${pageName}Component {

	fun inject(fragment:${pageName}Fragment)


 }
