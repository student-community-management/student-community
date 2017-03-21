package com.manage.entity;

public class AttentionActivity {
    private int attentionActivityid;
    private Student stu;
    private Activity activity;

    public int getAttentionActivityid() {
        return attentionActivityid;
    }

    public void setAttentionActivityid(int attentionActivityid) {
        this.attentionActivityid = attentionActivityid;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

}
