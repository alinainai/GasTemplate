package ${modelPackageName}

import com.base.lib.integration.repository.IRepositoryManager
import com.base.lib.mvp.BaseModel

import com.base.lib.di.scope.ActivityScope;
import javax.inject.Inject

import ${contractPackageName}.${pageName}Contract

<#import "root://activities/GasMvpTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
@ActivityScope
class ${pageName}Model
@Inject
constructor(repositoryManager: IRepositoryManager) : BaseModel(repositoryManager), ${pageName}Contract.Model{
    
    override fun onDestroy() {
          super.onDestroy();
    }
}
