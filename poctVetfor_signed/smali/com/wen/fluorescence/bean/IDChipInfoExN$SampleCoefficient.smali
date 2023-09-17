.class public Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;
.super Ljava/lang/Object;
.source "IDChipInfoExN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/bean/IDChipInfoExN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SampleCoefficient"
.end annotation


# instance fields
.field private CoefficientSubHight:D

.field private CoefficientSubLow:D

.field private CoefficientSubMiddle:D

.field private SampleCoeff:D

.field private SampleTypeFactor:I

.field private densitySubHight:D

.field private densitySubLow:D

.field private sampleSubMark:I

.field final synthetic this$0:Lcom/wen/fluorescence/bean/IDChipInfoExN;


# direct methods
.method public constructor <init>(Lcom/wen/fluorescence/bean/IDChipInfoExN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/bean/IDChipInfoExN;

    .line 177
    iput-object p1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->this$0:Lcom/wen/fluorescence/bean/IDChipInfoExN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoefficientSubHight()D
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->CoefficientSubHight:D

    return-wide v0
.end method

.method public getCoefficientSubLow()D
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->CoefficientSubLow:D

    return-wide v0
.end method

.method public getCoefficientSubMiddle()D
    .locals 2

    .line 261
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->CoefficientSubMiddle:D

    return-wide v0
.end method

.method public getDensitySubHight()D
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->densitySubHight:D

    return-wide v0
.end method

.method public getDensitySubLow()D
    .locals 2

    .line 237
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->densitySubLow:D

    return-wide v0
.end method

.method public getSampleCoeff()D
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleCoeff:D

    return-wide v0
.end method

.method public getSampleSubMark()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->sampleSubMark:I

    return v0
.end method

.method public getSampleTypeFactor()I
    .locals 2

    .line 201
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 202
    iget v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleTypeFactor:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 203
    const/16 v0, 0x21

    return v0

    .line 204
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleTypeFactor:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    .line 205
    const/16 v0, 0x22

    return v0

    .line 206
    :cond_1
    iget v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleTypeFactor:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_2

    .line 207
    const/16 v0, 0x1d

    return v0

    .line 209
    :cond_2
    iget v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleTypeFactor:I

    return v0

    .line 212
    :cond_3
    iget v0, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleTypeFactor:I

    return v0
.end method

.method public print()V
    .locals 4

    .line 189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6837\u672c\u7c7b\u578b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleTypeFactor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6837\u672c\u7cfb\u6570\u5206\u6bb5\u6807\u5fd7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->sampleSubMark:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u5206\u6bb5\u6837\u672c\u7cfb\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleCoeff:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u6bb5\u4f4e\u503c\u6d53\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->densitySubLow:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u6bb5\u9ad8\u503c\u6d53\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->densitySubHight:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u6bb5\u4f4e\u503c\u7cfb\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->CoefficientSubLow:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u6bb5\u4e2d\u503c\u7cfb\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->CoefficientSubMiddle:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u6bb5\u9ad8\u503c\u7cfb\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->CoefficientSubHight:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setCoefficientSubHight(D)V
    .locals 0
    .param p1, "coefficientSubHight"    # D

    .line 273
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->CoefficientSubHight:D

    .line 274
    return-void
.end method

.method public setCoefficientSubLow(D)V
    .locals 0
    .param p1, "coefficientSubLow"    # D

    .line 257
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->CoefficientSubLow:D

    .line 258
    return-void
.end method

.method public setCoefficientSubMiddle(D)V
    .locals 0
    .param p1, "coefficientSubMiddle"    # D

    .line 265
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->CoefficientSubMiddle:D

    .line 266
    return-void
.end method

.method public setDensitySubHight(D)V
    .locals 0
    .param p1, "densitySubHight"    # D

    .line 249
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->densitySubHight:D

    .line 250
    return-void
.end method

.method public setDensitySubLow(D)V
    .locals 0
    .param p1, "densitySubLow"    # D

    .line 241
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->densitySubLow:D

    .line 242
    return-void
.end method

.method public setSampleCoeff(D)V
    .locals 0
    .param p1, "sampleCoeff"    # D

    .line 233
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleCoeff:D

    .line 234
    return-void
.end method

.method public setSampleSubMark(I)V
    .locals 0
    .param p1, "sampleSubMark"    # I

    .line 225
    iput p1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->sampleSubMark:I

    .line 226
    return-void
.end method

.method public setSampleTypeFactor(I)V
    .locals 0
    .param p1, "sampleTypeFactor"    # I

    .line 217
    iput p1, p0, Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;->SampleTypeFactor:I

    .line 218
    return-void
.end method
