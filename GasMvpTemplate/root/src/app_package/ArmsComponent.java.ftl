package ${componentPackageName};

import dagger.BindsInstance;
import dagger.Component;
import com.base.lib.di.component.AppComponent;
import com.base.lib.di.scope.ActivityScope;

<#if needMoudle>
import ${moudlePackageName}.${pageName}Module;
</#if>
import ${contractPackageName}.${pageName}Contract;
import ${ativityPackageName}.${pageName}Activity;


<#import "root://activities/GasMvpTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />

@ActivityScope
@Component(<#if needMoudle>modules = ${pageName}Module.class,</#if> dependencies = AppComponent.class)
public interface ${pageName}Component {

  void inject(${pageName}Activity activity);

 
    @Component.Builder
    interface Builder {

        @BindsInstance
        ${pageName}Component.Builder view(${pageName}Contract.View view); 

        ${pageName}Component.Builder appComponent(AppComponent appComponent);

        ${pageName}Component build();

    }
}