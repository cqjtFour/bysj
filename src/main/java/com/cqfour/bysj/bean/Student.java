package com.cqfour.bysj.bean;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_xsb")
public class Student {
    /**
     * 学号，Char(16)
     */
    @Id
    private String xh;

    /**
     * 登录账号，Char(32)
     */
    private String dlzh;

    /**
     * 专业编号，Integer
     */
    private Integer zybh;

    /**
     * 毕业生届数，Integer
     */
    private Integer bysjs;

    /**
     * 学生照片，Char(255)，存储学生相片路径
     */
    private String xszp;

    /**
     * 学生姓名，Char(16)
     */
    private String xsxm;

    /**
     * 是否已就业，Integer，1表示已就业,0表示未就业
     */
    private Integer sfyjy;

    /**
     * 就业方式，Integer，0表示签约，1表示升学，2表示出国，3表示自由职业
     */
    private Integer jyfs;

    /**
     * 就业时间，Date
     */
    private Date jysj;

    /**
     * 三方是否领取，Integer，0表示未领取，1表示领取
     */
    private Short sfsflq;

    /**
     * 手机号码，Char(16)
     */
    private String sjhm;

    /**
     * 性别，Integer，0表示男，1表示女
     */
    private Short xb;

    /**
     * 出生日期，Date
     */
    private Date csrq;

    /**
     * 生源地，Char(16)
     */
    private String syd;

    /**
     * 学历，Integer，0表示本科，1表示硕士
     */
    private Short xl;

    /**
     * 政治面貌，Char(16)
     */
    private String zzmm;

    /**
     * 民族，Char(8)
     */
    private String mz;

    /**
     * 专业排名，Char(16)
     */
    private String zypm;

    /**
     * 身高，Char(8)
     */
    private String sg;

    /**
     * 是否通过英语4级，Integer，0表示未通过，1表示通过
     */
    private Short sftgyysj;

    /**
     * 四级成绩，Integer
     */
    private Integer yysjcj;

    /**
     * 是否通过英语6级，Integer，0表示未通过，1表示通过
     */
    private Short sftgyylj;

    /**
     * 六级成绩，Integer
     */
    private Integer yyljcj;

    /**
     * 计算机水平，Char(16)
     */
    private String jsjsp;

    /**
     * 本科就读学校，Char(16)
     */
    private String bkjdxx;

    /**
     * 本科专业，Char(16)
     */
    private String bkzy;

    /**
     * 本科开始时间，Date
     */
    private Date bkkssj;

    /**
     * 本科毕业时间，Date
     */
    private Date bkbysj;

    /**
     * 硕士就读学校，Char(16)
     */
    private String ssjdxx;

    /**
     * 硕士专业，Char(16)
     */
    private String sszy;

    /**
     * 硕士开始时间，Date
     */
    private Date sskssj;

    /**
     * 硕士毕业时间，Date
     */
    private Date ssbysj;

    /**
     * 自我评价，Char(64)
     */
    private String zwpj;

    /**
     * 电子邮箱，Char(32)
     */
    private String email;

    /**
     * 更新时间，Date
     */
    private Date gxsj;

    /**
     * 备注，Char(128)
     */
    private String bz;

    /**
     * 社会实践历经，Char(512)
     */
    private String shsjjl;

    /**
     * 获奖情况，Char(512)
     */
    private String hjqk;

    /**
     * 特长爱好，Char(512)
     */
    private String tcah;

    /**
     * 获取学号，Char(16)
     *
     * @return xh - 学号，Char(16)
     */
    public String getXh() {
        return xh;
    }

    /**
     * 设置学号，Char(16)
     *
     * @param xh 学号，Char(16)
     */
    public void setXh(String xh) {
        this.xh = xh;
    }

    /**
     * 获取登录账号，Char(32)
     *
     * @return dlzh - 登录账号，Char(32)
     */
    public String getDlzh() {
        return dlzh;
    }

    /**
     * 设置登录账号，Char(32)
     *
     * @param dlzh 登录账号，Char(32)
     */
    public void setDlzh(String dlzh) {
        this.dlzh = dlzh;
    }

    /**
     * 获取专业编号，Integer
     *
     * @return zybh - 专业编号，Integer
     */
    public Integer getZybh() {
        return zybh;
    }

    /**
     * 设置专业编号，Integer
     *
     * @param zybh 专业编号，Integer
     */
    public void setZybh(Integer zybh) {
        this.zybh = zybh;
    }

    /**
     * 获取毕业生届数，Integer
     *
     * @return bysjs - 毕业生届数，Integer
     */
    public Integer getBysjs() {
        return bysjs;
    }

