package ${presenterPackageName}

import com.base.lib.di.scope.ActivityScope
import com.base.lib.mvp.BasePresenter
<#if !needModel>
import com.base.lib.mvp.IModel
</#if>

import javax.inject.Inject



<#import "root://activities/GasMvpTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />

@ActivityScope
class ${pageName}Presenter
@Inject
<#if needModel>
   constructor(model: ${pageName}Contract.Model, rootView: ${pageName}Contract.View) :
BasePresenter<${pageName}Contract.Model, ${pageName}Contract.View>(model,rootView) {
<#else>
   constructor(rootView: ${pageName}Contract.View) :
BasePresenter<IModel,${pageName}Contract.View>(rootView) {
</#if>


    


    override fun onDestroy() {
          super.onDestroy();
    }
}
