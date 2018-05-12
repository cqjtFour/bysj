package com.cqfour.bysj.bean;

import javax.persistence.*;

@Table(name = "t_xsb")
public class Student {
    /**
     * 学号，Char(16)
     */
    @Id
    @Column(name = "XH")
    private String xh;

    /**
     * 登录账号，Char(32)
     */
    @Column(name = "DLZH")
    private String dlzh;

    /**
     * 专业编号，Integer
     */
    @Column(name = "ZYBH")
    private Integer zybh;

    /**
     * 毕业生届数，Integer
     */
    @Column(name = "BYSJS")
    private Integer bysjs;

    /**
     * 学生照片，Char(255)，存储学生相片路径
     */
    @Column(name = "XSZP")
    private String xszp;

    /**
     * 学生姓名，Char(16)
     */
    @Column(name = "XSXM")
    private String xsxm;

    /**
     * 是否已就业，Integer，1表示已就业,0表示未就业
     */
    @Column(name = "SFYJY")
    private Integer sfyjy;

    /**
     * 就业方式，Integer，0表示签约，1表示升学，2表示出国，3表示自由职业
     */
    @Column(name = "JYFS")
    private Integer jyfs;

    /**
     * 就业时间
     */
    @Column(name = "JYSJ")
    private String jysj;

    /**
     * 三方是否领取，Integer，0表示未领取，1表示领取
     */
    @Column(name = "SFSFLQ")
    private Short sfsflq;

    /**
     * 手机号码，Char(16)
     */
    @Column(name = "SJHM")
    private String sjhm;

    /**
     * 电子邮箱，Char(32)
     */
    @Column(name = "EMAIL")
    private String email;

    /**
     * 性别，Integer，0表示男，1表示女
     */
    @Column(name = "XB")
    private Short xb;

    /**
     * 出生日期
     */
    @Column(name = "CSRQ")
    private String csrq;

    /**
     * 生源地，Char(16)
     */
    @Column(name = "SYD")
    private String syd;

    /**
     * 学历，Integer，0表示本科，1表示硕士
     */
    @Column(name = "XL")
    private Short xl;

    /**
     * 政治面貌，Char(16)
     */
    @Column(name = "ZZMM")
    private String zzmm;

    /**
     * 民族，Char(8)
     */
    @Column(name = "MZ")
    private String mz;

    /**
     * 专业排名，Char(16)
     */
    @Column(name = "ZYPM")
    private String zypm;

    /**
     * 身高，Char(8)
     */
    @Column(name = "SG")
    private String sg;

    /**
     * 身体状况，Char(32)
     */
    @Column(name = "STZK")
    private String stzk;

    /**
     * 是否通过英语4级，Integer，0表示未通过，1表示通过
     */
    @Column(name = "SFTGYYSJ")
    private Short sftgyysj;

    /**
     * 四级成绩
     */
    @Column(name = "YYSJCJ")
    private String yysjcj;

    /**
     * 是否通过英语6级，Integer，0表示未通过，1表示通过
     */
    @Column(name = "SFTGYYLJ")
    private Short sftgyylj;

    /**
     * 六级成绩
     */
    @Column(name = "YYLJCJ")
    private String yyljcj;

    /**
     * 计算机水平，Char(16)
     */
    @Column(name = "JSJSP")
    private String jsjsp;

    /**
     * 本科就读学校，Char(16)
     */
    @Column(name = "BKJDXX")
    private String bkjdxx;

    /**
     * 本科专业，Char(16)
     */
    @Column(name = "BKZY")
    private String bkzy;

    /**
     * 本科开始时间
     */
    @Column(name = "BKKSSJ")
    private String bkkssj;

    /**
     * 本科毕业时间
     */
    @Column(name = "BKBYSJ")
    private String bkbysj;

    /**
     * 硕士就读学校，Char(16)
     */
    @Column(name = "SSJDXX")
    private String ssjdxx;

    /**
     * 硕士专业，Char(16)
     */
    @Column(name = "SSZY")
    private String sszy;

    /**
     * 硕士开始时间，Date
     */
    @Column(name = "SSKSSJ")
    private String sskssj;

    /**
     * 硕士毕业时间，Date
     */
    @Column(name = "SSBYSJ")
    private String ssbysj;

    /**
     * 实习公司名称，Char(32)
     */
    @Column(name = "SXGSMC")
    private String sxgsmc;

    /**
     * 公司行业，Char(64)
     */
    @Column(name = "GSHY")
    private String gshy;

    /**
     * 实习职位，Char(32)
     */
    @Column(name = "SXZW")
    private String sxzw;

    /**
     * 实习地点，Char(64)
     */
    @Column(name = "SXDD")
    private String sxdd;