    /**
     * 设置毕业生届数，Integer
     *
     * @param bysjs 毕业生届数，Integer
     */
    public void setBysjs(Integer bysjs) {
        this.bysjs = bysjs;
    }

    /**
     * 获取学生照片，Char(255)，存储学生相片路径
     *
     * @return xszp - 学生照片，Char(255)，存储学生相片路径
     */
    public String getXszp() {
        return xszp;
    }

    /**
     * 设置学生照片，Char(255)，存储学生相片路径
     *
     * @param xszp 学生照片，Char(255)，存储学生相片路径
     */
    public void setXszp(String xszp) {
        this.xszp = xszp;
    }

    /**
     * 获取学生姓名，Char(16)
     *
     * @return xsxm - 学生姓名，Char(16)
     */
    public String getXsxm() {
        return xsxm;
    }

    /**
     * 设置学生姓名，Char(16)
     *
     * @param xsxm 学生姓名，Char(16)
     */
    public void setXsxm(String xsxm) {
        this.xsxm = xsxm;
    }

    /**
     * 获取是否已就业，Integer，1表示已就业,0表示未就业
     *
     * @return sfyjy - 是否已就业，Integer，1表示已就业,0表示未就业
     */
    public Integer getSfyjy() {
        return sfyjy;
    }

    /**
     * 设置是否已就业，Integer，1表示已就业,0表示未就业
     *
     * @param sfyjy 是否已就业，Integer，1表示已就业,0表示未就业
     */
    public void setSfyjy(Integer sfyjy) {
        this.sfyjy = sfyjy;
    }

    /**
     * 获取就业方式，Integer，0表示签约，1表示升学，2表示出国，3表示自由职业
     *
     * @return jyfs - 就业方式，Integer，0表示签约，1表示升学，2表示出国，3表示自由职业
     */
    public Integer getJyfs() {
        return jyfs;
    }

    /**
     * 设置就业方式，Integer，0表示签约，1表示升学，2表示出国，3表示自由职业
     *
     * @param jyfs 就业方式，Integer，0表示签约，1表示升学，2表示出国，3表示自由职业
     */
    public void setJyfs(Integer jyfs) {
        this.jyfs = jyfs;
    }

    /**
     * 获取就业时间，Date
     *
     * @return jysj - 就业时间，Date
     */
    public Date getJysj() {
        return jysj;
    }

    /**
     * 设置就业时间，Date
     *
     * @param jysj 就业时间，Date
     */
    public void setJysj(Date jysj) {
        this.jysj = jysj;
    }

    /**
     * 获取三方是否领取，Integer，0表示未领取，1表示领取
     *
     * @return sfsflq - 三方是否领取，Integer，0表示未领取，1表示领取
     */
    public Short getSfsflq() {
        return sfsflq;
    }

    /**
     * 设置三方是否领取，Integer，0表示未领取，1表示领取
     *
     * @param sfsflq 三方是否领取，Integer，0表示未领取，1表示领取
     */
    public void setSfsflq(Short sfsflq) {
        this.sfsflq = sfsflq;
    }

    /**
     * 获取手机号码，Char(16)
     *
     * @return sjhm - 手机号码，Char(16)
     */
    public String getSjhm() {
        return sjhm;
    }

    /**
     * 设置手机号码，Char(16)
     *
     * @param sjhm 手机号码，Char(16)
     */
    public void setSjhm(String sjhm) {
        this.sjhm = sjhm;
    }

    /**
     * 获取性别，Integer，0表示男，1表示女
     *
     * @return xb - 性别，Integer，0表示男，1表示女
     */
    public Short getXb() {
        return xb;
    }

    /**
     * 设置性别，Integer，0表示男，1表示女
     *
     * @param xb 性别，Integer，0表示男，1表示女
     */
    public void setXb(Short xb) {
        this.xb = xb;
    }

    /**
     * 获取出生日期，Date
     *
     * @return csrq - 出生日期，Date
     */
    public Date getCsrq() {
        return csrq;
    }

    /**
     * 设置出生日期，Date
     *
     * @param csrq 出生日期，Date
     */
    public void setCsrq(Date csrq) {
        this.csrq = csrq;
    }

    /**
     * 获取生源地，Char(16)
     *
     * @return syd - 生源地，Char(16)
     */
    public String getSyd() {
        return syd;
    }

    /**
     * 设置生源地，Char(16)
     *
     * @param syd 生源地，Char(16)
     */
    public void setSyd(String syd) {
        this.syd = syd;
    }

    /**
     * 获取学历，Integer，0表示本科，1表示硕士
     *
     * @return xl - 学历，Integer，0表示本科，1表示硕士
     */
    public Short getXl() {
        return xl;
    }

