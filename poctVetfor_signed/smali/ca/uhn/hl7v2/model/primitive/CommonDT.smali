.class public Lca/uhn/hl7v2/model/primitive/CommonDT;
.super Ljava/lang/Object;
.source "CommonDT.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private day:I

.field private month:I

.field private value:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->value:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->year:I

    .line 70
    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->month:I

    .line 71
    iput v0, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->day:I

    .line 72
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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setValue(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static toHl7DTFormat(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 6
    .param p0, "cal"    # Ljava/util/GregorianCalendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 368
    const-string v0, ""

    .line 372
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 373
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 374
    .local v2, "calYear":I
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 375
    .local v3, "calMonth":I
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 376
    .local v1, "calDay":I
    new-instance v4, Lca/uhn/hl7v2/model/primitive/CommonDT;

    invoke-direct {v4}, Lca/uhn/hl7v2/model/primitive/CommonDT;-><init>()V

    .line 377
    .local v4, "dt":Lca/uhn/hl7v2/model/primitive/CommonDT;
    invoke-virtual {v4, v2, v3, v1}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setYearMonthDayPrecision(III)V

    .line 378
    invoke-virtual {v4}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getValue()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 379
    .end local v1    # "calDay":I
    .end local v2    # "calYear":I
    .end local v3    # "calMonth":I
    .end local v4    # "dt":Lca/uhn/hl7v2/model/primitive/CommonDT;
    nop

    .line 388
    return-object v0

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 381
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 382
    .local v1, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v1
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .line 359
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 352
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->month:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueAsCalendar()Ljava/util/Calendar;
    .locals 4

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 129
    .local v0, "retVal":Ljava/util/Calendar;
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getDay()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 130
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getMonth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getYear()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 134
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 137
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 139
    return-object v0
.end method

.method public getValueAsDate()Ljava/util/Date;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->getValueAsCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 345
    iget v0, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->year:I

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 7
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 160
    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 163
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 169
    const-string v1, "The length of the DT datatype value does not conform to an allowable format. Format should conform to YYYY[MM[DD]]"

    .line 168
    nop

    .line 171
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v2

    .line 175
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x1

    if-lt v2, v5, :cond_1

    .line 177
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 180
    .local v2, "yrInt":I
    invoke-virtual {v0, v2, v1, v6}, Ljava/util/GregorianCalendar;->set(III)V

    .line 181
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    .line 182
    iput v2, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->year:I

    .line 185
    .end local v2    # "yrInt":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_2

    .line 187
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "mnthInt":I
    iget v2, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->year:I

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v2, v5, v6}, Ljava/util/GregorianCalendar;->set(III)V

    .line 191
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    .line 192
    iput v1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->month:I

    .line 196
    .end local v1    # "mnthInt":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 198
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "dayInt":I
    iget v2, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->year:I

    iget v3, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->month:I

    sub-int/2addr v3, v6

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/GregorianCalendar;->set(III)V

    .line 203
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    .line 204
    iput v1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->day:I

    .line 207
    .end local v1    # "dayInt":I
    :cond_3
    iput-object p1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->value:Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0

    .line 220
    .end local v0    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_4
    iput-object p1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->value:Ljava/lang/String;

    .line 223
    :goto_0
    return-void
.end method

.method public setValue(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "theCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setValue(Ljava/lang/String;)V

    .line 94
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 98
    .local v1, "yr":I
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 99
    .local v2, "mnth":I
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 100
    .local v0, "dy":I
    invoke-virtual {p0, v1, v2, v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setYearMonthDayPrecision(III)V

    .line 101
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

    .line 112
    if-nez p1, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setValue(Ljava/lang/String;)V

    .line 114
    return-void

    .line 117
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 119
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/primitive/CommonDT;->setValue(Ljava/util/Calendar;)V

    .line 120
    return-void
.end method

.method public setYearMonthDayPrecision(III)V
    .locals 4
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .param p3, "dy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 305
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 306
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 311
    const-string v1, "The input year value must be four digits long"

    .line 312
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 313
    .local v2, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v2

    .line 316
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_0
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, p1, v1, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 317
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    .line 318
    iput p1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->year:I

    .line 319
    iput p2, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->month:I

    .line 320
    iput p3, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->day:I

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lca/uhn/hl7v2/model/DataTypeUtil;->preAppendZeroes(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v2}, Lca/uhn/hl7v2/model/DataTypeUtil;->preAppendZeroes(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->value:Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    nop

    .line 332
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 325
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setYearMonthPrecision(II)V
    .locals 4
    .param p1, "yr"    # I
    .param p2, "mnth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 270
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 271
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 275
    const-string v1, "The input year value must be four digits long"

    .line 276
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v2

    .line 281
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_0
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 282
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    .line 283
    iput p1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->year:I

    .line 284
    iput p2, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->month:I

    .line 285
    iput v1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->day:I

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lca/uhn/hl7v2/model/DataTypeUtil;->preAppendZeroes(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->value:Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    nop

    .line 296
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method

.method public setYearPrecision(I)V
    .locals 4
    .param p1, "yr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 232
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 233
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 238
    const-string v1, "The input year value must be four digits long"

    .line 239
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v2

    .line 244
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "e":Lca/uhn/hl7v2/model/DataTypeException;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 245
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    .line 246
    iput p1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->year:I

    .line 247
    iput v1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->month:I

    .line 248
    iput v1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->day:I

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lca/uhn/hl7v2/model/primitive/CommonDT;->value:Ljava/lang/String;
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    nop

    .line 260
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/model/DataTypeException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    throw v0
.end method
