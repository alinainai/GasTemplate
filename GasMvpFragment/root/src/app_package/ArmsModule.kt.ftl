package ${moudlePackageName}

import com.base.lib.di.scope.FragmentScope

import dagger.Module
import dagger.Provides
<#if needModel>
import ${contractPackageName}.${pageName}Contract
import ${modelPackageName}.${pageName}Model
</#if>

<#import "root://activities/GasMvpFragment/globals.xml.ftl" as gb>

<@gb.fileHeader />
@Module
 //构建${pageName}Module时,将View的实现类传进来,这样就可以提供View的实现类给presenter
class ${pageName}Module(private val view:${pageName}Contract.View) {
    

    <#if needModel>
    @FragmentScope
    @Provides
    fun provide${pageName}Model(model:${pageName}Model):${pageName}Contract.Model{
        return model
    }
    </#if>
    
}