    /**
     * 设置学历，Integer，0表示本科，1表示硕士
     *
     * @param xl 学历，Integer，0表示本科，1表示硕士
     */
    public void setXl(Short xl) {
        this.xl = xl;
    }

    /**
     * 获取政治面貌，Char(16)
     *
     * @return zzmm - 政治面貌，Char(16)
     */
    public String getZzmm() {
        return zzmm;
    }

    /**
     * 设置政治面貌，Char(16)
     *
     * @param zzmm 政治面貌，Char(16)
     */
    public void setZzmm(String zzmm) {
        this.zzmm = zzmm;
    }

    /**
     * 获取民族，Char(8)
     *
     * @return mz - 民族，Char(8)
     */
    public String getMz() {
        return mz;
    }

    /**
     * 设置民族，Char(8)
     *
     * @param mz 民族，Char(8)
     */
    public void setMz(String mz) {
        this.mz = mz;
    }

    /**
     * 获取专业排名，Char(16)
     *
     * @return zypm - 专业排名，Char(16)
     */
    public String getZypm() {
        return zypm;
    }

    /**
     * 设置专业排名，Char(16)
     *
     * @param zypm 专业排名，Char(16)
     */
    public void setZypm(String zypm) {
        this.zypm = zypm;
    }

    /**
     * 获取身高，Char(8)
     *
     * @return sg - 身高，Char(8)
     */
    public String getSg() {
        return sg;
    }

    /**
     * 设置身高，Char(8)
     *
     * @param sg 身高，Char(8)
     */
    public void setSg(String sg) {
        this.sg = sg;
    }

    /**
     * 获取是否通过英语4级，Integer，0表示未通过，1表示通过
     *
     * @return sftgyysj - 是否通过英语4级，Integer，0表示未通过，1表示通过
     */
    public Short getSftgyysj() {
        return sftgyysj;
    }

    /**
     * 设置是否通过英语4级，Integer，0表示未通过，1表示通过
     *
     * @param sftgyysj 是否通过英语4级，Integer，0表示未通过，1表示通过
     */
    public void setSftgyysj(Short sftgyysj) {
        this.sftgyysj = sftgyysj;
    }

    /**
     * 获取四级成绩，Integer
     *
     * @return yysjcj - 四级成绩，Integer
     */
    public Integer getYysjcj() {
        return yysjcj;
    }

    /**
     * 设置四级成绩，Integer
     *
     * @param yysjcj 四级成绩，Integer
     */
    public void setYysjcj(Integer yysjcj) {
        this.yysjcj = yysjcj;
    }

    /**
     * 获取是否通过英语6级，Integer，0表示未通过，1表示通过
     *
     * @return sftgyylj - 是否通过英语6级，Integer，0表示未通过，1表示通过
     */
    public Short getSftgyylj() {
        return sftgyylj;
    }

    /**
     * 设置是否通过英语6级，Integer，0表示未通过，1表示通过
     *
     * @param sftgyylj 是否通过英语6级，Integer，0表示未通过，1表示通过
     */
    public void setSftgyylj(Short sftgyylj) {
        this.sftgyylj = sftgyylj;
    }

    /**
     * 获取六级成绩，Integer
     *
     * @return yyljcj - 六级成绩，Integer
     */
    public Integer getYyljcj() {
        return yyljcj;
    }

    /**
     * 设置六级成绩，Integer
     *
     * @param yyljcj 六级成绩，Integer
     */
    public void setYyljcj(Integer yyljcj) {
        this.yyljcj = yyljcj;
    }

    /**
     * 获取计算机水平，Char(16)
     *
     * @return jsjsp - 计算机水平，Char(16)
     */
    public String getJsjsp() {
        return jsjsp;
    }

    /**
     * 设置计算机水平，Char(16)
     *
     * @param jsjsp 计算机水平，Char(16)
     */
    public void setJsjsp(String jsjsp) {
        this.jsjsp = jsjsp;
    }

    /**
     * 获取本科就读学校，Char(16)
     *
     * @return bkjdxx - 本科就读学校，Char(16)
     */
    public String getBkjdxx() {
        return bkjdxx;
    }

    /**
     * 设置本科就读学校，Char(16)
     *
     * @param bkjdxx 本科就读学校，Char(16)
     */
    public void setBkjdxx(String bkjdxx) {
        this.bkjdxx = bkjdxx;
    }

    /**
     * 获取本科专业，Char(16)
     *
     * @return bkzy - 本科专业，Char(16)
     */
    public String getBkzy() {
        return bkzy;
    }

    /**
     * 设置本科专业，Char(16)
     *
     * @param bkzy 本科专业，Char(16)
     */
    public void setBkzy(String bkzy) {
        this.bkzy = bkzy;
    }

