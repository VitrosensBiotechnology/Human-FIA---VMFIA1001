.class public Lca/uhn/hl7v2/preparser/ER7;
.super Ljava/lang/Object;
.source "ER7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;,
        Lca/uhn/hl7v2/preparser/ER7$Handler;
    }
.end annotation


# static fields
.field static final segmentSeparators:Ljava/lang/String; = "\r\n\u000c"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 271
    const/4 v0, 0x1

    array-length v1, p0

    if-lt v1, v0, :cond_0

    .line 273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 277
    .local v0, "props":Ljava/util/Properties;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v2, "msgMask":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    new-instance v3, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v3}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ER7.parseMessage returned "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p0, v1

    invoke-static {v0, v2, v1}, Lca/uhn/hl7v2/preparser/ER7;->parseMessage(Ljava/util/Properties;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->list(Ljava/io/PrintStream;)V

    .line 283
    .end local v0    # "props":Ljava/util/Properties;
    .end local v2    # "msgMask":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_0
    return-void
.end method

.method protected static parseMSHSegmentWhole(Ljava/util/Properties;Ljava/util/List;Lca/uhn/hl7v2/parser/EncodingCharacters;Ljava/lang/String;)Z
    .locals 6
    .param p0, "props"    # Ljava/util/Properties;
    .param p2, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .param p3, "segment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/preparser/DatumPath;",
            ">;",
            "Lca/uhn/hl7v2/parser/EncodingCharacters;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 82
    .local p1, "msgMask":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    const/4 v0, 0x0

    move v1, v0

    .line 84
    .local v1, "ret":Z
    :try_start_0
    new-instance v2, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;

    invoke-direct {v2}, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;-><init>()V

    .line 85
    .local v2, "handler":Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;
    iput-object p0, v2, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_props:Ljava/util/Properties;

    .line 86
    iput-object p2, v2, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_encodingChars:Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 87
    const-string v3, "MSH"

    iput-object v3, v2, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_segmentId:Ljava/lang/String;

    .line 88
    iput v0, v2, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_segmentRepIdx:I

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iput-object p1, v2, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_msgMask:Ljava/util/List;

    goto :goto_0

    .line 92
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_msgMask:Ljava/util/List;

    .line 93
    iget-object v3, v2, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_msgMask:Ljava/util/List;

    new-instance v4, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v4}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setFieldSeparator(C)V

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v3, "nodeKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->putDatum(Ljava/util/List;Ljava/lang/String;)V

    .line 101
    const/4 v4, 0x4

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v4}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setComponentSeparator(C)V

    .line 102
    const/4 v4, 0x5

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v4}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setRepetitionSeparator(C)V

    .line 103
    const/4 v4, 0x6

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v4}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setEscapeCharacter(C)V

    .line 104
    const/4 v4, 0x7

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v4}, Lca/uhn/hl7v2/parser/EncodingCharacters;->setSubcomponentSeparator(C)V

    .line 105
    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/EncodingCharacters;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->putDatum(Ljava/util/List;Ljava/lang/String;)V

    .line 108
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v4

    if-ne v0, v4, :cond_1

    .line 109
    const/4 v1, 0x1

    .line 112
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 113
    new-instance v0, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/16 v0, 0x9

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lca/uhn/hl7v2/preparser/ER7;->parseSegmentGuts(Lca/uhn/hl7v2/preparser/ER7$Handler;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2    # "handler":Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;
    .end local v3    # "nodeKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    goto :goto_1

    .line 117
    :catch_1
    move-exception v0

    .line 120
    :cond_1
    :goto_1
    return v1
.end method

.method public static parseMessage(Ljava/util/Properties;Ljava/util/List;Ljava/lang/String;)Z
    .locals 7
    .param p0, "props"    # Ljava/util/Properties;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/preparser/DatumPath;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 50
    .local p1, "msgMask":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    const/4 v0, 0x0

    .line 51
    .local v0, "ok":Z
    if-eqz p2, :cond_2

    .line 52
    if-nez p0, :cond_0

    .line 53
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    move-object p0, v1

    .line 56
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\r\n\u000c"

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    nop

    .line 57
    .local v1, "messageTokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "firstSegment":Ljava/lang/String;
    new-instance v3, Lca/uhn/hl7v2/parser/EncodingCharacters;

    const/16 v4, 0x30

    const-string v5, "0000"

    invoke-direct {v3, v4, v5}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    .line 60
    .local v3, "encodingChars":Lca/uhn/hl7v2/parser/EncodingCharacters;
    invoke-static {p0, p1, v3, v2}, Lca/uhn/hl7v2/preparser/ER7;->parseMSHSegmentWhole(Ljava/util/Properties;Ljava/util/List;Lca/uhn/hl7v2/parser/EncodingCharacters;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    const/4 v4, 0x1

    .line 62
    .end local v0    # "ok":Z
    .local v4, "ok":Z
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v5, v0

    .line 63
    .local v5, "segmentId2nextRepIdx":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/String;

    const-string v6, "MSH"

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    .end local v1    # "messageTokenizer":Ljava/util/StringTokenizer;
    .end local v2    # "firstSegment":Ljava/lang/String;
    .end local v3    # "encodingChars":Lca/uhn/hl7v2/parser/EncodingCharacters;
    .end local v5    # "segmentId2nextRepIdx":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move v0, v4

    goto :goto_1

    .line 66
    .restart local v1    # "messageTokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "firstSegment":Ljava/lang/String;
    .restart local v3    # "encodingChars":Lca/uhn/hl7v2/parser/EncodingCharacters;
    .restart local v5    # "segmentId2nextRepIdx":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    nop

    .line 67
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {p0, v5, p1, v3, v0}, Lca/uhn/hl7v2/preparser/ER7;->parseSegmentWhole(Ljava/util/Properties;Ljava/util/Map;Ljava/util/List;Lca/uhn/hl7v2/parser/EncodingCharacters;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v1    # "messageTokenizer":Ljava/util/StringTokenizer;
    .end local v2    # "firstSegment":Ljava/lang/String;
    .end local v3    # "encodingChars":Lca/uhn/hl7v2/parser/EncodingCharacters;
    .end local v4    # "ok":Z
    .end local v5    # "segmentId2nextRepIdx":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v0    # "ok":Z
    :cond_2
    :goto_1
    return v0
.end method

.method protected static parseSegmentGuts(Lca/uhn/hl7v2/preparser/ER7$Handler;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p0, "handler"    # Lca/uhn/hl7v2/preparser/ER7$Handler;
    .param p1, "guts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/preparser/ER7$Handler;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p2, "nodeKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Lca/uhn/hl7v2/preparser/ER7$Handler;->delim(I)C

    move-result v0

    .line 246
    .local v0, "thisDepthsDelim":C
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    nop

    .line 247
    .local v2, "gutsTokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    return-void

    .line 248
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "gutsToken":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_1

    .line 253
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 254
    .local v4, "oldvalue":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p2, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v4    # "oldvalue":I
    goto :goto_0

    .line 257
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0}, Lca/uhn/hl7v2/preparser/ER7$Handler;->specDepth()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 258
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {p0, v3, p2}, Lca/uhn/hl7v2/preparser/ER7;->parseSegmentGuts(Lca/uhn/hl7v2/preparser/ER7$Handler;Ljava/lang/String;Ljava/util/List;)V

    .line 260
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 261
    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {p0, p2, v3}, Lca/uhn/hl7v2/preparser/ER7$Handler;->putDatum(Ljava/util/List;Ljava/lang/String;)V

    .line 263
    .end local v3    # "gutsToken":Ljava/lang/String;
    goto :goto_0
.end method

.method protected static parseSegmentWhole(Ljava/util/Properties;Ljava/util/Map;Ljava/util/List;Lca/uhn/hl7v2/parser/EncodingCharacters;Ljava/lang/String;)V
    .locals 8
    .param p0, "props"    # Ljava/util/Properties;
    .param p3, "encodingChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .param p4, "segment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/preparser/DatumPath;",
            ">;",
            "Lca/uhn/hl7v2/parser/EncodingCharacters;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 132
    .local p1, "segmentId2nextRepIdx":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "msgMask":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "segmentId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 135
    .local v3, "currentSegmentRepIdx":I
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 138
    :cond_0
    const/4 v3, 0x0

    .line 139
    :goto_0
    new-instance v4, Ljava/lang/Integer;

    add-int/lit8 v5, v3, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, "parseThisSegment":Z
    new-instance v5, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v5}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    invoke-virtual {v5, v2}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/String;)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v5

    .line 145
    .local v5, "segmentIdAsDatumPath":Lca/uhn/hl7v2/preparser/DatumPath;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 145
    .local v6, "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :goto_1
    if-nez v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 145
    .end local v6    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    goto :goto_2

    .line 146
    .restart local v6    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v5, v7}, Lca/uhn/hl7v2/preparser/DatumPath;->startsWith(Lca/uhn/hl7v2/preparser/DatumPath;)Z

    move-result v7

    move v4, v7

    goto :goto_1

    .line 147
    .end local v6    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 147
    .restart local v6    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :goto_3
    if-nez v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 147
    .end local v6    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    goto :goto_4

    .line 148
    .restart local v6    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-virtual {v7, v5}, Lca/uhn/hl7v2/preparser/DatumPath;->startsWith(Lca/uhn/hl7v2/preparser/DatumPath;)Z

    move-result v7

    move v4, v7

    goto :goto_3

    .line 150
    .end local v6    # "maskIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getFieldSeparator()C

    move-result v6

    if-ne v0, v6, :cond_5

    .line 151
    new-instance v0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;

    invoke-direct {v0}, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;-><init>()V

    .line 152
    .local v0, "handler":Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;
    iput-object p0, v0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_props:Ljava/util/Properties;

    .line 153
    iput-object p3, v0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_encodingChars:Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 154
    iput-object v2, v0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_segmentId:Ljava/lang/String;

    .line 155
    iput-object p2, v0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_msgMask:Ljava/util/List;

    .line 156
    iput v3, v0, Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;->m_segmentRepIdx:I

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, "nodeKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lca/uhn/hl7v2/preparser/ER7;->parseSegmentGuts(Lca/uhn/hl7v2/preparser/ER7$Handler;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "handler":Lca/uhn/hl7v2/preparser/ER7$ER7SegmentHandler;
    .end local v2    # "segmentId":Ljava/lang/String;
    .end local v3    # "currentSegmentRepIdx":I
    .end local v4    # "parseThisSegment":Z
    .end local v5    # "segmentIdAsDatumPath":Lca/uhn/hl7v2/preparser/DatumPath;
    .end local v6    # "nodeKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_5

    .line 164
    :catch_0
    move-exception v0

    goto :goto_5

    .line 163
    :catch_1
    move-exception v0

    .line 165
    :cond_5
    :goto_5
    return-void
.end method
