package com.manage.service;

import com.manage.BaseInterface;
import com.manage.util.PageData;

public interface BaseService<T> extends BaseInterface<T> {
    
    /**
     * 获得easyui数据 其中包含 total 和 rows
     * @return
     */
    PageData getPageData();
    
}
