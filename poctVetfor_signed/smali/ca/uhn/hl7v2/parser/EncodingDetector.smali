.class public final Lca/uhn/hl7v2/parser/EncodingDetector;
.super Ljava/lang/Object;
.source "EncodingDetector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static assertEr7Encoded(Ljava/lang/String;)V
    .locals 8
    .param p0, "theMessage"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The message is less than 4 characters long"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const-string v0, "MSH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The message does not start with MSH"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 62
    .local v2, "fourthChar":C
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "\r"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    .local v3, "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_5

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "nextFieldDelimLoc":I
    const/4 v1, 0x0

    .line 76
    .local v1, "i":I
    :goto_0
    const/16 v4, 0xb

    if-lt v1, v4, :cond_3

    .line 82
    .end local v1    # "i":I
    return-void

    .line 77
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 78
    if-gez v0, :cond_4

    .line 79
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Expected to find required field MSH-12"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "nextFieldDelimLoc":I
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 67
    invoke-static {v4}, Lca/uhn/hl7v2/parser/PipeParser;->stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v1, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v2, :cond_2

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    .line 70
    const-string v6, "The 4th character should have been a %c, but it was a %c"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v7, v5

    .line 69
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static assertXmlEncoded(Ljava/lang/String;)V
    .locals 2
    .param p0, "theMessage"    # Ljava/lang/String;

    .line 106
    const-string v0, "MSH.1>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected to find MSH.1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const-string v0, "MSH.2>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected to find MSH.2"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    return-void
.end method

.method public static isEr7Encoded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "theMessage"    # Ljava/lang/String;

    .line 92
    :try_start_0
    invoke-static {p0}, Lca/uhn/hl7v2/parser/EncodingDetector;->assertEr7Encoded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v0, 0x1

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static isXmlEncoded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "theMessage"    # Ljava/lang/String;

    .line 121
    :try_start_0
    invoke-static {p0}, Lca/uhn/hl7v2/parser/EncodingDetector;->assertXmlEncoded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v0, 0x1

    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
