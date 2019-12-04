package ${presenterPackageName};


import com.base.lib.di.scope.FragmentScope;
import com.base.lib.mvp.BasePresenter;
<#if !needModel>
import com.base.lib.mvp.IModel;
</#if>
import javax.inject.Inject;

<#import "root://activities/GasMvpFragment/globals.xml.ftl" as gb>

@FragmentScope
public class ${pageName}Presenter extends BasePresenter<<#if needModel>${pageName}Contract.Model<#else>IModel</#if>, ${pageName}Contract.View> {

    @Inject
    <#if needModel>
    public ${pageName}Presenter (${pageName}Contract.Model model, ${pageName}Contract.View rootView) {
        super(model, rootView);
    }
    <#else>
    public ${pageName}Presenter (${pageName}Contract.View rootView) {
        super(rootView);
    }
    </#if>
    
   
    @Override
    public void onDestroy() {
        super.onDestroy();
        
    }
}