    /**
     * 实习开始时间
     */
    @Column(name = "SXKSSJ")
    private String sxkssj;

    /**
     * 实习结束时间
     */
    @Column(name = "SXJSSJ")
    private String sxjssj;

    /**
     * 项目名称，Char(64)
     */
    @Column(name = "XMMC")
    private String xmmc;

    /**
     * 项目开始时间
     */
    @Column(name = "XMKSSJ")
    private String xmkssj;

    /**
     * 项目结束时间
     */
    @Column(name = "XMJSSJ")
    private String xmjssj;

    /**
     * 期望行业，Char(32)
     */
    @Column(name = "QWHY")
    private String qwhy;

    /**
     * 期望职位，Char(32)
     */
    @Column(name = "QWZW")
    private String qwzw;

    /**
     * 期望工作地点,Char(32)
     */
    @Column(name = "QWGZDD")
    private String qwgzdd;

    /**
     * 期望月薪,Char(32)
     */
    @Column(name = "QWYX")
    private String qwyx;

    /**
     * 自我评价，Char(64)
     */
    @Column(name = "ZWPJ")
    private String zwpj;

    /**
     * 更新时间，Date
     */
    @Column(name = "GXSJ")
    private String gxsj;

    /**
     * 备注，Char(128)
     */
    @Column(name = "BZ")
    private String bz;

    /**
     * 社会实践历经，Char(512)
     */
    @Column(name = "SHSJJL")
    private String shsjjl;

    /**
     * 主要实习内容，Char(512)
     */
    @Column(name = "ZYSXNR")
    private String zysxnr;

    /**
     * 项目内容描述，Text（1024）
     */
    @Column(name = "XMNRMS")
    private String xmnrms;

    /**
     * 获奖情况，Char(512)
     */
    @Column(name = "HJQK")
    private String hjqk;

    /**
     * 特长爱好，Char(512)
     */
    @Column(name = "TCAH")
    private String tcah;

    /**
     * 获取学号，Char(16)
     *
     * @return XH - 学号，Char(16)
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
     * @return DLZH - 登录账号，Char(32)
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
     * @return ZYBH - 专业编号，Integer
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
     * @return BYSJS - 毕业生届数，Integer
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
     * @return XSZP - 学生照片，Char(255)，存储学生相片路径
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
     * @return XSXM - 学生姓名，Char(16)
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
     * @return SFYJY - 是否已就业，Integer，1表示已就业,0表示未就业
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
     * @return JYFS - 就业方式，Integer，0表示签约，1表示升学，2表示出国，3表示自由职业
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
     * 获取就业时间
     *
     * @return JYSJ - 就业时间
     */
    public String getJysj() {
        return jysj;
    }

    /**
     * 设置就业时间
     *
     * @param jysj 就业时间
     */
    public void setJysj(String jysj) {
        this.jysj = jysj;
    }

    /**
     * 获取三方是否领取，Integer，0表示未领取，1表示领取
     *
     * @return SFSFLQ - 三方是否领取，Integer，0表示未领取，1表示领取
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
     * @return SJHM - 手机号码，Char(16)
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
     * 获取电子邮箱，Char(32)
     *
     * @return EMAIL - 电子邮箱，Char(32)
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
     * 获取性别，Integer，0表示男，1表示女
     *
     * @return XB - 性别，Integer，0表示男，1表示女
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
     * 获取出生日期
     *
     * @return CSRQ - 出生日期
     */
    public String getCsrq() {
        return csrq;
    }

    /**
     * 设置出生日期
     *
     * @param csrq 出生日期
     */
    public void setCsrq(String csrq) {
        this.csrq = csrq;
    }

    /**
     * 获取生源地，Char(16)
     *
     * @return SYD - 生源地，Char(16)
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
     * @return XL - 学历，Integer，0表示本科，1表示硕士
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
     * @return ZZMM - 政治面貌，Char(16)
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
     * @return MZ - 民族，Char(8)
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
     * @return ZYPM - 专业排名，Char(16)
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
     * @return SG - 身高，Char(8)
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
     * 获取身体状况，Char(32)
     *
     * @return STZK - 身体状况，Char(32)
     */
    public String getStzk() {
        return stzk;
    }

    /**
     * 设置身体状况，Char(32)
     *
     * @param stzk 身体状况，Char(32)
     */
    public void setStzk(String stzk) {
        this.stzk = stzk;
    }

    /**
     * 获取是否通过英语4级，Integer，0表示未通过，1表示通过
     *
     * @return SFTGYYSJ - 是否通过英语4级，Integer，0表示未通过，1表示通过
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
     * 获取四级成绩
     *
     * @return YYSJCJ - 四级成绩
     */
    public String getYysjcj() {
        return yysjcj;
    }

