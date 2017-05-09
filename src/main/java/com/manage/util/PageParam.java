package com.manage.util;

public class PageParam {
    private Integer page;//当前页
    private Integer rows;
    @SuppressWarnings("unused")
    private int startIndex;

    public PageParam() {
        // TODO Auto-generated constructor stub
    }

    public PageParam(Integer page, Integer rows) {
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

    public int getStartIndex() {
        return (this.getPage() - 1) * this.getRows();
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

}