.class public Lcom/wen/fluorescence/bean/IDChipInfoExN;
.super Ljava/lang/Object;
.source "IDChipInfoExN.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3483a78cb6ddc3ceL


# instance fields
.field public A0:[D

.field public A1:[D

.field public AlgorithmType:I

.field public FileFlag:B

.field public FileVersion:B

.field public ItemIndex:I

.field public cc:[D

.field public conclusionCounts:I

.field public id:I

.field public intervalDensity:[D

.field public l_count:I

.field public m_barCode:Ljava/lang/String;

.field public m_c:I

.field public m_calcMethod:I

.field public m_decimalDigits:I

.field public m_dimen:[I

.field public m_dimension:I

.field public m_divisionIndex:I

.field public m_printData:[[Ljava/lang/String;

.field public m_projectCount:I

.field public m_projectName:[Ljava/lang/String;

.field public m_projectStart:I

.field public m_t:I

.field public m_testBound:[[D

.field public m_unit:Ljava/lang/String;

.field public m_unlog:I

.field public resultOfDensity:[Ljava/lang/String;

.field public sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

.field public tc:[D

.field public thresholdValue:D

.field public thresholdValueResult:[Ljava/lang/String;

.field public x_isOtherAlglog:I

.field public y_isOtherAlglog:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_barCode:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unit:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    .line 47
    iput-object v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    .line 60
    const/16 v0, 0x10

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    .line 61
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    .line 63
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    .line 64
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    .line 66
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    .line 67
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    iput-object v1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    .line 69
    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, D

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    .line 70
    const/4 v1, 0x0

    move v2, v1

    .line 70
    .local v2, "i":I
    :goto_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-ge v2, v0, :cond_0

    .line 71
    iget-object v6, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v6, v6, v2

    aput-wide v3, v6, v1

    .line 72
    iget-object v6, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v6, v6, v2

    aput-wide v3, v6, v5

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_0
    filled-new-array {v0, v0}, [I

    move-result-object v2

    const-class v6, Ljava/lang/String;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    .line 76
    move v2, v1

    .line 76
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 77
    iget-object v6, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, ""

    aput-object v7, v6, v1

    .line 78
    iget-object v6, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, ""

    aput-object v7, v6, v5

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    .end local v2    # "i":I
    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    .line 82
    move v2, v1

    .line 82
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 83
    iget-object v5, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x6

    new-array v5, v2, [D

    iput-object v5, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    .line 87
    move v5, v1

    .line 87
    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_3

    .line 88
    iget-object v6, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->intervalDensity:[D

    aput-wide v3, v6, v5

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 91
    .end local v5    # "i":I
    :cond_3
    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    .line 92
    move v3, v1

    .line 92
    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_4

    .line 93
    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->resultOfDensity:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 96
    .end local v3    # "i":I
    :cond_4
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    .line 97
    move v2, v1

    .line 97
    .restart local v2    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 98
    iget-object v3, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 100
    .end local v2    # "i":I
    :cond_5
    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    .line 101
    move v0, v1

    .line 101
    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 102
    move v2, v1

    .line 102
    .local v2, "j":I
    :goto_7
    iget-object v3, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 103
    iget-object v3, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    aput-object v4, v3, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 101
    .end local v2    # "j":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 106
    .end local v0    # "i":I
    :cond_7
    return-void
.end method


# virtual methods
.method public println()V
    .locals 8

    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WW***********<<\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->ItemIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a\u9879\u76ee\u4fe1\u606f\uff1a>>*************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9879\u76ee\u5f00\u59cb\u6807\u5fd7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6761\u7801\u6279\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_barCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6587\u4ef6\u6807\u8bc6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->FileFlag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6587\u4ef6\u7248\u672c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->FileVersion:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9879\u76ee\u540d\u79f0\u4e2a\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b97\u6cd5\u7c7b\u578b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->AlgorithmType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba1\u7b97\u65b9\u5f0f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_calcMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t(\u4ec5\u591a\u9879\u5361\u4f7f\u7528):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C(\u4ec5\u591a\u9879\u5361\u4f7f\u7528):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    move v1, v0

    .line 120
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 121
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9879\u76ee\u540d\u79f0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_projectName:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6d53\u5ea6\u5355\u4f4d:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7ed3\u679c\u5c0f\u6570\u70b9\u4f4d:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_decimalDigits:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9608\u503c:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValue:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f4e\u4e8e\u9608\u503c\u663e\u793a\u7ed3\u679c\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9ad8\u4e8e\u9608\u503c\u663e\u793a\u7ed3\u679c\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->thresholdValueResult:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    move v1, v0

    .line 130
    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 131
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====\u6837\u672c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->sampleCoefficientArrays:[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->print()V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    .end local v1    # "i":I
    :cond_1
    move v1, v0

    .line 135
    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 136
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u68c0\u6d4b\u8303\u56f4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_testBound:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v3

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    .end local v1    # "i":I
    :cond_2
    move v1, v0

    .line 139
    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 140
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6253\u5370\u663e\u793a\u9644\u52a0\u4fe1\u606f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_printData:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 144
    .end local v1    # "i":I
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WW**********<<\u65b9\u7a0b\u4fe1\u606f>>***********"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u662f\u5426\u53d6\u5bf9\u6570 (1\uff1a\u53d6\u5bf9\u6570 0\uff1a\u4e0d\u53d6\u5bf9\u6570):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_unlog:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u662f\u5426\u5206\u6bb5 (1\uff1a\u5206\u6bb5 0\uff1a\u4e0d\u5206\u6bb5):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimension:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5206\u6bb5\u70b9:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_divisionIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u66f2\u7ebf1\u5e42:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u66f2\u7ebf2\u5e42:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->m_dimen:[I

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    move v1, v0

    .line 150
    .local v1, "j":I
    :goto_4
    iget-object v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 151
    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->l_count:I

    if-lt v1, v2, :cond_4

    .line 152
    goto :goto_5

    .line 154
    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x\u503c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->cc:[D

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "  y\u503c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->tc:[D

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 158
    .end local v1    # "j":I
    :cond_5
    :goto_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WW**********<<\u591a\u9879\u5f0f\u7cfb\u6570\u4fe1\u606f>>***********"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    move v1, v0

    .line 159
    .local v1, "i":I
    :goto_6
    const/4 v2, 0x6

    if-ge v1, v2, :cond_6

    .line 160
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65b9\u7a0b1\u7cfb\u6570:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  \u503c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 162
    .end local v1    # "i":I
    :cond_6
    nop

    .line 162
    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_7

    .line 163
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65b9\u7a0b2\u7cfb\u6570:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  \u503c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v5, v4, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 165
    .end local v0    # "i":I
    :cond_7
    return-void
.end method

.method public printlnEquation()V
    .locals 7

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WW**********<<\u591a\u9879\u5f0f\u7cfb\u6570\u4fe1\u606f>>***********"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    move v1, v0

    .line 169
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 170
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65b9\u7a0b1\u7cfb\u6570:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  \u503c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A0:[D

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_0
    nop

    .line 172
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 173
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65b9\u7a0b2\u7cfb\u6570:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  \u503c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN;->A1:[D

    aget-wide v5, v4, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
