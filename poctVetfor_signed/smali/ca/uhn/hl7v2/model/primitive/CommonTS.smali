.class public Lca/uhn/hl7v2/model/primitive/CommonTS;
.super Ljava/lang/Object;
.source "CommonTS.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

.field private tm:Lca/uhn/hl7v2/model/primitive/CommonTM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 753
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonTS;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;-><init>()V

    .line 754
    .local v0, "ts":Lca/uhn/hl7v2/model/primitive/CommonTS;
    const-string v1, "1984"

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/lang/String;)V

    .line 756
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public static toHl7TSFormat(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 20
    .param p0, "cal"    # Ljava/util/GregorianCalendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 701
    move-object/from16 v1, p0

    const-string v2, ""

    .line 705
    .local v2, "val":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 706
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 707
    .local v5, "calYear":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v11, v4, 0x1

    .line 708
    .local v11, "calMonth":I
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 709
    .local v7, "calDay":I
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 710
    .local v8, "calHour":I
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 711
    .local v9, "calMin":I
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move v12, v4

    .line 712
    .local v12, "calSec":I
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move v13, v4

    .line 714
    .local v13, "calMilli":I
    int-to-float v4, v13

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v14, v4, v6

    .line 715
    .local v14, "fractSec":F
    int-to-float v4, v12

    add-float v15, v4, v14

    .line 716
    .local v15, "calSecFloat":F
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 720
    .local v4, "calOffset":I
    if-gez v4, :cond_0

    .line 721
    const/4 v3, -0x1

    .line 722
    .local v3, "offSetSignInt":I
    goto :goto_0

    .line 724
    .end local v3    # "offSetSignInt":I
    :cond_0
    nop

    .line 727
    .restart local v3    # "offSetSignInt":I
    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move/from16 v16, v6

    .line 728
    .local v16, "absGmtOffSet":I
    const v6, 0x36ee80

    div-int v6, v16, v6

    move/from16 v17, v6

    .line 729
    .local v17, "gmtOffSetHours":I
    const v6, 0xea60

    div-int v6, v16, v6

    rem-int/lit8 v6, v6, 0x3c

    move/from16 v18, v6

    .line 731
    .local v18, "gmtOffSetMin":I
    mul-int/lit8 v6, v17, 0x64

    add-int v6, v6, v18

    mul-int v10, v6, v3

    .line 734
    .end local v4    # "calOffset":I
    .local v10, "calOffset":I
    new-instance v4, Lca/uhn/hl7v2/model/primitive/CommonTS;

    invoke-direct {v4}, Lca/uhn/hl7v2/model/primitive/CommonTS;-><init>()V
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v4

    .line 735
    .local v6, "ts":Lca/uhn/hl7v2/model/primitive/CommonTS;
    move-object v1, v6

    move v6, v11

    .line 735
    .end local v6    # "ts":Lca/uhn/hl7v2/model/primitive/CommonTS;
    .local v1, "ts":Lca/uhn/hl7v2/model/primitive/CommonTS;
    move-object/from16 v19, v2

    move v2, v10

    move v10, v15

    .line 735
    .end local v10    # "calOffset":I
    .local v2, "calOffset":I
    .local v19, "val":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v4 .. v10}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setDateSecondPrecision(IIIIIF)V

    .line 736
    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setOffset(I)V

    .line 737
    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getValue()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v4

    .line 738
    .end local v2    # "calOffset":I
    .end local v3    # "offSetSignInt":I
    .end local v5    # "calYear":I
    .end local v7    # "calDay":I
    .end local v8    # "calHour":I
    .end local v9    # "calMin":I
    .end local v11    # "calMonth":I
    .end local v12    # "calSec":I
    .end local v13    # "calMilli":I
    .end local v14    # "fractSec":F
    .end local v15    # "calSecFloat":F
    .end local v16    # "absGmtOffSet":I
    .end local v17    # "gmtOffSetHours":I
    .end local v18    # "gmtOffSetMin":I
    .end local v19    # "val":Ljava/lang/String;
    .local v1, "val":Ljava/lang/String;
    nop

    .line 747
    return-object v1

    .line 744
    .end local v1    # "val":Ljava/lang/String;
    .restart local v19    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    .line 740
    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .line 744
    .end local v19    # "val":Ljava/lang/String;
    .local v2, "val":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v19, v2

    move-object v1, v0

    .line 745
    .end local v2    # "val":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v19    # "val":Ljava/lang/String;
    :goto_1
    new-instance v2, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 740
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v19    # "val":Ljava/lang/String;
    .restart local v2    # "val":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    move-object v1, v0

    .line 741
    .end local v2    # "val":Ljava/lang/String;
    .local v1, "e":Lca/uhn/hl7v2/model/DataTypeException;
    .restart local v19    # "val":Ljava/lang/String;
    :goto_2
    throw v1
