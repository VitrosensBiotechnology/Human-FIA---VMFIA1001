.class public Lca/uhn/hl7v2/preparser/PreParser;
.super Ljava/lang/Object;
.source "PreParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFields(Ljava/lang/String;[Lca/uhn/hl7v2/preparser/DatumPath;)[Ljava/lang/String;
    .locals 6
    .param p0, "theMessageText"    # Ljava/lang/String;
    .param p1, "thePaths"    # [Lca/uhn/hl7v2/preparser/DatumPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 75
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    .local v0, "fields":[Ljava/lang/String;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 78
    .local v1, "props":Ljava/util/Properties;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, "mask":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    const/4 v3, 0x0

    .line 81
    .local v3, "OK":Z
    invoke-static {p0}, Lca/uhn/hl7v2/parser/EncodingDetector;->isEr7Encoded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    invoke-static {v1, v2, p0}, Lca/uhn/hl7v2/preparser/ER7;->parseMessage(Ljava/util/Properties;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    .line 83
    nop

    .line 89
    .end local v3    # "OK":Z
    .local v4, "OK":Z
    :goto_0
    move v4, v3

    goto :goto_1

    .line 83
    .end local v4    # "OK":Z
    .restart local v3    # "OK":Z
    :cond_0
    invoke-static {p0}, Lca/uhn/hl7v2/parser/EncodingDetector;->isXmlEncoded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    const/4 v4, 0x0

    invoke-static {v1, p0, v4}, Lca/uhn/hl7v2/preparser/XML;->parseMessage(Ljava/util/Properties;Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v3

    .line 85
    goto :goto_0

    .line 89
    .end local v3    # "OK":Z
    .restart local v4    # "OK":Z
    :goto_1
    if-nez v4, :cond_1

    .line 90
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    const-string v5, "Parse failed"

    invoke-direct {v3, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_1
    const/4 v3, 0x0

    .line 93
    .local v3, "i":I
    :goto_2
    array-length v5, v0

    if-lt v3, v5, :cond_2

    .line 96
    .end local v3    # "i":I
    return-object v0

    .line 94
    .restart local v3    # "i":I
    :cond_2
    aget-object v5, p1, v3

    invoke-virtual {v5}, Lca/uhn/hl7v2/preparser/DatumPath;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 86
    .end local v4    # "OK":Z
    .local v3, "OK":Z
    :cond_3
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    const-string v5, "Message encoding is not recognized"

    invoke-direct {v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static varargs getFields(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "theMessageText"    # Ljava/lang/String;
    .param p1, "thePathSpecs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 42
    array-length v0, p1

    new-array v0, v0, [Lca/uhn/hl7v2/preparser/DatumPath;

    .line 43
    .local v0, "paths":[Lca/uhn/hl7v2/preparser/DatumPath;
    const/4 v1, 0x0

    .line 43
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 67
    .end local v1    # "i":I
    invoke-static {p0, v0}, Lca/uhn/hl7v2/preparser/PreParser;->getFields(Ljava/lang/String;[Lca/uhn/hl7v2/preparser/DatumPath;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 44
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    aget-object v3, p1, v1

    const-string v4, "-"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    .local v2, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "segSpec":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "()"

    invoke-direct {v4, v3, v6, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v4

    .line 47
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "segName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 49
    new-instance v5, Lca/uhn/hl7v2/HL7Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "In field path, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not a valid segment name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    :cond_1
    const/4 v6, 0x0

    .line 52
    .local v6, "segRep":I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 53
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "rep":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v9

    .line 56
    goto :goto_1

    :catch_0
    move-exception v5

    .line 57
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Lca/uhn/hl7v2/HL7Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "In field path, segment rep"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 61
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "rep":Ljava/lang/String;
    :cond_2
    :goto_1
    aget-object v8, p1, v1

    invoke-static {v8}, Lca/uhn/hl7v2/util/Terser;->getIndices(Ljava/lang/String;)[I

    move-result-object v8

    .line 62
    .local v8, "indices":[I
    new-instance v9, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v9}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    aput-object v9, v0, v1

    .line 63
    aget-object v9, v0, v1

    invoke-virtual {v9, v4}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/String;)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v9

    invoke-virtual {v9, v6}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 64
    aget-object v9, v0, v1

    aget v5, v8, v5

    invoke-virtual {v9, v5}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v5

    const/4 v9, 0x1

    aget v9, v8, v9

    invoke-virtual {v5, v9}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v5

    const/4 v9, 0x2

    aget v9, v8, v9

    invoke-virtual {v5, v9}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v5

    aget v7, v8, v7

    invoke-virtual {v5, v7}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    .line 43
    .end local v2    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "segSpec":Ljava/lang/String;
    .end local v4    # "segName":Ljava/lang/String;
    .end local v6    # "segRep":I
    .end local v8    # "indices":[I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
