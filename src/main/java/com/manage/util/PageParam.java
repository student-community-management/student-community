package com.manage.util;

public class PageParam {
    private Integer currPage;//当前页数
    private Integer rows;//每页显示行数
    @SuppressWarnings("unused")//警告错误
    private Integer startIndex;//查询条件,每页开始的下标
    public PageParam() {
    }
    public PageParam(Integer currPage, Integer rows) {
        super();
        this.currPage = currPage;
        this.rows = rows;
    }

    public Integer getCurrPage() {
        return currPage == null || currPage < 1 ? 1 : currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public Integer getRows() {
        return rows == null || rows < 0 ?10:rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public Integer getStartIndex() {
        return (this.getCurrPage()-1)*this.getRows();
    }

    public void setStartIndex(Integer startIndex) {
        this.startIndex = startIndex;
    }

}