.end method


# virtual methods
.method public getDay()I
    .locals 2

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "day":I
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getDay()I

    move-result v0

    .line 140
    :cond_0
    return v0
.end method

.method public getFractSecond()F
    .locals 2

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "fractionOfSec":F
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getFractSecond()F

    move-result v0

    .line 151
    :cond_0
    return v0
.end method

.method public getGMTOffset()I
    .locals 2

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "offSet":I
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getGMTOffset()I

    move-result v0

    .line 162
    :cond_0
    return v0
.end method

.method public getHour()I
    .locals 2

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "hour":I
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getHour()I

    move-result v0

    .line 173
    :cond_0
    return v0
.end method

.method public getMinute()I
    .locals 2

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "minute":I
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getMinute()I

    move-result v0

    .line 184
    :cond_0
    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "month":I
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getMonth()I

    move-result v0

    .line 195
    :cond_0
    return v0
.end method

.method public getSecond()I
    .locals 2

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "seconds":I
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getSecond()I

    move-result v0

    .line 206
    :cond_0
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 218
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const-string v0, "\"\""

    .line 223
    goto :goto_0

    .line 226
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v2}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_2
    :goto_0
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    :cond_3
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getGMTOffset()I

    move-result v1

    .line 233
    .local v1, "offset":I
    const-string v2, ""

    .line 234
    .local v2, "offsetStr":Ljava/lang/String;
    const/16 v3, -0x63

    if-eq v1, v3, :cond_5

    .line 235
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lca/uhn/hl7v2/model/DataTypeUtil;->preAppendZeroes(II)Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v3}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getGMTOffset()I

    move-result v3

    if-ltz v3, :cond_4

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    goto :goto_1

    .line 240
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .end local v1    # "offset":I
    .end local v2    # "offsetStr":Ljava/lang/String;
    :cond_6
    return-object v0
.end method

.method public getValueAsCalendar()Ljava/util/Calendar;
    .locals 4

    .line 256
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValueAsCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 262
    .local v0, "retVal":Ljava/util/Calendar;
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getYear()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 263
    const/4 v1, 0x2

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getMonth()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 264
    const/4 v1, 0x5

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getDay()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 266
    return-object v0
.end method

.method public getValueAsDate()Ljava/util/Date;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->getValueAsCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "year":I
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getYear()I

    move-result v0

    .line 291
    :cond_0
    return v0
.end method

