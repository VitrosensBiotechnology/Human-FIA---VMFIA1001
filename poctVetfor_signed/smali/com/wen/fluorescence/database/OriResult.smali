.class public Lcom/wen/fluorescence/database/OriResult;
.super Ljava/lang/Object;
.source "OriResult.java"


# instance fields
.field private C:Ljava/lang/String;

.field private ID_Type:I

.field private T1:Ljava/lang/String;

.field private T2:Ljava/lang/String;

.field private T3:Ljava/lang/String;

.field private TC1:Ljava/lang/String;

.field private TC2:Ljava/lang/String;

.field private TC3:Ljava/lang/String;

.field private barCode:Ljava/lang/String;

.field private calTemp:D

.field private endTemp:D

.field private item:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private startTemp:D

.field private testMode:I

.field private time:Ljava/lang/String;

.field private value1:Ljava/lang/String;

.field private value2:Ljava/lang/String;

.field private value3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->T1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->T2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->T3:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->TC1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->TC2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->TC3:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->value1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->value2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->value3:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->time:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->item:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->number:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->barCode:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->serialNumber:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "t1"    # Ljava/lang/String;
    .param p2, "t2"    # Ljava/lang/String;
    .param p3, "t3"    # Ljava/lang/String;
    .param p4, "c"    # Ljava/lang/String;
    .param p5, "tC1"    # Ljava/lang/String;
    .param p6, "tC2"    # Ljava/lang/String;
    .param p7, "tC3"    # Ljava/lang/String;
    .param p8, "value1"    # Ljava/lang/String;
    .param p9, "value2"    # Ljava/lang/String;
    .param p10, "value3"    # Ljava/lang/String;
    .param p11, "time"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->T1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->T2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->T3:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->TC1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->TC2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->TC3:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->value1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->value2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->value3:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->time:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->item:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->number:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->barCode:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->serialNumber:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->T1:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/wen/fluorescence/database/OriResult;->T2:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/wen/fluorescence/database/OriResult;->T3:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/wen/fluorescence/database/OriResult;->C:Ljava/lang/String;

    .line 139
    iput-object p5, p0, Lcom/wen/fluorescence/database/OriResult;->TC1:Ljava/lang/String;

    .line 140
    iput-object p6, p0, Lcom/wen/fluorescence/database/OriResult;->TC2:Ljava/lang/String;

    .line 141
    iput-object p7, p0, Lcom/wen/fluorescence/database/OriResult;->TC3:Ljava/lang/String;

    .line 142
    iput-object p8, p0, Lcom/wen/fluorescence/database/OriResult;->value1:Ljava/lang/String;

    .line 143
    iput-object p9, p0, Lcom/wen/fluorescence/database/OriResult;->value2:Ljava/lang/String;

    .line 144
    iput-object p10, p0, Lcom/wen/fluorescence/database/OriResult;->value3:Ljava/lang/String;

    .line 145
    iput-object p11, p0, Lcom/wen/fluorescence/database/OriResult;->time:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public getBarCode()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->barCode:Ljava/lang/String;

    return-object v0
.end method

.method public getC()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getCalTemp()D
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/wen/fluorescence/database/OriResult;->calTemp:D

    return-wide v0
.end method

.method public getEndTemp()D
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/wen/fluorescence/database/OriResult;->endTemp:D

    return-wide v0
.end method

.method public getID_Type()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/wen/fluorescence/database/OriResult;->ID_Type:I

    return v0
.end method

.method public getItem()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->item:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTemp()D
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/wen/fluorescence/database/OriResult;->startTemp:D

    return-wide v0
.end method

.method public getT1()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->T1:Ljava/lang/String;

    return-object v0
.end method

.method public getT2()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->T2:Ljava/lang/String;

    return-object v0
.end method

.method public getT3()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->T3:Ljava/lang/String;

    return-object v0
.end method

.method public getTC1()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->TC1:Ljava/lang/String;

    return-object v0
.end method

.method public getTC2()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->TC2:Ljava/lang/String;

    return-object v0
.end method

.method public getTC3()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->TC3:Ljava/lang/String;

    return-object v0
.end method

.method public getTestMode()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/wen/fluorescence/database/OriResult;->testMode:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getValue1()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->value1:Ljava/lang/String;

    return-object v0
.end method

.method public getValue2()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->value2:Ljava/lang/String;

    return-object v0
.end method

.method public getValue3()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/wen/fluorescence/database/OriResult;->value3:Ljava/lang/String;

    return-object v0
.end method

.method public setBarCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "barCode"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->barCode:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setC(Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->C:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCalTemp(D)V
    .locals 0
    .param p1, "calTemp"    # D

    .line 201
    iput-wide p1, p0, Lcom/wen/fluorescence/database/OriResult;->calTemp:D

    .line 202
    return-void
.end method

.method public setEndTemp(D)V
    .locals 0
    .param p1, "endTemp"    # D

    .line 193
    iput-wide p1, p0, Lcom/wen/fluorescence/database/OriResult;->endTemp:D

    .line 194
    return-void
.end method

.method public setID_Type(I)V
    .locals 0
    .param p1, "iD_Type"    # I

    .line 209
    iput p1, p0, Lcom/wen/fluorescence/database/OriResult;->ID_Type:I

    .line 210
    return-void
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->item:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->number:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->serialNumber:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setStartTemp(D)V
    .locals 0
    .param p1, "startTemp"    # D

    .line 185
    iput-wide p1, p0, Lcom/wen/fluorescence/database/OriResult;->startTemp:D

    .line 186
    return-void
.end method

.method public setT1(Ljava/lang/String;)V
    .locals 0
    .param p1, "t1"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->T1:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setT2(Ljava/lang/String;)V
    .locals 0
    .param p1, "t2"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->T2:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setT3(Ljava/lang/String;)V
    .locals 0
    .param p1, "t3"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->T3:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTC1(Ljava/lang/String;)V
    .locals 0
    .param p1, "tC1"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->TC1:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTC2(Ljava/lang/String;)V
    .locals 0
    .param p1, "tC2"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->TC2:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTC3(Ljava/lang/String;)V
    .locals 0
    .param p1, "tC3"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->TC3:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTestMode(I)V
    .locals 0
    .param p1, "testMode"    # I

    .line 37
    iput p1, p0, Lcom/wen/fluorescence/database/OriResult;->testMode:I

    .line 38
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->time:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setValue1(Ljava/lang/String;)V
    .locals 0
    .param p1, "value1"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->value1:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setValue2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value2"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->value2:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setValue3(Ljava/lang/String;)V
    .locals 0
    .param p1, "value3"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/wen/fluorescence/database/OriResult;->value3:Ljava/lang/String;

    .line 118
    return-void
.end method
