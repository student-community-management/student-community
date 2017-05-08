package com.manage.util;
/**
 * 
 * Integer totalRecord; // 信息总条数  <br/>
 * String  keyWord;// 查询关键字 <br/>
 * Integer currentPage;// 当前页 <br/>
 * Integer totalPage; // 总页数 <br/>
 * Integer pageSize; // 每页显示多少条数据  <br/>
 * 
 * @author ChenYuhao
 *
 */
public class Pagination {
    private Integer totalRecord; // 信息总条数
    private String keyWord;// 查询关键字
    private Integer currentPage;// 当前页
    @SuppressWarnings("unused")
    private Integer totalPage; // 总页数
    private Integer pageSize; // 每页显示多少条数据


    public Integer getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(Integer totalRecord) {
        this.totalRecord = totalRecord;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public Integer getCurrentPage() {
        return this.currentPage == null || this.currentPage == 0?1:this.currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getTotalPage() {
        return (this.getTotalRecord() +  this.getPageSize() - 1) /  this.getPageSize();  
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getPageSize() {
        return this.pageSize == null || this.pageSize == 0?20:this.pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

}
