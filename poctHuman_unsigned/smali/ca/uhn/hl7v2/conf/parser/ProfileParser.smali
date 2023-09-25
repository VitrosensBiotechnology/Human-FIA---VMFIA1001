.class public Lca/uhn/hl7v2/conf/parser/ProfileParser;
.super Ljava/lang/Object;
.source "ProfileParser.java"


# static fields
.field private static final PROFILE_XSD:Ljava/lang/String; = "ca/uhn/hl7v2/conf/parser/message_profile.xsd"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private alwaysValidate:Z

.field private errorHandler:Lorg/w3c/dom/DOMErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lca/uhn/hl7v2/conf/parser/ProfileParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/conf/parser/ProfileParser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "alwaysValidate"    # Z

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean p1, p0, Lca/uhn/hl7v2/conf/parser/ProfileParser;->alwaysValidate:Z

    .line 107
    new-instance v0, Lca/uhn/hl7v2/conf/parser/ProfileParser$1;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/conf/parser/ProfileParser$1;-><init>(Lca/uhn/hl7v2/conf/parser/ProfileParser;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/parser/ProfileParser;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    .line 119
    return-void
.end method

.method static synthetic access$0()Lorg/slf4j/Logger;
    .locals 1

    .line 93
    sget-object v0, Lca/uhn/hl7v2/conf/parser/ProfileParser;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private getFirstElementByTagName(Ljava/lang/String;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/w3c/dom/Element;

    .line 438
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 439
    .local v0, "nl":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 440
    .local v1, "ret":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 441
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/w3c/dom/Element;

    .line 443
    :cond_0
    return-object v1
.end method

.method private getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getFirstElementByTagName(Ljava/lang/String;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 451
    .local v0, "el":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 452
    .local v1, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 454
    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 455
    .local v2, "n":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 456
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 458
    .end local v2    # "n":Lorg/w3c/dom/Node;
    goto :goto_0

    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to get value of node "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 462
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 467
    const/4 v0, 0x1

    array-length v1, p0

    if-eq v1, v0, :cond_0

    .line 468
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Usage: ProfileParser profile_file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 475
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 478
    .local v3, "in":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [C

    .line 479
    .local v4, "cbuf":[C
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/BufferedReader;->read([CII)I

    .line 480
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "xml":Ljava/lang/String;
    new-instance v5, Lca/uhn/hl7v2/conf/parser/ProfileParser;

    invoke-direct {v5, v0}, Lca/uhn/hl7v2/conf/parser/ProfileParser;-><init>(Z)V

    move-object v0, v5

    .line 484
    .local v0, "pp":Lca/uhn/hl7v2/conf/parser/ProfileParser;
    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v0    # "pp":Lca/uhn/hl7v2/conf/parser/ProfileParser;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "xml":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "cbuf":[C
    goto :goto_0

    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private parseAbstractComponentData(Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;Lorg/w3c/dom/Element;)V
    .locals 9
    .param p2, "elem"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<",
            "*>;",
            "Lorg/w3c/dom/Element;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 379
    .local p1, "comp":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<*>;"
    const-string v0, "Name"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setName(Ljava/lang/String;)V

    .line 380
    const-string v0, "Usage"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setUsage(Ljava/lang/String;)V

    .line 381
    const-string v0, "Datatype"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setDatatype(Ljava/lang/String;)V

    .line 382
    const-string v0, "Length"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "length":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 385
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setLength(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Length must be a long integer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 390
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    const-string v1, "ConstantValue"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setConstantValue(Ljava/lang/String;)V

    .line 391
    const-string v1, "Table"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "table":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 394
    :try_start_1
    invoke-virtual {p1, v1}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setTable(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    goto :goto_1

    :catch_1
    move-exception v2

    .line 396
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Table must be a short integer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 400
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    const-string v2, "ImpNote"

    invoke-direct {p0, v2, p2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setImpNote(Ljava/lang/String;)V

    .line 401
    const-string v2, "Description"

    invoke-direct {p0, v2, p2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setDescription(Ljava/lang/String;)V

    .line 402
    const-string v2, "Reference"

    invoke-direct {p0, v2, p2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setReference(Ljava/lang/String;)V

    .line 403
    const-string v2, "Predicate"

    invoke-direct {p0, v2, p2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setPredicate(Ljava/lang/String;)V

    .line 405
    const/4 v2, 0x0

    .line 406
    .local v2, "dataValIndex":I
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 407
    .local v3, "children":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .line 407
    .local v4, "i":I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 419
    .end local v4    # "i":I
    return-void

    .line 408
    .restart local v4    # "i":I
    :cond_2
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 409
    .local v5, "n":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 410
    move-object v6, v5

    check-cast v6, Lorg/w3c/dom/Element;

    .line 411
    .local v6, "child":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DataValues"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 412
    new-instance v7, Lca/uhn/hl7v2/conf/spec/message/DataValue;

    invoke-direct {v7}, Lca/uhn/hl7v2/conf/spec/message/DataValue;-><init>()V

    .line 413
    .local v7, "val":Lca/uhn/hl7v2/conf/spec/message/DataValue;
    const-string v8, "ExValue"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lca/uhn/hl7v2/conf/spec/message/DataValue;->setExValue(Ljava/lang/String;)V

    .line 414
    add-int/lit8 v8, v2, 0x1

    .line 414
    .local v8, "dataValIndex":I
    invoke-virtual {p1, v2, v7}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->setDataValues(ILca/uhn/hl7v2/conf/spec/message/DataValue;)V

    .line 407
    .end local v2    # "dataValIndex":I
    .end local v5    # "n":Lorg/w3c/dom/Node;
    .end local v6    # "child":Lorg/w3c/dom/Element;
    .end local v7    # "val":Lca/uhn/hl7v2/conf/spec/message/DataValue;
    move v2, v8

    .line 407
    .end local v8    # "dataValIndex":I
    .restart local v2    # "dataValIndex":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private parseChildren(Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "parent"    # Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;
    .param p2, "elem"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 220
    const/4 v0, 0x1

    .line 221
    .local v0, "childIndex":I
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 222
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .line 222
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 235
    .end local v2    # "i":I
    return-void

    .line 223
    .restart local v2    # "i":I
    :cond_0
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 224
    .local v3, "n":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 225
    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Element;

    .line 226
    .local v4, "child":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SegGroup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    invoke-direct {p0, v4}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseSegmentGroupProfile(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/message/SegGroup;

    move-result-object v5

    .line 228
    .local v5, "group":Lca/uhn/hl7v2/conf/spec/message/SegGroup;
    add-int/lit8 v6, v0, 0x1

    .line 228
    .local v6, "childIndex":I
    invoke-virtual {p1, v0, v5}, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->setChild(ILca/uhn/hl7v2/conf/spec/message/ProfileStructure;)V

    .line 229
    .end local v0    # "childIndex":I
    .end local v5    # "group":Lca/uhn/hl7v2/conf/spec/message/SegGroup;
    nop

    .line 222
    .end local v3    # "n":Lorg/w3c/dom/Node;
    .end local v4    # "child":Lorg/w3c/dom/Element;
    .end local v6    # "childIndex":I
    .restart local v0    # "childIndex":I
    :goto_1
    move v0, v6

    goto :goto_2

    .line 229
    .restart local v3    # "n":Lorg/w3c/dom/Node;
    .restart local v4    # "child":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Segment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    invoke-direct {p0, v4}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseSegmentProfile(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/message/Seg;

    move-result-object v5

    .line 231
    .local v5, "segment":Lca/uhn/hl7v2/conf/spec/message/Seg;
    add-int/lit8 v6, v0, 0x1

    .line 231
    .restart local v6    # "childIndex":I
    invoke-virtual {p1, v0, v5}, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->setChild(ILca/uhn/hl7v2/conf/spec/message/ProfileStructure;)V

    .line 231
    .end local v0    # "childIndex":I
    .end local v3    # "n":Lorg/w3c/dom/Node;
    .end local v4    # "child":Lorg/w3c/dom/Element;
    .end local v5    # "segment":Lca/uhn/hl7v2/conf/spec/message/Seg;
    goto :goto_1

    .line 222
    .end local v6    # "childIndex":I
    .restart local v0    # "childIndex":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private parseComponentProfile(Lorg/w3c/dom/Element;Z)Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;
    .locals 9
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .param p2, "isSubComponent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Z)",
            "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "comp":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<*>;"
    if-eqz p2, :cond_0

    .line 349
    sget-object v1, Lca/uhn/hl7v2/conf/parser/ProfileParser;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "      Parsing subcomp profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Name"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 350
    new-instance v1, Lca/uhn/hl7v2/conf/spec/message/SubComponent;

    invoke-direct {v1}, Lca/uhn/hl7v2/conf/spec/message/SubComponent;-><init>()V

    move-object v0, v1

    .line 351
    goto :goto_1

    .line 352
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/conf/parser/ProfileParser;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    Parsing comp profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Name"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 353
    new-instance v1, Lca/uhn/hl7v2/conf/spec/message/Component;

    invoke-direct {v1}, Lca/uhn/hl7v2/conf/spec/message/Component;-><init>()V

    move-object v0, v1

    .line 355
    const/4 v1, 0x1

    .line 356
    .local v1, "childIndex":I
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 357
    .local v2, "children":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 357
    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 369
    .end local v1    # "childIndex":I
    .end local v2    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    :goto_1
    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseAbstractComponentData(Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;Lorg/w3c/dom/Element;)V

    .line 371
    return-object v0

    .line 358
    .restart local v1    # "childIndex":I
    .restart local v2    # "children":Lorg/w3c/dom/NodeList;
    .restart local v3    # "i":I
    :cond_1
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 359
    .local v4, "n":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 360
    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/Element;

    .line 361
    .local v5, "child":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SubComponent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 362
    invoke-direct {p0, v5, v6}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseComponentProfile(Lorg/w3c/dom/Element;Z)Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;

    move-result-object v6

    check-cast v6, Lca/uhn/hl7v2/conf/spec/message/SubComponent;

    .line 363
    .local v6, "subcomp":Lca/uhn/hl7v2/conf/spec/message/SubComponent;
    move-object v7, v0

    check-cast v7, Lca/uhn/hl7v2/conf/spec/message/Component;

    add-int/lit8 v8, v1, 0x1

    .line 363
    .local v8, "childIndex":I
    invoke-virtual {v7, v1, v6}, Lca/uhn/hl7v2/conf/spec/message/Component;->setSubComponent(ILca/uhn/hl7v2/conf/spec/message/SubComponent;)V

    .line 357
    .end local v1    # "childIndex":I
    .end local v4    # "n":Lorg/w3c/dom/Node;
    .end local v5    # "child":Lorg/w3c/dom/Element;
    .end local v6    # "subcomp":Lca/uhn/hl7v2/conf/spec/message/SubComponent;
    move v1, v8

    .line 357
    .end local v8    # "childIndex":I
    .restart local v1    # "childIndex":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private parseFieldProfile(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/message/Field;
    .locals 11
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 298
    new-instance v0, Lca/uhn/hl7v2/conf/spec/message/Field;

    invoke-direct {v0}, Lca/uhn/hl7v2/conf/spec/message/Field;-><init>()V

    .line 299
    .local v0, "field":Lca/uhn/hl7v2/conf/spec/message/Field;
    sget-object v1, Lca/uhn/hl7v2/conf/parser/ProfileParser;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Parsing field profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Name"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 301
    const-string v1, "Usage"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/conf/spec/message/Field;->setUsage(Ljava/lang/String;)V

    .line 302
    const-string v1, "ItemNo"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "itemNo":Ljava/lang/String;
    const-string v2, "Min"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "min":Ljava/lang/String;
    const-string v3, "Max"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "max":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 308
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/conf/spec/message/Field;->setItemNo(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    nop

    .line 316
    :cond_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/conf/spec/message/Field;->setMin(S)V

    .line 317
    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 318
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/conf/spec/message/Field;->setMax(S)V

    .line 319
    goto :goto_0

    .line 320
    :cond_1
    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-virtual {v0, v4}, Lca/uhn/hl7v2/conf/spec/message/Field;->setMax(S)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    nop

    .line 326
    :goto_0
    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseAbstractComponentData(Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;Lorg/w3c/dom/Element;)V

    .line 328
    const/4 v4, 0x1

    .line 329
    .local v4, "childIndex":I
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 330
    .local v5, "children":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 330
    .local v6, "i":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 341
    .end local v6    # "i":I
    return-object v0

    .line 331
    .restart local v6    # "i":I
    :cond_2
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 332
    .local v7, "n":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 333
    move-object v8, v7

    check-cast v8, Lorg/w3c/dom/Element;

    .line 334
    .local v8, "child":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Component"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 335
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseComponentProfile(Lorg/w3c/dom/Element;Z)Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;

    move-result-object v9

    check-cast v9, Lca/uhn/hl7v2/conf/spec/message/Component;

    .line 336
    .local v9, "comp":Lca/uhn/hl7v2/conf/spec/message/Component;
    add-int/lit8 v10, v4, 0x1

    .line 336
    .local v10, "childIndex":I
    invoke-virtual {v0, v4, v9}, Lca/uhn/hl7v2/conf/spec/message/Field;->setComponent(ILca/uhn/hl7v2/conf/spec/message/Component;)V

    .line 330
    .end local v4    # "childIndex":I
    .end local v7    # "n":Lorg/w3c/dom/Node;
    .end local v8    # "child":Lorg/w3c/dom/Element;
    .end local v9    # "comp":Lca/uhn/hl7v2/conf/spec/message/Component;
    move v4, v10

    .line 330
    .end local v10    # "childIndex":I
    .restart local v4    # "childIndex":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 322
    .end local v4    # "childIndex":I
    .end local v5    # "children":Lorg/w3c/dom/NodeList;
    .end local v6    # "i":I
    :catch_0
    move-exception v4

    .line 323
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Min and max must be short integers: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 310
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 311
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid ItemNo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "( for name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v7, "Name"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-direct {v5, v6, v4}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private parseIntoDOM(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 4
    .param p1, "profileString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 424
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lca/uhn/hl7v2/util/XMLUtils;->parse(Ljava/lang/String;Z)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 425
    .local v0, "doc":Lorg/w3c/dom/Document;
    iget-boolean v1, p0, Lca/uhn/hl7v2/conf/parser/ProfileParser;->alwaysValidate:Z

    if-eqz v1, :cond_0

    .line 426
    const-string v1, "ca/uhn/hl7v2/conf/parser/message_profile.xsd"

    iget-object v2, p0, Lca/uhn/hl7v2/conf/parser/ProfileParser;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-static {v0, v1, v2}, Lca/uhn/hl7v2/util/XMLUtils;->validate(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/DOMErrorHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_0
    return-object v0

    .line 428
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception parsing message profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseMetaData(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/MetaData;
    .locals 2
    .param p1, "elem"    # Lorg/w3c/dom/Element;

    .line 211
    sget-object v0, Lca/uhn/hl7v2/conf/parser/ProfileParser;->log:Lorg/slf4j/Logger;

    const-string v1, "ProfileParser.parseMetaData() has been called ... note that this method does nothing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseProfileStuctureData(Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "struct"    # Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;
    .param p2, "elem"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 274
    const-string v0, "Name"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setName(Ljava/lang/String;)V

    .line 275
    const-string v0, "LongName"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setLongName(Ljava/lang/String;)V

    .line 276
    const-string v0, "Usage"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setUsage(Ljava/lang/String;)V

    .line 277
    const-string v0, "Min"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "min":Ljava/lang/String;
    const-string v1, "Max"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "max":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-interface {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setMin(S)V

    .line 281
    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 282
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setMax(S)V

    .line 283
    goto :goto_0

    .line 284
    :cond_0
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-interface {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setMax(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .line 290
    :goto_0
    const-string v2, "ImpNote"

    invoke-direct {p0, v2, p2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setImpNote(Ljava/lang/String;)V

    .line 291
    const-string v2, "Description"

    invoke-direct {p0, v2, p2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setDescription(Ljava/lang/String;)V

    .line 292
    const-string v2, "Reference"

    invoke-direct {p0, v2, p2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setReference(Ljava/lang/String;)V

    .line 293
    const-string v2, "Predicate"

    invoke-direct {p0, v2, p2}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->setPredicate(Ljava/lang/String;)V

    .line 294
    return-void

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Min and max must be short integers: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private parseSegmentGroupProfile(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/message/SegGroup;
    .locals 4
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 239
    new-instance v0, Lca/uhn/hl7v2/conf/spec/message/SegGroup;

    invoke-direct {v0}, Lca/uhn/hl7v2/conf/spec/message/SegGroup;-><init>()V

    .line 240
    .local v0, "group":Lca/uhn/hl7v2/conf/spec/message/SegGroup;
    sget-object v1, Lca/uhn/hl7v2/conf/parser/ProfileParser;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing segment group profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Name"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseProfileStuctureData(Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;Lorg/w3c/dom/Element;)V

    .line 244
    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseChildren(Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;Lorg/w3c/dom/Element;)V

    .line 245
    return-object v0
.end method

.method private parseSegmentProfile(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/message/Seg;
    .locals 8
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 250
    new-instance v0, Lca/uhn/hl7v2/conf/spec/message/Seg;

    invoke-direct {v0}, Lca/uhn/hl7v2/conf/spec/message/Seg;-><init>()V

    .line 251
    .local v0, "segment":Lca/uhn/hl7v2/conf/spec/message/Seg;
    sget-object v1, Lca/uhn/hl7v2/conf/parser/ProfileParser;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing segment profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Name"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseProfileStuctureData(Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;Lorg/w3c/dom/Element;)V

    .line 255
    const/4 v1, 0x1

    .line 256
    .local v1, "childIndex":I
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 257
    .local v2, "children":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 257
    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 268
    .end local v3    # "i":I
    return-object v0

    .line 258
    .restart local v3    # "i":I
    :cond_0
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 259
    .local v4, "n":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 260
    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/Element;

    .line 261
    .local v5, "child":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Field"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    invoke-direct {p0, v5}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseFieldProfile(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/message/Field;

    move-result-object v6

    .line 263
    .local v6, "field":Lca/uhn/hl7v2/conf/spec/message/Field;
    add-int/lit8 v7, v1, 0x1

    .line 263
    .local v7, "childIndex":I
    invoke-virtual {v0, v1, v6}, Lca/uhn/hl7v2/conf/spec/message/Seg;->setField(ILca/uhn/hl7v2/conf/spec/message/Field;)V

    .line 257
    .end local v1    # "childIndex":I
    .end local v4    # "n":Lorg/w3c/dom/Node;
    .end local v5    # "child":Lorg/w3c/dom/Element;
    .end local v6    # "field":Lca/uhn/hl7v2/conf/spec/message/Field;
    move v1, v7

    .line 257
    .end local v7    # "childIndex":I
    .restart local v1    # "childIndex":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private parseStaticProfile(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    .locals 3
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 188
    new-instance v0, Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    invoke-direct {v0}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;-><init>()V

    .line 189
    .local v0, "message":Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    const-string v1, "MsgType"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setMsgType(Ljava/lang/String;)V

    .line 190
    const-string v1, "EventType"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setEventType(Ljava/lang/String;)V

    .line 191
    const-string v1, "MsgStructID"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setMsgStructID(Ljava/lang/String;)V

    .line 192
    const-string v1, "OrderControl"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setOrderControl(Ljava/lang/String;)V

    .line 193
    const-string v1, "EventDesc"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setEventDesc(Ljava/lang/String;)V

    .line 194
    const-string v1, "identifier"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setIdentifier(Ljava/lang/String;)V

    .line 195
    const-string v1, "role"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setRole(Ljava/lang/String;)V

    .line 197
    const-string v1, "MetaData"

    invoke-direct {p0, v1, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getFirstElementByTagName(Ljava/lang/String;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 198
    .local v1, "md":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0, v1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseMetaData(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/MetaData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setMetaData(Lca/uhn/hl7v2/conf/spec/MetaData;)V

    .line 201
    :cond_0
    const-string v2, "ImpNote"

    invoke-direct {p0, v2, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setImpNote(Ljava/lang/String;)V

    .line 202
    const-string v2, "Description"

    invoke-direct {p0, v2, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setDescription(Ljava/lang/String;)V

    .line 203
    const-string v2, "Reference"

    invoke-direct {p0, v2, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->getValueOfFirstElement(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->setReference(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseChildren(Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;Lorg/w3c/dom/Element;)V

    .line 206
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    .locals 7
    .param p1, "profileString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 166
    new-instance v0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;

    invoke-direct {v0}, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;-><init>()V

    .line 167
    .local v0, "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseIntoDOM(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 169
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 170
    .local v2, "root":Lorg/w3c/dom/Element;
    const-string v3, "HL7Version"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->setHL7Version(Ljava/lang/String;)V

    .line 172
    const-string v3, "MetaData"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 173
    .local v3, "metadataList":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    .line 174
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 175
    .local v4, "metadata":Lorg/w3c/dom/Element;
    const-string v6, "Name"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->setName(Ljava/lang/String;)V

    .line 180
    .end local v4    # "metadata":Lorg/w3c/dom/Element;
    .end local v6    # "name":Ljava/lang/String;
    :cond_0
    const-string v4, "HL7v2xStaticDef"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 181
    .local v4, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 182
    .local v5, "staticDef":Lorg/w3c/dom/Element;
    invoke-direct {p0, v5}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseStaticProfile(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    move-result-object v6

    .line 183
    .local v6, "sd":Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    invoke-virtual {v0, v6}, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->setMessage(Lca/uhn/hl7v2/conf/spec/message/StaticDef;)V

    .line 184
    return-object v0
.end method

.method public parseClasspath(Ljava/lang/String;)Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    .locals 10
    .param p1, "classPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 135
    nop

    .line 137
    .local v0, "stream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 138
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v1, "profileString":Ljava/lang/StringBuffer;
    const/16 v2, 0x3e8

    new-array v2, v2, [B

    .line 144
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .line 144
    .local v4, "bytesRead":I
    const/4 v5, 0x0

    if-gtz v3, :cond_1

    .line 148
    new-instance v3, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;

    invoke-direct {v3}, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;-><init>()V

    .line 149
    .local v3, "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseIntoDOM(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 151
    .local v6, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 152
    .local v7, "root":Lorg/w3c/dom/Element;
    const-string v8, "HL7Version"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->setHL7Version(Ljava/lang/String;)V

    .line 155
    const-string v8, "HL7v2xStaticDef"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 156
    .local v8, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v8, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 157
    .local v5, "staticDef":Lorg/w3c/dom/Element;
    invoke-direct {p0, v5}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parseStaticProfile(Lorg/w3c/dom/Element;)Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    move-result-object v9

    .line 158
    .local v9, "sd":Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    invoke-virtual {v3, v9}, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->setMessage(Lca/uhn/hl7v2/conf/spec/message/StaticDef;)V

    .line 159
    return-object v3

    .line 144
    .end local v3    # "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    .end local v5    # "staticDef":Lorg/w3c/dom/Element;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "root":Lorg/w3c/dom/Element;
    .end local v8    # "nl":Lorg/w3c/dom/NodeList;
    .end local v9    # "sd":Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    :cond_1
    nop

    .line 145
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v5, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    .end local v4    # "bytesRead":I
    goto :goto_0
.end method
