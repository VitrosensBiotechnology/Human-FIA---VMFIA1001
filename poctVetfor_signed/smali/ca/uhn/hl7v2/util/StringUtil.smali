.class public Lca/uhn/hl7v2/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "theLine"    # Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 35
    .local v0, "start":I
    move v1, v0

    .line 35
    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 37
    .local v2, "nextChar":C
    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 38
    nop

    .line 42
    .end local v2    # "nextChar":C
    :goto_1
    if-ne v1, v0, :cond_1

    .line 43
    return-object p0

    .line 45
    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 35
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static concatenate([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "array1"    # [Ljava/lang/String;
    .param p1, "array2"    # [Ljava/lang/String;

    .line 75
    if-nez p0, :cond_0

    return-object p1

    .line 76
    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 77
    :cond_1
    const/4 v0, 0x0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 78
    .local v1, "result":[Ljava/lang/String;
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    return-object v1
.end method

.method public static countLines(Ljava/lang/String;)I
    .locals 7
    .param p0, "theString"    # Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    .line 15
    .local v0, "retVal":I
    const/4 v1, 0x0

    .line 15
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 25
    .end local v1    # "i":I
    return v0

    .line 16
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 17
    .local v2, "nextChar":C
    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v1, :cond_1

    if-ne v2, v4, :cond_1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    .line 18
    goto :goto_2

    .line 20
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-ne v2, v4, :cond_3

    move v5, v6

    nop

    :cond_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_4

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 15
    .end local v2    # "nextChar":C
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 3
    .param p0, "theString"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 88
    return v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 91
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 97
    .end local v1    # "i":I
    return v0

    .line 92
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "theString"    # Ljava/lang/String;

    .line 104
    invoke-static {p0}, Lca/uhn/hl7v2/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "theString"    # Ljava/lang/String;
    .param p1, "theMatch"    # Ljava/lang/String;
    .param p2, "theReplacement"    # Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 65
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 65
    .local v1, "start":I
    const/4 v2, 0x0

    .line 66
    .local v2, "end":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 67
    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_0
.end method

.method public static validateNotEmpty(Ljava/lang/String;)V
    .locals 1
    .param p0, "theValue"    # Ljava/lang/String;

    .line 54
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    return-void

    .line 55
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
