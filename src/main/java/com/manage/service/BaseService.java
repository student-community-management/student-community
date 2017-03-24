package com.manage.service;

import com.manage.BaseInterface;
import com.manage.util.PageData;

public interface BaseService<T> extends BaseInterface<T> {
    PageData getPageData();
}
