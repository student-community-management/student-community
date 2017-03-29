package com.manage.util;

import java.util.List;

public class PageData {

    private int total;//总条数
    private List rows;//所有数据

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List getRows() {
        return rows;
    }

    public void setRows(List rows) {
        this.rows = rows;
    }

    public PageData() {
        super();
    }

    public PageData(int total, List rows) {
        super();
        this.total = total;
        this.rows = rows;
    }
    
}
