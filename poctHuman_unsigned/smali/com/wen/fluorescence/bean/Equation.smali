.class public Lcom/wen/fluorescence/bean/Equation;
.super Ljava/lang/Object;
.source "Equation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3483a78cb6ddc3ceL


# instance fields
.field public E1_1:D

.field public E1_2:D

.field public E1_3:D

.field public E1_4:D

.field public E1_5:D

.field public E1_6:D

.field public E2_1:D

.field public E2_2:D

.field public E2_3:D

.field public E2_4:D

.field public E2_5:D

.field public E2_6:D

.field public ItemIndex:I

.field public childCustomerCode:I

.field public customerCode:I

.field public flag:I

.field private id:I

.field public m_barCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCustomerCode()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    return v0
.end method

.method public getCustomerCode()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    return v0
.end method

.method public getE1_1()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E1_1:D

    return-wide v0
.end method

.method public getE1_2()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E1_2:D

    return-wide v0
.end method

.method public getE1_3()D
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E1_3:D

    return-wide v0
.end method

.method public getE1_4()D
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E1_4:D

    return-wide v0
.end method

.method public getE1_5()D
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E1_5:D

    return-wide v0
.end method

.method public getE1_6()D
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E1_6:D

    return-wide v0
.end method

.method public getE2_1()D
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E2_1:D

    return-wide v0
.end method

.method public getE2_2()D
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E2_2:D

    return-wide v0
.end method

.method public getE2_3()D
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E2_3:D

    return-wide v0
.end method

.method public getE2_4()D
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E2_4:D

    return-wide v0
.end method

.method public getE2_5()D
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E2_5:D

    return-wide v0
.end method

.method public getE2_6()D
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/wen/fluorescence/bean/Equation;->E2_6:D

    return-wide v0
.end method

.method public getFlag()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/wen/fluorescence/bean/Equation;->flag:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/wen/fluorescence/bean/Equation;->id:I

    return v0
.end method

.method public getItemIndex()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/wen/fluorescence/bean/Equation;->ItemIndex:I

    return v0
.end method

.method public getM_barCode()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/wen/fluorescence/bean/Equation;->m_barCode:Ljava/lang/String;

    return-object v0
.end method

.method public println()V
    .locals 4

    .line 179
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WW***********<<\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/Equation;->ItemIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a\u9879\u76ee\u4fe1\u606f\uff1a>>*************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u591a\u9879\u5f0f\u7cfb\u6570\u6807\u8bc6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/Equation;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6761\u5f62\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/bean/Equation;->m_barCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5ba2\u6237\u4ee3\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b50\u5ba2\u6237\u4ee3\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b1\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE1_1()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b1\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE1_2()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b1\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE1_3()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b1\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE1_4()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b1\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE1_5()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b1\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE1_6()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b2\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE2_1()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b2\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE2_2()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b2\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE2_3()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b2\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE2_4()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b2\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE2_5()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u7a0b2\u7cfb\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/bean/Equation;->getE2_6()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public setChildCustomerCode(I)V
    .locals 0
    .param p1, "childCustomerCode"    # I

    .line 79
    iput p1, p0, Lcom/wen/fluorescence/bean/Equation;->childCustomerCode:I

    .line 80
    return-void
.end method

.method public setCustomerCode(I)V
    .locals 0
    .param p1, "customerCode"    # I

    .line 71
    iput p1, p0, Lcom/wen/fluorescence/bean/Equation;->customerCode:I

    .line 72
    return-void
.end method

.method public setE1_1(D)V
    .locals 0
    .param p1, "e1_1"    # D

    .line 87
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E1_1:D

    .line 88
    return-void
.end method

.method public setE1_2(D)V
    .locals 0
    .param p1, "e1_2"    # D

    .line 95
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E1_2:D

    .line 96
    return-void
.end method

.method public setE1_3(D)V
    .locals 0
    .param p1, "e1_3"    # D

    .line 103
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E1_3:D

    .line 104
    return-void
.end method

.method public setE1_4(D)V
    .locals 0
    .param p1, "e1_4"    # D

    .line 111
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E1_4:D

    .line 112
    return-void
.end method

.method public setE1_5(D)V
    .locals 0
    .param p1, "e1_5"    # D

    .line 119
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E1_5:D

    .line 120
    return-void
.end method

.method public setE1_6(D)V
    .locals 0
    .param p1, "e1_6"    # D

    .line 127
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E1_6:D

    .line 128
    return-void
.end method

.method public setE2_1(D)V
    .locals 0
    .param p1, "e2_1"    # D

    .line 135
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E2_1:D

    .line 136
    return-void
.end method

.method public setE2_2(D)V
    .locals 0
    .param p1, "e2_2"    # D

    .line 143
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E2_2:D

    .line 144
    return-void
.end method

.method public setE2_3(D)V
    .locals 0
    .param p1, "e2_3"    # D

    .line 151
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E2_3:D

    .line 152
    return-void
.end method

.method public setE2_4(D)V
    .locals 0
    .param p1, "e2_4"    # D

    .line 159
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E2_4:D

    .line 160
    return-void
.end method

.method public setE2_5(D)V
    .locals 0
    .param p1, "e2_5"    # D

    .line 167
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E2_5:D

    .line 168
    return-void
.end method

.method public setE2_6(D)V
    .locals 0
    .param p1, "e2_6"    # D

    .line 175
    iput-wide p1, p0, Lcom/wen/fluorescence/bean/Equation;->E2_6:D

    .line 176
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 55
    iput p1, p0, Lcom/wen/fluorescence/bean/Equation;->flag:I

    .line 56
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 47
    iput p1, p0, Lcom/wen/fluorescence/bean/Equation;->id:I

    .line 48
    return-void
.end method

.method public setItemIndex(I)V
    .locals 0
    .param p1, "itemIndex"    # I

    .line 39
    iput p1, p0, Lcom/wen/fluorescence/bean/Equation;->ItemIndex:I

    .line 40
    return-void
.end method

.method public setM_barCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "m_barCode"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/wen/fluorescence/bean/Equation;->m_barCode:Ljava/lang/String;

    .line 64
    return-void
.end method
