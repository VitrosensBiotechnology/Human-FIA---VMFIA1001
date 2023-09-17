.class public Lca/uhn/hl7v2/llp/CharSetUtil;
.super Ljava/lang/Object;
.source "CharSetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lca/uhn/hl7v2/llp/CharSetUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/llp/CharSetUtil;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "defaultCharset"    # Ljava/nio/charset/Charset;

    .line 49
    move-object v0, p1

    .line 51
    .local v0, "charset":Ljava/nio/charset/Charset;
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "MSH-18(0)"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lca/uhn/hl7v2/preparser/PreParser;->getFields(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "fields":[Ljava/lang/String;
    aget-object v2, v1, v3

    invoke-static {v2}, Lca/uhn/hl7v2/llp/CharSetUtil;->stripNonLowAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "hl7CharsetName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 54
    invoke-static {v2}, Lca/uhn/hl7v2/llp/HL7Charsets;->getCharsetForHL7Encoding(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    move-object v0, v3

    .line 55
    :cond_0
    sget-object v3, Lca/uhn/hl7v2/llp/CharSetUtil;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Detected MSH-18 value \"{}\" so using charset {}"

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "fields":[Ljava/lang/String;
    .end local v2    # "hl7CharsetName":Ljava/lang/String;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/llp/CharSetUtil;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Failed to parse MSH segment. Defaulting to {}"

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    sget-object v2, Lca/uhn/hl7v2/llp/CharSetUtil;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Invalid or unsupported charset in MSH-18. Defaulting to {}"

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .end local v1    # "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    :goto_0
    return-object v0
.end method

.method static checkCharset([BLjava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "message"    # [B
    .param p1, "defaultCharset"    # Ljava/nio/charset/Charset;

    .line 65
    invoke-static {p0}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->skipBOM([B)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "guessMessage":Ljava/lang/String;
    invoke-static {v0, p1}, Lca/uhn/hl7v2/llp/CharSetUtil;->checkCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1
.end method

.method private static stripNonLowAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "theString"    # Ljava/lang/String;

    .line 70
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 73
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 80
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 74
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 75
    .local v2, "next":C
    if-lez v2, :cond_2

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .end local v2    # "next":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static withoutBOM([B)[B
    .locals 6
    .param p0, "bytes"    # [B

    .line 84
    invoke-static {p0}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->getBOM([B)Lca/uhn/hl7v2/llp/CharSetUtil$BOM;

    move-result-object v0

    .line 85
    .local v0, "bom":Lca/uhn/hl7v2/llp/CharSetUtil$BOM;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->access$2(Lca/uhn/hl7v2/llp/CharSetUtil$BOM;)[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 86
    .local v2, "withoutBOM":[B
    invoke-static {v0}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->access$2(Lca/uhn/hl7v2/llp/CharSetUtil$BOM;)[B

    move-result-object v3

    array-length v3, v3

    array-length v4, p0

    invoke-static {v0}, Lca/uhn/hl7v2/llp/CharSetUtil$BOM;->access$2(Lca/uhn/hl7v2/llp/CharSetUtil$BOM;)[B

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v4, v5

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object v2
.end method
