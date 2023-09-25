.class public Lca/uhn/hl7v2/preparser/XML;
.super Ljava/lang/Object;
.source "XML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;,
        Lca/uhn/hl7v2/preparser/XML$StopParsingException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 555
    const/4 v0, 0x1

    array-length v1, p0

    if-lt v1, v0, :cond_0

    .line 556
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 557
    .local v0, "props":Ljava/util/Properties;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v1, "msgMask":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    new-instance v2, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v2}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    const-string v3, "MSH"

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->add(Ljava/lang/String;)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v2

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Lca/uhn/hl7v2/preparser/DatumPath;->add(I)Lca/uhn/hl7v2/preparser/DatumPath;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :try_start_0
    aget-object v2, p0, v3

    invoke-static {v0, v2, v1}, Lca/uhn/hl7v2/preparser/XML;->parseMessage(Ljava/util/Properties;Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v2

    .line 563
    .local v2, "parseret":Z
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parseMessage returned "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    goto :goto_0

    .line 564
    .end local v2    # "parseret":Z
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 567
    .end local v2    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->list(Ljava/io/PrintStream;)V

    .line 569
    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "msgMask":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    :cond_0
    return-void
.end method

.method public static parseMessage(Ljava/util/Properties;Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 7
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lca/uhn/hl7v2/preparser/DatumPath;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 520
    .local p2, "msgMask":Ljava/util/Collection;, "Ljava/util/Collection<Lca/uhn/hl7v2/preparser/DatumPath;>;"
    const/4 v0, 0x0

    .line 522
    .local v0, "ret":Z
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 523
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 525
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 527
    .local v3, "inSrc":Lorg/xml/sax/InputSource;
    new-instance v4, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;

    invoke-direct {v4}, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;-><init>()V

    .line 528
    .local v4, "handler":Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;
    if-eqz p0, :cond_0

    .line 529
    nop

    .line 528
    move-object v5, p0

    goto :goto_0

    .line 529
    :cond_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 528
    :goto_0
    iput-object v5, v4, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_props:Ljava/util/Properties;

    .line 531
    if-eqz p2, :cond_1

    .line 532
    iput-object p2, v4, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgMask:Ljava/util/Collection;

    goto :goto_1

    .line 534
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgMask:Ljava/util/Collection;

    .line 535
    iget-object v5, v4, Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;->m_msgMask:Ljava/util/Collection;

    new-instance v6, Lca/uhn/hl7v2/preparser/DatumPath;

    invoke-direct {v6}, Lca/uhn/hl7v2/preparser/DatumPath;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 538
    :goto_1
    invoke-virtual {v2, v3, v4}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lca/uhn/hl7v2/preparser/XML$StopParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    const/4 v0, 0x1

    .line 540
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "inSrc":Lorg/xml/sax/InputSource;
    .end local v4    # "handler":Lca/uhn/hl7v2/preparser/XML$HL7MessageHandler;
    nop

    .line 550
    return v0

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 544
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    .line 545
    .local v1, "e":Lca/uhn/hl7v2/preparser/XML$StopParsingException;
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 542
    .end local v1    # "e":Lca/uhn/hl7v2/preparser/XML$StopParsingException;
    :catch_2
    move-exception v1

    .line 543
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 540
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 541
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
