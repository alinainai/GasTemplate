package ${ativityPackageName};

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.base.lib.base.BaseActivity;
import com.base.lib.di.component.AppComponent;
import com.base.lib.util.ArmsUtils;


import ${componentPackageName}.Dagger${pageName}Component;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;




import static com.base.lib.util.Preconditions.checkNotNull;

import ${applicationPackage}.R;




<#import "root://activities/GasMvpTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />

public class ${pageName}Activity extends BaseActivity<${pageName}Presenter> implements ${pageName}Contract.View {

    @Override
    public void setupActivityComponent(@NonNull AppComponent appComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .view(this)
                .build()
                .inject(this);
    }

    @Override
    public int initView(@Nullable Bundle savedInstanceState) {
	//如果你不需要框架帮你设置 setContentView(id) 需要自行设置,请返回 0
	<#if generateActivityLayout>
	return R.layout.${activityLayoutName}; 
	<#else>
	return 0; 
	</#if>
        
    }

    @Override
    public void initData(@Nullable Bundle savedInstanceState) {

    }

    
    @Override
    public void showMessage(@NonNull String message) {
        checkNotNull(message);
        ArmsUtils.snackbarText(message);
    }

    @Override
    public void launchActivity(@NonNull Intent intent) {
        checkNotNull(intent);
        ArmsUtils.startActivity(intent);
    }

    @Override
    public void killMyself() {
        finish();
    }
}
