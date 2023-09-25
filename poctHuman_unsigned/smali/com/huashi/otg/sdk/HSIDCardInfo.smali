.class public Lcom/huashi/otg/sdk/HSIDCardInfo;
.super Ljava/lang/Object;
.source "HSIDCardInfo.java"


# static fields
.field private static _bmpdata:[B

.field private static _wltdata:[B


# instance fields
.field private _Addr:Ljava/lang/String;

.field private _BirthDay:Ljava/util/Date;

.field private _Department:Ljava/lang/String;

.field private _EndDate:Ljava/lang/String;

.field private _FpDate:[B

.field private _IDCard:Ljava/lang/String;

.field private _People:Ljava/lang/String;

.field private _PeopleName:Ljava/lang/String;

.field private _Sex:Ljava/lang/String;

.field private _StartDate:Ljava/lang/String;

.field private m_PassCheckID:Ljava/lang/String;

.field private m_certType:Ljava/lang/String;

.field private m_issuesNum:Ljava/lang/String;

.field private m_strCertVer:Ljava/lang/String;

.field private m_strChineseName:Ljava/lang/String;

.field private m_strNationCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const/16 v0, 0x400

    new-array v1, v0, [B

    sput-object v1, Lcom/huashi/otg/sdk/HSIDCardInfo;->_bmpdata:[B

    .line 19
    new-array v0, v0, [B

    sput-object v0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_wltdata:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_PeopleName:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_Sex:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_People:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_BirthDay:Ljava/util/Date;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_Addr:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_IDCard:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_Department:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_StartDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_EndDate:Ljava/lang/String;

    .line 17
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_FpDate:[B

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_certType:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_strNationCode:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_strChineseName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_strCertVer:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_issuesNum:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_PassCheckID:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getAddr()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDay()Ljava/util/Date;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_BirthDay:Ljava/util/Date;

    return-object v0
.end method

.method public getDepartment()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_Department:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_EndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFpDate()[B
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_FpDate:[B

    return-object v0
.end method

.method public getIDCard()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_IDCard:Ljava/lang/String;

    return-object v0
.end method

.method public getPassCheckID()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_PassCheckID:Ljava/lang/String;

    return-object v0
.end method

.method public getPeople()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_People:Ljava/lang/String;

    return-object v0
.end method

.method public getPeopleName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_PeopleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_Sex:Ljava/lang/String;

    return-object v0
.end method

.method public getStrartDate()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_StartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getbmpdata()[B
    .locals 1

    .line 165
    sget-object v0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_bmpdata:[B

    return-object v0
.end method

.method public getcertType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_certType:Ljava/lang/String;

    return-object v0
.end method

.method public getissuesNum()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_issuesNum:Ljava/lang/String;

    return-object v0
.end method

.method public getstrCertVer()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_strCertVer:Ljava/lang/String;

    return-object v0
.end method

.method public getstrChineseName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_strChineseName:Ljava/lang/String;

    return-object v0
.end method

.method public getstrNationCode()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_strNationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getwltdata()[B
    .locals 1

    .line 173
    sget-object v0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_wltdata:[B

    return-object v0
.end method

.method public setAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_Addr:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setBirthDay(Ljava/util/Date;)V
    .locals 0
    .param p1, "value"    # Ljava/util/Date;

    .line 113
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_BirthDay:Ljava/util/Date;

    .line 114
    return-void
.end method

.method public setDepartment(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_Department:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_EndDate:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setFpDate([B)V
    .locals 0
    .param p1, "value"    # [B

    .line 161
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_FpDate:[B

    .line 162
    return-void
.end method

.method public setIDCard(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_IDCard:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setPassCheckID(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_PassCheckID:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPeople(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_People:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPeopleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_PeopleName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_Sex:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setStrartDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->_StartDate:Ljava/lang/String;

    .line 146
    return-void
.end method

.method protected setbmpdata([B)V
    .locals 0
    .param p1, "bmpdata"    # [B

    .line 169
    sput-object p1, Lcom/huashi/otg/sdk/HSIDCardInfo;->_bmpdata:[B

    .line 170
    return-void
.end method

.method public setcertType(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_certType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setissuesNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_issuesNum:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setstrCertVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_strCertVer:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setstrChineseName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_strChineseName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setstrNationCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/huashi/otg/sdk/HSIDCardInfo;->m_strNationCode:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setwltdata([B)V
    .locals 0
    .param p1, "wltdata"    # [B

    .line 177
    sput-object p1, Lcom/huashi/otg/sdk/HSIDCardInfo;->_wltdata:[B

    .line 178
    return-void
.end method
