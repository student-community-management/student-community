package com.manage.service;

import com.manage.BaseInterface;
import com.manage.util.PageData;
import com.manage.util.PageParam;

public interface BaseService<T> extends BaseInterface<T> {

    /**
     * 生成easyui datagrid数据
     * datagrid 中有属性 total 和 rows
     * total 是查询信息的总数量
     * rows 是查询信息的结果集
     * 
     * @param pageParam 分页参数
     * @param keyWord 分页条件
     * @return 结果集
     */
    PageData getPageData(PageParam pageParam, String keyWord);
    
    
    
    

}