    /**
     * 设置四级成绩
     *
     * @param yysjcj 四级成绩
     */
    public void setYysjcj(String yysjcj) {
        this.yysjcj = yysjcj;
    }

    /**
     * 获取是否通过英语6级，Integer，0表示未通过，1表示通过
     *
     * @return SFTGYYLJ - 是否通过英语6级，Integer，0表示未通过，1表示通过
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
     * 获取六级成绩
     *
     * @return YYLJCJ - 六级成绩
     */
    public String getYyljcj() {
        return yyljcj;
    }

    /**
     * 设置六级成绩
     *
     * @param yyljcj 六级成绩
     */
    public void setYyljcj(String yyljcj) {
        this.yyljcj = yyljcj;
    }

    /**
     * 获取计算机水平，Char(16)
     *
     * @return JSJSP - 计算机水平，Char(16)
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
     * @return BKJDXX - 本科就读学校，Char(16)
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
     * @return BKZY - 本科专业，Char(16)
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
     * 获取本科开始时间
     *
     * @return BKKSSJ - 本科开始时间
     */
    public String getBkkssj() {
        return bkkssj;
    }

    /**
     * 设置本科开始时间
     *
     * @param bkkssj 本科开始时间
     */
    public void setBkkssj(String bkkssj) {
        this.bkkssj = bkkssj;
    }

    /**
     * 获取本科毕业时间
     *
     * @return BKBYSJ - 本科毕业时间
     */
    public String getBkbysj() {
        return bkbysj;
    }

    /**
     * 设置本科毕业时间
     *
     * @param bkbysj 本科毕业时间
     */
    public void setBkbysj(String bkbysj) {
        this.bkbysj = bkbysj;
    }

    /**
     * 获取硕士就读学校，Char(16)
     *
     * @return SSJDXX - 硕士就读学校，Char(16)
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
     * @return SSZY - 硕士专业，Char(16)
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
     * @return SSKSSJ - 硕士开始时间，Date
     */
    public String getSskssj() {
        return sskssj;
    }

    /**
     * 设置硕士开始时间，Date
     *
     * @param sskssj 硕士开始时间，Date
     */
    public void setSskssj(String sskssj) {
        this.sskssj = sskssj;
    }

    /**
     * 获取硕士毕业时间，Date
     *
     * @return SSBYSJ - 硕士毕业时间，Date
     */
    public String getSsbysj() {
        return ssbysj;
    }

    /**
     * 设置硕士毕业时间，Date
     *
     * @param ssbysj 硕士毕业时间，Date
     */
    public void setSsbysj(String ssbysj) {
        this.ssbysj = ssbysj;
    }

    /**
     * 获取实习公司名称，Char(32)
     *
     * @return SXGSMC - 实习公司名称，Char(32)
     */
    public String getSxgsmc() {
        return sxgsmc;
    }

    /**
     * 设置实习公司名称，Char(32)
     *
     * @param sxgsmc 实习公司名称，Char(32)
     */
    public void setSxgsmc(String sxgsmc) {
        this.sxgsmc = sxgsmc;
    }

    /**
     * 获取公司行业，Char(64)
     *
     * @return GSHY - 公司行业，Char(64)
     */
    public String getGshy() {
        return gshy;
    }

    /**
     * 设置公司行业，Char(64)
     *
     * @param gshy 公司行业，Char(64)
     */
    public void setGshy(String gshy) {
        this.gshy = gshy;
    }

    /**
     * 获取实习职位，Char(32)
     *
     * @return SXZW - 实习职位，Char(32)
     */
    public String getSxzw() {
        return sxzw;
    }

    /**
     * 设置实习职位，Char(32)
     *
     * @param sxzw 实习职位，Char(32)
     */
    public void setSxzw(String sxzw) {
        this.sxzw = sxzw;
    }

    /**
     * 获取实习地点，Char(64)
     *
     * @return SXDD - 实习地点，Char(64)
     */
    public String getSxdd() {
        return sxdd;
    }

    /**
     * 设置实习地点，Char(64)
     *
     * @param sxdd 实习地点，Char(64)
     */
    public void setSxdd(String sxdd) {
        this.sxdd = sxdd;
    }

    /**
     * 获取实习开始时间
     *
     * @return SXKSSJ - 实习开始时间
     */
    public String getSxkssj() {
        return sxkssj;
    }

    /**
     * 设置实习开始时间
     *
     * @param sxkssj 实习开始时间
     */
    public void setSxkssj(String sxkssj) {
        this.sxkssj = sxkssj;
    }

