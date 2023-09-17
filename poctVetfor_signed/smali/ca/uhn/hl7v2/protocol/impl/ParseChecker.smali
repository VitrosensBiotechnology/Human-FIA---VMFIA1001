.class public Lca/uhn/hl7v2/protocol/impl/ParseChecker;
.super Ljava/lang/Object;
.source "ParseChecker.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lca/uhn/hl7v2/protocol/impl/ParseChecker;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkParse(Ljava/lang/String;Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/parser/Parser;)V
    .locals 9
    .param p0, "originalMessageText"    # Ljava/lang/String;
    .param p1, "parsedMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v1, "ParseChecker is checking parse integrity (turn this off if you are not testing)"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2, p1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "newMessageText":Ljava/lang/String;
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v2, "******************* Comparing Messages ****************\r\n"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v2, "Original:           {}"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v2, "Parsed and Encoded: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 45
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\r"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v1, "tok":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "one":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_6

    .line 52
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "\r"

    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .local v3, "tok":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 54
    .local v5, "two":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_5

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 61
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v4, "Warning: inbound and parsed messages have different numbers of segments: \r\n"

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 62
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v4, "Original: {}"

    invoke-interface {v1, v4, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v4, "Parsed:   {}"

    invoke-interface {v1, v4, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    goto :goto_3

    .line 67
    :cond_2
    const/4 v1, 0x0

    .line 67
    .local v1, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 77
    .end local v1    # "i":I
    .end local v2    # "one":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "tok":Ljava/util/StringTokenizer;
    .end local v5    # "two":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 68
    .restart local v1    # "i":I
    .restart local v2    # "one":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "tok":Ljava/util/StringTokenizer;
    .restart local v5    # "two":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, "origSeg":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 70
    .local v6, "newSeg":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 71
    sget-object v7, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v8, "Warning: inbound and parsed message segment differs: \r\n"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 72
    sget-object v7, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v8, "Original: {}"

    invoke-interface {v7, v8, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object v7, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v8, "Parsed:   {}"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .end local v4    # "origSeg":Ljava/lang/String;
    .end local v6    # "newSeg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "seg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 57
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v1, v6}, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v1    # "seg":Ljava/lang/String;
    goto :goto_1

    .line 48
    .end local v3    # "tok":Ljava/util/StringTokenizer;
    .end local v5    # "two":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "tok":Ljava/util/StringTokenizer;
    :cond_6
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "seg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v3    # "seg":Ljava/lang/String;
    goto/16 :goto_0

    .line 79
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v2    # "one":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v2, "No differences found"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 82
    :goto_3
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/ParseChecker;->log:Lorg/slf4j/Logger;

    const-string v2, "********************  End Comparison  ******************\r\n"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private static stripExtraDelimiters(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delim"    # C

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 95
    .local v0, "chars":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 96
    .local v1, "c":I
    const/4 v2, 0x0

    .line 97
    .local v2, "found":Z
    :goto_0
    if-ltz v1, :cond_2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 98
    .local v3, "c":I
    aget-char v1, v0, v1

    .line 98
    .end local v1    # "c":I
    if-eq v1, p1, :cond_1

    .line 99
    const/4 v2, 0x1

    .line 97
    .end local v3    # "c":I
    .restart local v1    # "c":I
    :cond_1
    move v1, v3

    goto :goto_0

    .line 102
    :cond_2
    :goto_1
    const-string v3, ""

    .line 103
    .local v3, "ret":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 104
    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x2

    invoke-static {v0, v4, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 105
    :cond_3
    return-object v3
.end method
