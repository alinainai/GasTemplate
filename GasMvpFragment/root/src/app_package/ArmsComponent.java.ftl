package ${componentPackageName};

import dagger.BindsInstance;
import dagger.Component;
import com.base.lib.di.component.AppComponent;
import com.base.lib.di.scope.FragmentScope;

<#if needMoudle>
import ${moudlePackageName}.${pageName}Module;
</#if>
import ${contractPackageName}.${pageName}Contract;
import ${fragmentPackageName}.${pageName}Fragment;


<#import "root://activities/GasMvpFragment/globals.xml.ftl" as gb>

<@gb.fileHeader />

@FragmentScope
@Component(<#if needMoudle>modules = ${pageName}Module.class,</#if> dependencies = AppComponent.class)
public interface ${pageName}Component {

  void inject(${pageName}Fragment fragment);

 
    @Component.Builder
    interface Builder {

        @BindsInstance
        ${pageName}Component.Builder view(${pageName}Contract.View view); 

        ${pageName}Component.Builder appComponent(AppComponent appComponent);

        ${pageName}Component build();

    }
}