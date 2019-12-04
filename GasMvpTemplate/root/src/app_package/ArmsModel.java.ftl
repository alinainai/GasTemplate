package ${modelPackageName};



import com.base.lib.integration.repository.IRepositoryManager;
import com.base.lib.mvp.BaseModel;

import com.base.lib.di.scope.ActivityScope;
import javax.inject.Inject;

import ${contractPackageName}.${pageName}Contract;

<#import "root://activities/GasMvpTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />

@ActivityScope
public class ${pageName}Model extends BaseModel implements ${pageName}Contract.Model{
    
    @Inject
    public ${pageName}Model(IRepositoryManager repositoryManager) {
        super(repositoryManager);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        
    }
}