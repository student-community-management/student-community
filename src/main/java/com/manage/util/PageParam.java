package com.manage.util;

public class PageParam {
<<<<<<< HEAD
    private Integer currPage;//当前页数
    private Integer rows;//每页显示行数
    @SuppressWarnings("unused")//警告错误
    private Integer startIndex;//查询条件,每页开始的下标
=======
    private Integer page;
    private Integer rows;
    @SuppressWarnings("unused")
    private int startIndex;

>>>>>>> refs/heads/master
    public PageParam() {
    }
<<<<<<< HEAD
    public PageParam(Integer currPage, Integer rows) {
=======

    public PageParam(Integer page, Integer rows) {
>>>>>>> refs/heads/master
        super();
        this.page = page;
        this.rows = rows;
    }

    public Integer getPage() {
        return page == null || page < 1 ? 1 : page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getRows() {
        return rows == null || rows < 0 ? 10 : rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

<<<<<<< HEAD
    public Integer getStartIndex() {
        return (this.getCurrPage()-1)*this.getRows();
=======
    public int getStartIndex() {
        return (this.getPage() - 1) * this.getRows();
>>>>>>> refs/heads/master
    }

    public void setStartIndex(Integer startIndex) {
        this.startIndex = startIndex;
    }

}