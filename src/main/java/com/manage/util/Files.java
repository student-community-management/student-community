package com.manage.util;

import org.springframework.web.multipart.MultipartFile;

/**
 * 
 *  layerui 图片上传返回值对象(返回json对象)
 *  {
 *    "code": 0 , //0表示成功，其它失败
 *    "msg": "" ,//提示信息一般上传失败后返回
 *    "data": {
 *      "src": "图片路径",
 *      "title": "图片名称" //可选
 *     }
 *   }
 *  
 * 
 * @author ChenYuhao
 *
 */
public class Files {
    private Integer code; // 返回码 0表示成功，其它失败
    private String msg; // 提示信息
    private Data data; // 包含图片路径和图片名称
    public static MultipartFile[] files; // 多图片上传
    public static MultipartFile file; // 单图片上传

    public Files() {
    }

    // 返回码默认为 0 0 代表 成功
    public Integer getCode() {
        return this.code == null ? 0 : this.code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Data getData() {
        return data;
    }

    public void setData(Data data) {
        this.data = data;
    }

}