    /**
     * 获取本科开始时间，Date
     *
     * @return bkkssj - 本科开始时间，Date
     */
    public Date getBkkssj() {
        return bkkssj;
    }

    /**
     * 设置本科开始时间，Date
     *
     * @param bkkssj 本科开始时间，Date
     */
    public void setBkkssj(Date bkkssj) {
        this.bkkssj = bkkssj;
    }

    /**
     * 获取本科毕业时间，Date
     *
     * @return bkbysj - 本科毕业时间，Date
     */
    public Date getBkbysj() {
        return bkbysj;
    }

    /**
     * 设置本科毕业时间，Date
     *
     * @param bkbysj 本科毕业时间，Date
     */
    public void setBkbysj(Date bkbysj) {
        this.bkbysj = bkbysj;
    }

    /**
     * 获取硕士就读学校，Char(16)
     *
     * @return ssjdxx - 硕士就读学校，Char(16)
     */
    public String getSsjdxx() {
        return ssjdxx;
    }

    /**
     * 设置硕士就读学校，Char(16)
     *
     * @param ssjdxx 硕士就读学校，Char(16)
     */
    public void setSsjdxx(String ssjdxx) {
        this.ssjdxx = ssjdxx;
    }

    /**
     * 获取硕士专业，Char(16)
     *
     * @return sszy - 硕士专业，Char(16)
     */
    public String getSszy() {
        return sszy;
    }

    /**
     * 设置硕士专业，Char(16)
     *
     * @param sszy 硕士专业，Char(16)
     */
    public void setSszy(String sszy) {
        this.sszy = sszy;
    }

    /**
     * 获取硕士开始时间，Date
     *
     * @return sskssj - 硕士开始时间，Date
     */
    public Date getSskssj() {
        return sskssj;
    }

    /**
     * 设置硕士开始时间，Date
     *
     * @param sskssj 硕士开始时间，Date
     */
    public void setSskssj(Date sskssj) {
        this.sskssj = sskssj;
    }

    /**
     * 获取硕士毕业时间，Date
     *
     * @return ssbysj - 硕士毕业时间，Date
     */
    public Date getSsbysj() {
        return ssbysj;
    }

    /**
     * 设置硕士毕业时间，Date
     *
     * @param ssbysj 硕士毕业时间，Date
     */
    public void setSsbysj(Date ssbysj) {
        this.ssbysj = ssbysj;
    }

    /**
     * 获取自我评价，Char(64)
     *
     * @return zwpj - 自我评价，Char(64)
     */
    public String getZwpj() {
        return zwpj;
    }

    /**
     * 设置自我评价，Char(64)
     *
     * @param zwpj 自我评价，Char(64)
     */
    public void setZwpj(String zwpj) {
        this.zwpj = zwpj;
    }

    /**
     * 获取电子邮箱，Char(32)
     *
     * @return email - 电子邮箱，Char(32)
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置电子邮箱，Char(32)
     *
     * @param email 电子邮箱，Char(32)
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取更新时间，Date
     *
     * @return gxsj - 更新时间，Date
     */
    public Date getGxsj() {
        return gxsj;
    }

    /**
     * 设置更新时间，Date
     *
     * @param gxsj 更新时间，Date
     */
    public void setGxsj(Date gxsj) {
        this.gxsj = gxsj;
    }

    /**
     * 获取备注，Char(128)
     *
     * @return bz - 备注，Char(128)
     */
    public String getBz() {
        return bz;
    }

    /**
     * 设置备注，Char(128)
     *
     * @param bz 备注，Char(128)
     */
    public void setBz(String bz) {
        this.bz = bz;
    }

    /**
     * 获取社会实践历经，Char(512)
     *
     * @return shsjjl - 社会实践历经，Char(512)
     */
    public String getShsjjl() {
        return shsjjl;
    }

    /**
     * 设置社会实践历经，Char(512)
     *
     * @param shsjjl 社会实践历经，Char(512)
     */
    public void setShsjjl(String shsjjl) {
        this.shsjjl = shsjjl;
    }

    /**
     * 获取获奖情况，Char(512)
     *
     * @return hjqk - 获奖情况，Char(512)
     */
    public String getHjqk() {
        return hjqk;
    }

    /**
     * 设置获奖情况，Char(512)
     *
     * @param hjqk 获奖情况，Char(512)
     */
    public void setHjqk(String hjqk) {
        this.hjqk = hjqk;
    }

    /**
     * 获取特长爱好，Char(512)
     *
     * @return tcah - 特长爱好，Char(512)
     */
    public String getTcah() {
        return tcah;
    }

    /**
     * 设置特长爱好，Char(512)
     *
     * @param tcah 特长爱好，Char(512)
     */
    public void setTcah(String tcah) {
        this.tcah = tcah;
    }
}