package com.manage.util;

import java.util.List;

public class PageData{

<<<<<<< HEAD
    private int total;//总条数
    private List rows;//所有数据

=======
    private int total;
    @SuppressWarnings("rawtypes")
    private List rows;
    
    @Override
    public String toString() {
        // TODO Auto-generated method stub
        return super.toString();
    }
    
    @Override
    public int hashCode() {
        // TODO Auto-generated method stub
        return super.hashCode();
    }
    
    public  PageData(int total,@SuppressWarnings("rawtypes") List rows) {
        this.total = total;
        this.rows = rows;
    }
>>>>>>> refs/heads/master
    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @SuppressWarnings("rawtypes")
    public List getRows() {
        return rows;
    }

    public void setRows(@SuppressWarnings("rawtypes") List rows) {
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