    /**
     * 获取实习结束时间
     *
     * @return SXJSSJ - 实习结束时间
     */
    public String getSxjssj() {
        return sxjssj;
    }

    /**
     * 设置实习结束时间
     *
     * @param sxjssj 实习结束时间
     */
    public void setSxjssj(String sxjssj) {
        this.sxjssj = sxjssj;
    }

    /**
     * 获取项目名称，Char(64)
     *
     * @return XMMC - 项目名称，Char(64)
     */
    public String getXmmc() {
        return xmmc;
    }

    /**
     * 设置项目名称，Char(64)
     *
     * @param xmmc 项目名称，Char(64)
     */
    public void setXmmc(String xmmc) {
        this.xmmc = xmmc;
    }

    /**
     * 获取项目开始时间
     *
     * @return XMKSSJ - 项目开始时间
     */
    public String getXmkssj() {
        return xmkssj;
    }

    /**
     * 设置项目开始时间
     *
     * @param xmkssj 项目开始时间
     */
    public void setXmkssj(String xmkssj) {
        this.xmkssj = xmkssj;
    }

    /**
     * 获取项目结束时间
     *
     * @return XMJSSJ - 项目结束时间
     */
    public String getXmjssj() {
        return xmjssj;
    }

    /**
     * 设置项目结束时间
     *
     * @param xmjssj 项目结束时间
     */
    public void setXmjssj(String xmjssj) {
        this.xmjssj = xmjssj;
    }

    /**
     * 获取期望行业，Char(32)
     *
     * @return QWHY - 期望行业，Char(32)
     */
    public String getQwhy() {
        return qwhy;
    }

    /**
     * 设置期望行业，Char(32)
     *
     * @param qwhy 期望行业，Char(32)
     */
    public void setQwhy(String qwhy) {
        this.qwhy = qwhy;
    }

    /**
     * 获取期望职位，Char(32)
     *
     * @return QWZW - 期望职位，Char(32)
     */
    public String getQwzw() {
        return qwzw;
    }

    /**
     * 设置期望职位，Char(32)
     *
     * @param qwzw 期望职位，Char(32)
     */
    public void setQwzw(String qwzw) {
        this.qwzw = qwzw;
    }

    /**
     * 获取期望工作地点,Char(32)
     *
     * @return QWGZDD - 期望工作地点,Char(32)
     */
    public String getQwgzdd() {
        return qwgzdd;
    }

    /**
     * 设置期望工作地点,Char(32)
     *
     * @param qwgzdd 期望工作地点,Char(32)
     */
    public void setQwgzdd(String qwgzdd) {
        this.qwgzdd = qwgzdd;
    }

    /**
     * 获取期望月薪,Char(32)
     *
     * @return QWYX - 期望月薪,Char(32)
     */
    public String getQwyx() {
        return qwyx;
    }

    /**
     * 设置期望月薪,Char(32)
     *
     * @param qwyx 期望月薪,Char(32)
     */
    public void setQwyx(String qwyx) {
        this.qwyx = qwyx;
    }

    /**
     * 获取自我评价，Char(64)
     *
     * @return ZWPJ - 自我评价，Char(64)
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
     * 获取更新时间，Date
     *
     * @return GXSJ - 更新时间，Date
     */
    public String getGxsj() {
        return gxsj;
    }

    /**
     * 设置更新时间，Date
     *
     * @param gxsj 更新时间，Date
     */
    public void setGxsj(String gxsj) {
        this.gxsj = gxsj;
    }

    /**
     * 获取备注，Char(128)
     *
     * @return BZ - 备注，Char(128)
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
     * @return SHSJJL - 社会实践历经，Char(512)
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
     * 获取主要实习内容，Char(512)
     *
     * @return ZYSXNR - 主要实习内容，Char(512)
     */
    public String getZysxnr() {
        return zysxnr;
    }

    /**
     * 设置主要实习内容，Char(512)
     *
     * @param zysxnr 主要实习内容，Char(512)
     */
    public void setZysxnr(String zysxnr) {
        this.zysxnr = zysxnr;
    }

    /**
     * 获取项目内容描述，Text（1024）
     *
     * @return XMNRMS - 项目内容描述，Text（1024）
     */
    public String getXmnrms() {
        return xmnrms;
    }

    /**
     * 设置项目内容描述，Text（1024）
     *
     * @param xmnrms 项目内容描述，Text（1024）
     */
    public void setXmnrms(String xmnrms) {
        this.xmnrms = xmnrms;
    }

    /**
     * 获取获奖情况，Char(512)
     *
     * @return HJQK - 获奖情况，Char(512)
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
     * @return TCAH - 特长爱好，Char(512)
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