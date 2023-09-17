.class public Lca/uhn/hl7v2/model/primitive/CommonTM;
.super Ljava/lang/Object;
.source "CommonTM.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final GMT_OFFSET_NOT_SET_VALUE:I = -0x63


# instance fields
.field private fractionOfSec:F

.field private hour:I

.field private minute:I

.field private offSet:I

.field private omitOffsetFg:Z

.field private second:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    .line 99
    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->hour:I

    .line 100
    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->minute:I

    .line 101
    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->fractionOfSec:F

    .line 103
    const/16 v0, -0x63

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    .line 112
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static toHl7TMFormat(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 14
    .param p0, "cal"    # Ljava/util/GregorianCalendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 706
    const-string v0, ""

    .line 710
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 711
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 712
    .local v1, "calHour":I
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 713
    .local v2, "calMin":I
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 714
    .local v3, "calSec":I
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 716
    .local v4, "calMilli":I
    int-to-float v5, v4

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    .line 717
    .local v5, "fractSec":F
    int-to-float v6, v3

    add-float/2addr v6, v5

    .line 718
    .local v6, "calSecFloat":F
    const/16 v7, 0xf

    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-virtual {p0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 722
    .local v7, "calOffset":I
    if-gez v7, :cond_0

    .line 723
    const/4 v8, -0x1

    .line 724
    .local v8, "offSetSignInt":I
    goto :goto_0

    .line 726
    .end local v8    # "offSetSignInt":I
    :cond_0
    const/4 v8, 0x1

    .line 729
    .restart local v8    # "offSetSignInt":I
    :goto_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 730
    .local v9, "absGmtOffSet":I
    const v10, 0x36ee80

    div-int v10, v9, v10

    .line 731
    .local v10, "gmtOffSetHours":I
    const v11, 0xea60

    div-int v11, v9, v11

    rem-int/lit8 v11, v11, 0x3c

    .line 733
    .local v11, "gmtOffSetMin":I
    mul-int/lit8 v12, v10, 0x64

    add-int/2addr v12, v11

    mul-int/2addr v12, v8

    .line 736
    .end local v7    # "calOffset":I
    .local v12, "calOffset":I
    new-instance v7, Lca/uhn/hl7v2/model/primitive/CommonTM;

    invoke-direct {v7}, Lca/uhn/hl7v2/model/primitive/CommonTM;-><init>()V

    .line 737
    .local v7, "tm":Lca/uhn/hl7v2/model/primitive/CommonTM;
    invoke-virtual {v7, v1, v2, v6}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourMinSecondPrecision(IIF)V

    .line 738
    invoke-virtual {v7, v12}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setOffset(I)V

    .line 739
    invoke-virtual {v7}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValue()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v13

    .line 740
    .end local v1    # "calHour":I
    .end local v2    # "calMin":I
    .end local v3    # "calSec":I
    .end local v4    # "calMilli":I
    .end local v5    # "fractSec":F
    .end local v6    # "calSecFloat":F
    .end local v7    # "tm":Lca/uhn/hl7v2/model/primitive/CommonTM;
    .end local v8    # "offSetSignInt":I
    .end local v9    # "absGmtOffSet":I
    .end local v10    # "gmtOffSetHours":I
    .end local v11    # "gmtOffSetMin":I
    .end local v12    # "calOffset":I
    nop

    .line 749
    return-object v0

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 742
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 743
    .local v1, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v1
.end method


# virtual methods
.method public getFractSecond()F
    .locals 1

    .line 691
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->fractionOfSec:F

    return v0
.end method

.method public getGMTOffset()I
    .locals 1

    .line 698
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 670
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 677
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->minute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 684
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "returnVal":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    iget-boolean v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    const-string v2, "\"\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    iget v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 482
    .local v1, "absOffset":I
    const-string v2, ""

    .line 483
    .local v2, "sign":Ljava/lang/String;
    iget v3, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    if-ltz v3, :cond_0

    .line 484
    const-string v2, "+"

    .line 485
    goto :goto_0

    .line 487
    :cond_0
    const-string v2, "-"

    .line 489
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lca/uhn/hl7v2/model/DataTypeUtil;->preAppendZeroes(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .end local v1    # "absOffset":I
    .end local v2    # "sign":Ljava/lang/String;
    goto :goto_1

    .line 492
    :cond_1
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    .line 495
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getValueAsCalendar()Ljava/util/Calendar;
    .locals 8

    .line 633
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getGMTOffset()I

    move-result v0

    .line 635
    .local v0, "gmtOff":I
    const/16 v1, -0x63

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    if-nez v1, :cond_0

    .line 636
    div-int/lit8 v1, v0, 0x64

    .line 637
    .local v1, "hrOffset":I
    rem-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 638
    .local v2, "minOffset":I
    const-string v3, "GMT%+d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "timeZone":Ljava/lang/String;
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 639
    .end local v1    # "hrOffset":I
    .end local v2    # "minOffset":I
    .end local v3    # "timeZone":Ljava/lang/String;
    move-object v1, v4

    .line 640
    .local v1, "retVal":Ljava/util/Calendar;
    goto :goto_0

    .line 641
    .end local v1    # "retVal":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 644
    .restart local v1    # "retVal":Ljava/util/Calendar;
    :goto_0
    const/16 v2, 0xb

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 645
    const/16 v2, 0xc

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 646
    const/16 v2, 0xd

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getSecond()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 647
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getFractSecond()F

    move-result v2

    .line 648
    .local v2, "fractSecond":F
    const/16 v3, 0xe

    float-to-double v4, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 650
    return-object v1
.end method

.method public getValueAsDate()Ljava/util/Date;
    .locals 1

    .line 663
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->getValueAsCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setHourMinSecondPrecision(IIF)V
    .locals 6
    .param p1, "hr"    # I
    .param p2, "min"    # I
    .param p3, "sec"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 383
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourMinutePrecision(II)V

    .line 387
    const v0, 0x461c4000    # 10000.0f

    mul-float v1, v0, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 388
    .local v1, "secMultRound":I
    int-to-float v2, v1

    div-float p3, v2, v0

    .line 390
    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    .line 392
    iget v2, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    if-ltz v2, :cond_2

    iget v2, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget v2, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    mul-int/lit16 v2, v2, 0x2710

    sub-int v2, v1, v2

    .line 398
    .local v2, "fractionOfSecInt":I
    int-to-float v3, v2

    div-float/2addr v3, v0

    iput v3, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->fractionOfSec:F

    .line 399
    const-string v0, ""

    .line 401
    .local v0, "fractString":Ljava/lang/String;
    iget v3, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->fractionOfSec:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 402
    iget v3, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->fractionOfSec:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 405
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    .line 408
    iput-boolean v4, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lca/uhn/hl7v2/model/DataTypeUtil;->preAppendZeroes(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    .line 410
    .end local v0    # "fractString":Ljava/lang/String;
    .end local v1    # "secMultRound":I
    .end local v2    # "fractionOfSecInt":I
    nop

    .line 419
    return-void

    .line 393
    .restart local v1    # "secMultRound":I
    :cond_2
    :goto_0
    const-string v0, "The (rounded) second value of the TM datatype must be >=0 and <60"

    .line 394
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v2, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 395
    .local v2, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v2
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "secMultRound":I
    .end local v2    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 413
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setHourMinutePrecision(II)V
    .locals 3
    .param p1, "hr"    # I
    .param p2, "min"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 345
    :try_start_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourPrecision(I)V

    .line 347
    if-ltz p2, :cond_1

    const/16 v0, 0x3b

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iput p2, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->minute:I

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    .line 354
    const/4 v1, 0x0

    iput v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->fractionOfSec:F

    .line 355
    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    .line 359
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lca/uhn/hl7v2/model/DataTypeUtil;->preAppendZeroes(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    .line 360
    nop

    .line 369
    return-void

    .line 348
    :cond_1
    :goto_0
    const-string v0, "The minute value of the TM datatype must be >=0 and <=59"

    .line 349
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v1
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 363
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setHourPrecision(I)V
    .locals 3
    .param p1, "hr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 312
    if-ltz p1, :cond_1

    const/16 v0, 0x17

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    :try_start_0
    iput p1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->hour:I

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->minute:I

    .line 319
    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    .line 320
    const/4 v1, 0x0

    iput v1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->fractionOfSec:F

    .line 321
    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    .line 325
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lca/uhn/hl7v2/model/DataTypeUtil;->preAppendZeroes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    .line 326
    nop

    .line 336
    return-void

    .line 313
    :cond_1
    :goto_0
    const-string v0, "The hour value of the TM datatype must be >=0 and <=23"

    .line 314
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 315
    .local v1, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v1
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setOffset(I)V
    .locals 6
    .param p1, "signedOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 430
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "offsetStr":Ljava/lang/String;
    const/4 v2, 0x4

    if-ltz p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v2, :cond_1

    :cond_0
    if-gez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 435
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The length of the GMT offset for the TM datatype value does not conform to the allowable format [+/-ZZZZ]. Value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    nop

    .line 437
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v2, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 438
    .local v2, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v2

    .line 441
    .end local v0    # "msg":Ljava/lang/String;
    .end local v2    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 444
    .local v3, "absOffset":I
    invoke-static {v3, v2}, Lca/uhn/hl7v2/model/DataTypeUtil;->preAppendZeroes(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 445
    const/4 v4, 0x2

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 447
    .local v0, "hrOffsetInt":I
    if-ltz v0, :cond_6

    const/16 v5, 0x17

    if-le v0, v5, :cond_3

    goto :goto_1

    .line 453
    :cond_3
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 455
    .local v2, "minOffsetInt":I
    if-ltz v2, :cond_5

    const/16 v4, 0x3b

    if-le v2, v4, :cond_4

    goto :goto_0

    .line 461
    :cond_4
    iput p1, p0, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    .line 462
    .end local v0    # "hrOffsetInt":I
    .end local v1    # "offsetStr":Ljava/lang/String;
    .end local v2    # "minOffsetInt":I
    .end local v3    # "absOffset":I
    nop

    .line 471
    return-void

    .line 456
    .restart local v0    # "hrOffsetInt":I
    .restart local v1    # "offsetStr":Ljava/lang/String;
    .restart local v2    # "minOffsetInt":I
    .restart local v3    # "absOffset":I
    :cond_5
    :goto_0
    const-string v4, "The GMT offset minute value of the TM datatype must be >=0 and <=59"

    .line 457
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v5, v4}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 458
    .local v5, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v5

    .line 448
    .end local v2    # "minOffsetInt":I
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_6
    :goto_1
    const-string v2, "The GMT offset hour value of the TM datatype must be >=0 and <=23"

    .line 449
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v4, v2}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 450
    .local v4, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v4
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v0    # "hrOffsetInt":I
    .end local v1    # "offsetStr":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "absOffset":I
    .end local v4    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 465
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 17
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 127
    move-object/from16 v2, p1

    if-eqz v2, :cond_1b

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "\"\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 131
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 132
    .local v3, "d":I
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 133
    .local v4, "sp":I
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 134
    .local v5, "sm":I
    const/4 v6, -0x1

    .line 135
    .local v6, "indexOfSign":I
    const/4 v7, 0x0

    .line 136
    .local v7, "offsetExists":Z
    const/4 v8, -0x1

    if-ne v4, v8, :cond_0

    if-eq v5, v8, :cond_1

    .line 137
    :cond_0
    const/4 v7, 0x1

    .line 138
    :cond_1
    if-eq v4, v8, :cond_2

    .line 139
    move v6, v4

    .line 140
    :cond_2
    if-eq v5, v8, :cond_3

    .line 141
    move v6, v5

    .line 148
    :cond_3
    move-object v9, v2

    .line 149
    .local v9, "timeVal":Ljava/lang/String;
    const/4 v10, 0x0

    .line 150
    .local v10, "tempOffset":Ljava/lang/String;
    const/4 v11, 0x0

    if-eqz v7, :cond_4

    .line 151
    :try_start_0
    invoke-virtual {v2, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 152
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    goto :goto_0

    .line 294
    .end local v9    # "timeVal":Ljava/lang/String;
    .end local v10    # "tempOffset":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    goto/16 :goto_c

    .line 290
    :catch_1
    move-exception v0

    move-object v8, v0

    goto/16 :goto_d

    .line 155
    .restart local v9    # "timeVal":Ljava/lang/String;
    .restart local v10    # "tempOffset":Ljava/lang/String;
    :cond_4
    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_5

    .line 158
    const-string v8, "The length of the TM datatype value does not conform to an allowable format. Format should conform to HH[MM[SS[.S[S[S[S]]]]]][+/-ZZZZ]"

    .line 157
    nop

    .line 160
    .local v8, "msg":Ljava/lang/String;
    new-instance v11, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v11, v8}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 161
    .local v11, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v11

    .line 164
    .end local v8    # "msg":Ljava/lang/String;
    .end local v11    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_5
    const/16 v12, 0x8

    if-eq v3, v8, :cond_7

    .line 167
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v12, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xb

    if-le v13, v14, :cond_7

    .line 169
    :cond_6
    const-string v8, "The length of the TM datatype value does not conform to an allowable format. Format should conform to HH[MM[SS[.S[S[S[S]]]]]][+/-ZZZZ]"

    .line 168
    nop

    .line 171
    .restart local v8    # "msg":Ljava/lang/String;
    new-instance v11, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v11, v8}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v11    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v11

    .line 176
    .end local v8    # "msg":Ljava/lang/String;
    .end local v11    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_7
    const/4 v13, 0x6

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-ne v3, v8, :cond_8

    .line 179
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v15, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v14, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v13, :cond_8

    .line 181
    const-string v8, "The length of the TM datatype value does not conform to an allowable format. Format should conform to HH[MM[SS[.S[S[S[S]]]]]][+/-ZZZZ]"

    .line 180
    nop

    .line 183
    .restart local v8    # "msg":Ljava/lang/String;
    new-instance v11, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v11, v8}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v11    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v11

    .line 189
    .end local v8    # "msg":Ljava/lang/String;
    .end local v11    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v12, 0x17

    if-lt v8, v15, :cond_b

    .line 192
    invoke-virtual {v9, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 194
    .local v8, "hrInt":I
    if-ltz v8, :cond_a

    if-le v8, v12, :cond_9

    goto :goto_1

    .line 199
    :cond_9
    iput v8, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->hour:I

    .line 199
    .end local v8    # "hrInt":I
    goto :goto_2

    .line 195
    .restart local v8    # "hrInt":I
    :cond_a
    :goto_1
    const-string v11, "The hour value of the TM datatype must be >=0 and <=23"

    .line 196
    .local v11, "msg":Ljava/lang/String;
    new-instance v12, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v12, v11}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 197
    .local v12, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v12

    .line 202
    .end local v8    # "hrInt":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_b
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v12, 0x3b

    if-lt v8, v14, :cond_e

    .line 206
    invoke-virtual {v9, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 208
    .local v8, "minInt":I
    if-ltz v8, :cond_d

    if-le v8, v12, :cond_c

    goto :goto_3

    .line 213
    :cond_c
    iput v8, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->minute:I

    .line 213
    .end local v8    # "minInt":I
    goto :goto_4

    .line 209
    .restart local v8    # "minInt":I
    :cond_d
    :goto_3
    const-string v11, "The minute value of the TM datatype must be >=0 and <=59"

    .line 210
    .restart local v11    # "msg":Ljava/lang/String;
    new-instance v12, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v12, v11}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v12    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v12

    .line 216
    .end local v8    # "minInt":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_e
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v13, :cond_11

    .line 220
    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 222
    .local v8, "secInt":I
    if-ltz v8, :cond_10

    if-le v8, v12, :cond_f

    goto :goto_5

    .line 227
    :cond_f
    iput v8, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->second:I

    .line 227
    .end local v8    # "secInt":I
    goto :goto_6

    .line 223
    .restart local v8    # "secInt":I
    :cond_10
    :goto_5
    const-string v11, "The seconds value of the TM datatype must be >=0 and <=59"

    .line 224
    .restart local v11    # "msg":Ljava/lang/String;
    new-instance v12, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v12, v11}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v12    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v12

    .line 230
    .end local v8    # "secInt":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_11
    :goto_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v12, 0x8

    if-lt v8, v12, :cond_14

    .line 234
    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 236
    .local v8, "fract":F
    const/4 v12, 0x0

    cmpg-float v12, v8, v12

    if-ltz v12, :cond_13

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v8, v12

    if-ltz v12, :cond_12

    goto :goto_7

    .line 241
    :cond_12
    iput v8, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->fractionOfSec:F

    .line 241
    .end local v8    # "fract":F
    goto :goto_8

    .line 237
    .restart local v8    # "fract":F
    :cond_13
    :goto_7
    const-string v11, "The fractional second value of the TM datatype must be >= 0 and < 1"

    .line 238
    .restart local v11    # "msg":Ljava/lang/String;
    new-instance v12, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v12, v11}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v12    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v12

    .line 245
    .end local v8    # "fract":F
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_14
    :goto_8
    const/4 v8, 0x1

    if-eqz v7, :cond_19

    .line 248
    iput-boolean v11, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    .line 250
    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 253
    .local v12, "tempOffsetNoS":Ljava/lang/String;
    invoke-virtual {v12, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 255
    .local v11, "offsetInt":I
    if-ltz v11, :cond_18

    const/16 v13, 0x17

    if-le v11, v13, :cond_15

    goto :goto_a

    .line 262
    :cond_15
    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v11, v13

    .line 264
    if-ltz v11, :cond_17

    const/16 v13, 0x3b

    if-le v11, v13, :cond_16

    goto :goto_9

    .line 270
    :cond_16
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    .line 272
    const/4 v13, -0x1

    if-eq v5, v13, :cond_19

    .line 273
    iget v14, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    mul-int/2addr v14, v13

    iput v14, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->offSet:I

    .line 273
    .end local v11    # "offsetInt":I
    .end local v12    # "tempOffsetNoS":Ljava/lang/String;
    goto :goto_b

    .line 265
    .restart local v11    # "offsetInt":I
    .restart local v12    # "tempOffsetNoS":Ljava/lang/String;
    :cond_17
    :goto_9
    const-string v8, "The GMT offset minute value of the TM datatype must be >=0 and <=59"

    .line 266
    .local v8, "msg":Ljava/lang/String;
    new-instance v13, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v13, v8}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 267
    .local v13, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v13

    .line 256
    .end local v8    # "msg":Ljava/lang/String;
    .end local v13    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_18
    :goto_a
    const-string v8, "The GMT offset hour value of the TM datatype must be >=0 and <=23"

    .line 257
    .restart local v8    # "msg":Ljava/lang/String;
    new-instance v13, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v13, v8}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v13    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v13

    .line 280
    .end local v8    # "msg":Ljava/lang/String;
    .end local v11    # "offsetInt":I
    .end local v12    # "tempOffsetNoS":Ljava/lang/String;
    .end local v13    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_19
    :goto_b
    if-nez v7, :cond_1a

    .line 281
    iput-boolean v8, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->omitOffsetFg:Z

    .line 287
    :cond_1a
    iput-object v9, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v9    # "timeVal":Ljava/lang/String;
    .end local v10    # "tempOffset":Ljava/lang/String;
    goto :goto_e

    .line 294
    :goto_c
    nop

    .line 295
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v9, v8}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 290
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_d
    nop

    .line 291
    .local v8, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v8

    .line 300
    .end local v3    # "d":I
    .end local v4    # "sp":I
    .end local v5    # "sm":I
    .end local v6    # "indexOfSign":I
    .end local v7    # "offsetExists":Z
    .end local v8    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_1b
    iput-object v2, v1, Lca/uhn/hl7v2/model/primitive/CommonTM;->value:Ljava/lang/String;

    .line 302
    :goto_e
    return-void