.method public setDateMinutePrecision(IIIII)V
    .locals 2
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .param p3, "dy"    # I
    .param p4, "hr"    # I
    .param p5, "min"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 303
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setDatePrecision(III)V

    .line 305
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 309
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v0, p4, p5}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourMinutePrecision(II)V
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    nop

    .line 319
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 313
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setDatePrecision(III)V
    .locals 2
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .param p3, "dy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 331
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    .line 335
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {v0, p1, p2, p3}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setYearMonthDayPrecision(III)V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    nop

    .line 347
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 341
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setDateSecondPrecision(IIIIIF)V
    .locals 2
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .param p3, "dy"    # I
    .param p4, "hr"    # I
    .param p5, "min"    # I
    .param p6, "sec"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 363
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setDatePrecision(III)V

    .line 365
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 369
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v0, p4, p5, p6}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourMinSecondPrecision(IIF)V
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    nop

    .line 379
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 373
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setOffset(I)V
    .locals 2
    .param p1, "signedOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 388
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 392
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setOffset(I)V
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    nop

    .line 402
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 396
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 11
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 466
    if-eqz p1, :cond_f

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 470
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 471
    const-string v0, "The length of the TS datatype value must be at least 4 characters in length."

    .line 472
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v1

    .line 478
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    .line 479
    const-string v0, "The length of the TS datatype value must not be more than 24 characters in length."

    .line 480
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 481
    .restart local v1    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v1

    .line 486
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_1
    const/4 v0, 0x0

    .line 487
    .local v0, "dateVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 488
    .local v1, "timeVal":Ljava/lang/String;
    const/4 v2, 0x0

    .line 489
    .local v2, "timeValLessOffset":Ljava/lang/String;
    const-string v3, "+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 490
    .local v3, "sp":I
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 491
    .local v4, "sm":I
    const/4 v5, -0x1

    .line 492
    .local v5, "indexOfSign":I
    const/4 v6, 0x0

    .line 493
    .local v6, "offsetExists":Z
    const/4 v7, 0x0

    .line 494
    .local v7, "timeValIsOffsetOnly":Z
    const/4 v8, -0x1

    if-ne v3, v8, :cond_2

    if-eq v4, v8, :cond_3

    .line 495
    :cond_2
    const/4 v6, 0x1

    .line 497
    :cond_3
    if-eq v3, v8, :cond_4

    .line 498
    move v5, v3

    .line 499
    :cond_4
    if-eq v4, v8, :cond_5

    .line 500
    move v5, v4

    .line 502
    :cond_5
    const/4 v8, 0x0

    const/16 v9, 0x8

    if-nez v6, :cond_7

    .line 503
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v9, :cond_6

    .line 504
    move-object v0, p1

    .line 505
    goto :goto_0

    .line 508
    :cond_6
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 509
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 510
    move-object v2, v1

    .line 514
    :cond_7
    :goto_0
    if-eqz v6, :cond_9

    .line 515
    if-le v5, v9, :cond_8

    .line 516
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 517
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 518
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 519
    goto :goto_1

    .line 522
    :cond_8
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 523
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 524
    const/4 v7, 0x1

    .line 529
    :cond_9
    :goto_1
    new-instance v8, Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-direct {v8}, Lca/uhn/hl7v2/model/primitive/CommonDT;-><init>()V

    iput-object v8, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    .line 531
    iget-object v8, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-virtual {v8, v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setValue(Ljava/lang/String;)V

    .line 534
    if-nez v1, :cond_a

    if-nez v6, :cond_a

    .line 536
    new-instance v8, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-direct {v8}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>()V

    iput-object v8, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 538
    iget-object v8, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 543
    :cond_a
    if-eqz v1, :cond_c

    if-nez v7, :cond_c

    .line 547
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_b

    .line 549
    const-string v8, "The length of the time component for the TM datatype value does not conform to the allowable format YYYY[MM[DD[HH[MM[SS[.S[S[S[S]]]]]]]]][+/-ZZZZ]."

    .line 548
    nop

    .line 552
    .local v8, "msg":Ljava/lang/String;
    new-instance v9, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v9, v8}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 553
    .local v9, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v9

    .line 555
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_b
    new-instance v8, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-direct {v8}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>()V

    iput-object v8, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 556
    iget-object v8, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v8, v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 561
    :cond_c
    if-eqz v1, :cond_12

    if-eqz v7, :cond_12

    .line 565
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_d

    .line 567
    const-string v8, "The length of the GMT offset for the TM datatype value does not conform to the allowable format [+/-ZZZZ]"

    .line 566
    nop

    .line 569
    .restart local v8    # "msg":Ljava/lang/String;
    new-instance v9, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v9, v8}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 570
    .restart local v9    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v9

    .line 572
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_d
    new-instance v8, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-direct {v8}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>()V

    iput-object v8, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 574
    const-string v8, "+"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_e

    .line 575
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 577
    :cond_e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 578
    .local v8, "signedOffset":I
    iget-object v9, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-virtual {v9, v8}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setOffset(I)V
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v0    # "dateVal":Ljava/lang/String;
    .end local v1    # "timeVal":Ljava/lang/String;
    .end local v2    # "timeValLessOffset":Ljava/lang/String;
    .end local v3    # "sp":I
    .end local v4    # "sm":I
    .end local v5    # "indexOfSign":I
    .end local v6    # "offsetExists":Z
    .end local v7    # "timeValIsOffsetOnly":Z
    .end local v8    # "signedOffset":I
    goto :goto_2

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 583
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0

    .line 592
    .end local v0    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_f
    if-nez p1, :cond_10

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    .line 594
    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 596
    :cond_10
    if-eqz p1, :cond_11

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 597
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    .line 598
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setValue(Ljava/lang/String;)V

    .line 599
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 600
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 602
    :cond_11
    if-eqz p1, :cond_12

    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 603
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    .line 604
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->dt:Lca/uhn/hl7v2/model/primitive/CommonDT;

    const-string v1, "\"\""

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setValue(Ljava/lang/String;)V

    .line 605
    new-instance v0, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-direct {v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    .line 606
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTS;->tm:Lca/uhn/hl7v2/model/primitive/CommonTM;

    const-string v1, "\"\""

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 610
    :cond_12
    :goto_2
    return-void
.end method

.method public setValue(Ljava/util/Calendar;)V
    .locals 13
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 414
    if-nez p1, :cond_0

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/lang/String;)V

    .line 416
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 420
    .local v8, "yr":I
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 421
    .local v0, "mnth":I
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 422
    .local v9, "dy":I
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 423
    .local v10, "hr":I
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 424
    .local v11, "min":I
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    add-float v12, v1, v2

    .line 425
    .local v12, "sec":F
    move-object v1, p0

    move v2, v8

    move v3, v0

    move v4, v9

    move v5, v10

    move v6, v11

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setDateSecondPrecision(IIIIIF)V

    .line 428
    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 429
    .local v1, "timeZoneOffset":I
    const v2, 0x36ee80

    div-int v2, v1, v2

    .line 430
    .local v2, "hourOffset":I
    const v3, 0xea60

    div-int v3, v1, v3

    rem-int/lit8 v3, v3, 0x3c

    .line 431
    .local v3, "minuteOffset":I
    mul-int/lit8 v4, v2, 0x64

    add-int/2addr v4, v3

    .line 432
    .local v4, "zoneOffset":I
    invoke-virtual {p0, v4}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setOffset(I)V

    .line 433
    return-void
