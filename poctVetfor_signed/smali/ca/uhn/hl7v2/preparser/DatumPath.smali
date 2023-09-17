.class public Lca/uhn/hl7v2/preparser/DatumPath;
.super Ljava/lang/Object;
.source "DatumPath.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final s_maxSize:I = 0x6


# instance fields
.field protected m_path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/preparser/DatumPath;)V
    .locals 0
    .param p1, "other"    # Lca/uhn/hl7v2/preparser/DatumPath;

    .line 47
    invoke-direct {p0}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/preparser/DatumPath;->copy(Lca/uhn/hl7v2/preparser/DatumPath;)V

    .line 49
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 305
    new-instance v0, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v0}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    .line 306
    .local v0, "dp":Lca/uhn/hl7v2/preparser/DatumPath;
    const-string v1, "ZYX"

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/String;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 307
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 309
    new-instance v1, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v1}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    const/16 v2, -0x2a

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v1

    .line 311
    .local v1, "dp2":Lca/uhn/hl7v2/preparser/DatumPath;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 312
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 313
    return-void
.end method


# virtual methods
.method public add(I)Lca/uhn/hl7v2/preparser/DatumPath;
    .locals 1
    .param p1, "new_value"    # I

    .line 208
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 213
    return-object p0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lca/uhn/hl7v2/preparser/DatumPath;
    .locals 1
    .param p1, "new_value"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 224
    return-object p0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public clear()Lca/uhn/hl7v2/preparser/DatumPath;
    .locals 1

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/preparser/DatumPath;->setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 261
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 266
    new-instance v0, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>(Lca/uhn/hl7v2/preparser/DatumPath;)V

    return-object v0
.end method

.method public copy(Lca/uhn/hl7v2/preparser/DatumPath;)V
    .locals 2
    .param p1, "other"    # Lca/uhn/hl7v2/preparser/DatumPath;

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/preparser/DatumPath;->setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 78
    const/4 v0, 0x0

    .line 78
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 80
    .end local v0    # "i":I
    return-void

    .line 79
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/Object;)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 55
    :cond_1
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/preparser/DatumPath;

    .line 56
    .local v0, "other":Lca/uhn/hl7v2/preparser/DatumPath;
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    iget-object v2, v0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I

    .line 131
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "gottenObj":Ljava/lang/Object;
    if-nez p1, :cond_0

    .line 133
    return-object v0

    .line 135
    :cond_0
    return-object v0
.end method

.method public numbersLessThan(Lca/uhn/hl7v2/preparser/DatumPath;)Z
    .locals 8
    .param p1, "other"    # Lca/uhn/hl7v2/preparser/DatumPath;

    .line 287
    new-instance v0, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>(Lca/uhn/hl7v2/preparser/DatumPath;)V

    .line 288
    .local v0, "extendedCopyThis":Lca/uhn/hl7v2/preparser/DatumPath;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 290
    new-instance v2, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v2, p1}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>(Lca/uhn/hl7v2/preparser/DatumPath;)V

    .line 291
    .local v2, "extendedCopyOther":Lca/uhn/hl7v2/preparser/DatumPath;
    invoke-virtual {v2, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "lessThan":Z
    const/4 v4, 0x1

    .line 294
    .local v4, "i":I
    :goto_0
    if-nez v3, :cond_2

    if-lt v4, v1, :cond_0

    .line 294
    .end local v4    # "i":I
    goto :goto_2

    .line 295
    .restart local v4    # "i":I
    :cond_0
    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 296
    .local v5, "this_i":I
    invoke-virtual {v2, v4}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 297
    .local v6, "other_i":I
    if-ge v5, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    or-int/2addr v3, v7

    .line 294
    .end local v5    # "this_i":I
    .end local v6    # "other_i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    .end local v4    # "i":I
    :cond_2
    :goto_2
    return v3
.end method

.method public set(ILjava/lang/Object;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "new_value"    # Ljava/lang/Object;

    .line 102
    if-ltz p1, :cond_3

    iget-object v0, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 103
    if-eqz p2, :cond_2

    .line 104
    if-nez p1, :cond_0

    .line 105
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    nop

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;
    .locals 4
    .param p1, "newSize"    # I

    .line 234
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 236
    .local v0, "oldSize":I
    :goto_0
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, p1, :cond_6

    .line 240
    :goto_1
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, p1, :cond_5

    .line 244
    if-le p1, v0, :cond_4

    .line 246
    move v1, v0

    .line 246
    .local v1, "i":I
    :goto_2
    if-lt v1, p1, :cond_0

    .line 246
    .end local v1    # "i":I
    goto :goto_6

    .line 247
    .restart local v1    # "i":I
    :cond_0
    if-nez v1, :cond_1

    .line 248
    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->set(ILjava/lang/Object;)V

    goto :goto_5

    .line 250
    :cond_1
    if-eq v1, v2, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->set(ILjava/lang/Object;)V

    .line 246
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 254
    .end local v1    # "i":I
    :cond_4
    :goto_6
    return-object p0

    .line 241
    :cond_5
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    iget-object v3, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 237
    :cond_6
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .line 138
    iget-object v0, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startsWith(Lca/uhn/hl7v2/preparser/DatumPath;)Z
    .locals 4
    .param p1, "prefix"    # Lca/uhn/hl7v2/preparser/DatumPath;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "ret":Z
    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v1

    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 67
    const/4 v0, 0x1

    .line 68
    const/4 v1, 0x0

    .line 68
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 68
    .end local v1    # "i":I
    goto :goto_1

    .line 69
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "strbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lca/uhn/hl7v2/preparser/DatumPath;->m_path:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_6

    .line 163
    invoke-virtual {p0}, Lca/uhn/hl7v2/preparser/DatumPath;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/preparser/DatumPath;

    .line 164
    .local v1, "extendedCopy":Lca/uhn/hl7v2/preparser/DatumPath;
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->setSize(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 166
    const/4 v3, 0x0

    .line 166
    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lca/uhn/hl7v2/preparser/DatumPath;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 174
    .end local v1    # "extendedCopy":Lca/uhn/hl7v2/preparser/DatumPath;
    .end local v3    # "i":I
    nop

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 167
    .restart local v1    # "extendedCopy":Lca/uhn/hl7v2/preparser/DatumPath;
    .restart local v3    # "i":I
    :cond_0
    if-nez v3, :cond_1

    .line 168
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 169
    :cond_1
    if-eq v3, v2, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 172
    :cond_3
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 170
    :cond_4
    :goto_1
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "extendedCopy":Lca/uhn/hl7v2/preparser/DatumPath;
    .end local v3    # "i":I
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method