.end method

.method public setValue(Ljava/util/Calendar;)V
    .locals 6
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 567
    if-nez p1, :cond_0

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 569
    return-void

    .line 572
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 573
    .local v0, "hr":I
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 574
    .local v1, "min":I
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 575
    .local v2, "sec":F
    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourMinSecondPrecision(IIF)V

    .line 578
    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0x36ee80

    div-int/2addr v4, v5

    .line 579
    .local v4, "hourOffset":I
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const v5, 0xea60

    div-int/2addr v3, v5

    rem-int/lit8 v3, v3, 0x3c

    .line 580
    .local v3, "minuteOffset":I
    mul-int/lit8 v5, v4, 0x64

    add-int/2addr v5, v3

    .line 581
    .local v5, "zoneOffset":I
    invoke-virtual {p0, v5}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setOffset(I)V

    .line 582
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

    .line 595
    if-nez p1, :cond_0

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 597
    return-void

    .line 600
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 601
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 602
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/util/Calendar;)V

    .line 603
    return-void
.end method

.method public setValueToMinute(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 507
    if-nez p1, :cond_0

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 509
    return-void

    .line 512
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 513
    .local v0, "hr":I
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 514
    .local v1, "min":I
    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourMinutePrecision(II)V

    .line 515
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

    .line 527
    if-nez p1, :cond_0

    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 529
    return-void

    .line 532
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 533
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 534
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValueToMinute(Ljava/util/Calendar;)V

    .line 535
    return-void
.end method

.method public setValueToSecond(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 546
    if-nez p1, :cond_0

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 548
    return-void

    .line 551
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 552
    .local v0, "hr":I
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 553
    .local v1, "min":I
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 555
    .local v2, "sec":I
    int-to-float v3, v2

    invoke-virtual {p0, v0, v1, v3}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setHourMinSecondPrecision(IIF)V

    .line 556
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

    .line 615
    if-nez p1, :cond_0

    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValue(Ljava/lang/String;)V

    .line 617
    return-void

    .line 620
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 621
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 622
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonTM;->setValueToSecond(Ljava/util/Calendar;)V

    .line 623
    return-void
.end method