.end method

.method public setValue(Ljava/util/Date;)V
    .locals 1
    .param p1, "theDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 445
    if-nez p1, :cond_0

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/lang/String;)V

    .line 447
    return-void

    .line 450
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 451
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 452
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/util/Calendar;)V

    .line 453
    return-void
.end method

.method public setValueToMinute(Ljava/util/Calendar;)V
    .locals 11
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 621
    if-nez p1, :cond_0

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/lang/String;)V

    .line 623
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 627
    .local v7, "yr":I
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 628
    .local v0, "mnth":I
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 629
    .local v8, "dy":I
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 630
    .local v9, "hr":I
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 631
    .local v10, "min":I
    move-object v1, p0

    move v2, v7

    move v3, v0

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setDateMinutePrecision(IIIII)V

    .line 633
    return-void
.end method

.method public setValueToMinute(Ljava/util/Date;)V
    .locals 1
    .param p1, "theDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 644
    if-nez p1, :cond_0

    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/lang/String;)V

    .line 646
    return-void

    .line 649
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 650
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 651
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValueToMinute(Ljava/util/Calendar;)V

    .line 652
    return-void
.end method

.method public setValueToSecond(Ljava/util/Calendar;)V
    .locals 13
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 663
    if-nez p1, :cond_0

    .line 664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/lang/String;)V

    .line 665
    return-void

    .line 668
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 669
    .local v8, "yr":I
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 670
    .local v0, "mnth":I
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 671
    .local v9, "dy":I
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 672
    .local v10, "hr":I
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 673
    .local v11, "min":I
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 674
    .local v12, "sec":I
    int-to-float v7, v12

    move-object v1, p0

    move v2, v8

    move v3, v0

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setDateSecondPrecision(IIIIIF)V

    .line 675
    return-void
.end method

.method public setValueToSecond(Ljava/util/Date;)V
    .locals 1
    .param p1, "theDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 686
    if-nez p1, :cond_0

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValue(Ljava/lang/String;)V

    .line 688
    return-void

    .line 691
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 692
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 693
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTS;->setValueToSecond(Ljava/util/Calendar;)V

    .line 694
    return-void
.end method
