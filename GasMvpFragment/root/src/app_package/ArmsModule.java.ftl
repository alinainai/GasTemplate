package ${moudlePackageName};

import com.base.lib.di.scope.FragmentScope;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;

<#if needModel>
import ${contractPackageName}.${pageName}Contract;
import ${modelPackageName}.${pageName}Model;
</#if>


<#import "root://activities/GasMvpFragment/globals.xml.ftl" as gb>

<@gb.fileHeader />
@Module
public abstract class ${pageName}Module {

    	<#if needModel>
 	@Binds
    	abstract ${pageName}Contract.Model bind${pageName}Model(${pageName}Model model);
	</#if>


}