.class public Lca/uhn/hl7v2/parser/DefaultXMLParser;
.super Lca/uhn/hl7v2/parser/XMLParser;
.source "DefaultXMLParser.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field private static final ourForceGroupNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-class v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;->log:Lorg/slf4j/Logger;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;->ourForceGroupNames:Ljava/util/Set;

    .line 78
    sget-object v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;->ourForceGroupNames:Ljava/util/Set;

    const-string v1, "DIET"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/XMLParser;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 86
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/XMLParser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "theFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 95
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/XMLParser;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 96
    return-void
.end method

.method private encode(Lca/uhn/hl7v2/model/Group;Lorg/w3c/dom/Element;)V
    .locals 13
    .param p1, "groupObject"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "groupElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "childNames":[Ljava/lang/String;
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Group;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "messageName":Ljava/lang/String;
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    .line 150
    nop

    .line 154
    return-void

    .line 130
    :cond_0
    aget-object v5, v0, v4

    .line 131
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p1, v5}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v6

    .line 132
    .local v6, "reps":[Lca/uhn/hl7v2/model/Structure;
    array-length v7, v6

    move v8, v3

    :goto_1
    if-lt v8, v7, :cond_1

    .line 130
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "reps":[Lca/uhn/hl7v2/model/Structure;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "reps":[Lca/uhn/hl7v2/model/Structure;
    :cond_1
    aget-object v9, v6, v8

    .line 133
    .local v9, "rep":Lca/uhn/hl7v2/model/Structure;
    invoke-static {v1, v5}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->makeGroupElementName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .local v10, "elementName":Ljava/lang/String;
    :try_start_1
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v11

    invoke-interface {v11, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11
    :try_end_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    .local v11, "childElement":Lorg/w3c/dom/Element;
    nop

    .line 138
    nop

    .line 141
    :try_start_2
    invoke-interface {p2, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 142
    instance-of v12, v9, Lca/uhn/hl7v2/model/Group;

    if-eqz v12, :cond_2

    .line 143
    move-object v12, v9

    check-cast v12, Lca/uhn/hl7v2/model/Group;

    invoke-direct {p0, v12, v11}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->encode(Lca/uhn/hl7v2/model/Group;Lorg/w3c/dom/Element;)V

    .line 144
    goto :goto_2

    .line 145
    :cond_2
    instance-of v12, v9, Lca/uhn/hl7v2/model/Segment;

    if-eqz v12, :cond_3

    .line 146
    move-object v12, v9

    check-cast v12, Lca/uhn/hl7v2/model/Segment;

    invoke-virtual {p0, v12, v11}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->encode(Lca/uhn/hl7v2/model/Segment;Lorg/w3c/dom/Element;)Z

    .line 132
    .end local v9    # "rep":Lca/uhn/hl7v2/model/Structure;
    .end local v10    # "elementName":Ljava/lang/String;
    .end local v11    # "childElement":Lorg/w3c/dom/Element;
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 137
    .restart local v9    # "rep":Lca/uhn/hl7v2/model/Structure;
    .restart local v10    # "elementName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Lorg/w3c/dom/DOMException;
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t encode element "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in group "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    .end local v2    # "e":Lorg/w3c/dom/DOMException;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "reps":[Lca/uhn/hl7v2/model/Structure;
    .end local v9    # "rep":Lca/uhn/hl7v2/model/Structure;
    .end local v10    # "elementName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 151
    .restart local v2    # "e":Lorg/w3c/dom/DOMException;
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t encode group "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getChildElementsByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "theElement"    # Lorg/w3c/dom/Element;
    .param p2, "theName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 286
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .line 286
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 294
    .end local v2    # "i":I
    return-object v0

    .line 287
    .restart local v2    # "i":I
    :cond_0
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 288
    .local v3, "child":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->assertNamespaceURI(Ljava/lang/String;)V

    .line 290
    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v3    # "child":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getInstanceWithNoValidation()Lca/uhn/hl7v2/parser/XMLParser;
    .locals 2

    .line 394
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->noValidation()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 395
    .local v0, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getXMLParser()Lca/uhn/hl7v2/parser/XMLParser;

    move-result-object v1

    .line 396
    .local v1, "retVal":Lca/uhn/hl7v2/parser/XMLParser;
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .param p0, "args"    # [Ljava/lang/String;

    .line 338
    const/4 v0, 0x1

    array-length v1, p0

    if-eq v1, v0, :cond_0

    .line 339
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Usage: DefaultXMLParser pipe_encoded_file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 345
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "messageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 347
    .local v1, "fileLength":J
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 348
    .local v3, "r":Ljava/io/FileReader;
    long-to-int v4, v1

    new-array v4, v4, [C

    .line 349
    .local v4, "cbuf":[C
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reading message file ... "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/FileReader;->read([C)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " chars"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 351
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "messString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 354
    .local v6, "inParser":Lca/uhn/hl7v2/parser/Parser;
    const/4 v7, 0x0

    .line 355
    .local v7, "outParser":Lca/uhn/hl7v2/parser/Parser;
    new-instance v8, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v8}, Lca/uhn/hl7v2/parser/PipeParser;-><init>()V

    .line 356
    .local v8, "pp":Lca/uhn/hl7v2/parser/PipeParser;
    new-instance v9, Lca/uhn/hl7v2/parser/DefaultXMLParser;

    invoke-direct {v9}, Lca/uhn/hl7v2/parser/DefaultXMLParser;-><init>()V

    .line 357
    .local v9, "xp":Lca/uhn/hl7v2/parser/XMLParser;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Encoding: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lca/uhn/hl7v2/parser/PipeParser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v8, v5}, Lca/uhn/hl7v2/parser/PipeParser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 359
    move-object v6, v8

    .line 360
    move-object v7, v9

    .line 361
    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v9, v5}, Lca/uhn/hl7v2/parser/XMLParser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 363
    move-object v6, v9

    .line 364
    move-object v7, v8

    .line 367
    :cond_2
    :goto_0
    invoke-virtual {v6, v5}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v10

    .line 368
    .local v10, "mess":Lca/uhn/hl7v2/model/Message;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Got message of type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v7, v10}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v11

    .line 371
    .local v11, "otherEncoding":Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0    # "messageFile":Ljava/io/File;
    .end local v1    # "fileLength":J
    .end local v3    # "r":Ljava/io/FileReader;
    .end local v4    # "cbuf":[C
    .end local v5    # "messString":Ljava/lang/String;
    .end local v6    # "inParser":Lca/uhn/hl7v2/parser/Parser;
    .end local v7    # "outParser":Lca/uhn/hl7v2/parser/Parser;
    .end local v8    # "pp":Lca/uhn/hl7v2/parser/PipeParser;
    .end local v9    # "xp":Lca/uhn/hl7v2/parser/XMLParser;
    .end local v10    # "mess":Lca/uhn/hl7v2/model/Message;
    .end local v11    # "otherEncoding":Ljava/lang/String;
    goto :goto_1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected static makeGroupElementName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "messageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    sget-object v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;->ourForceGroupNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 328
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "ret":Ljava/lang/String;
    goto :goto_1

    .line 330
    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_1

    .line 319
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v0, "elementName":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "ret":Ljava/lang/String;
    nop

    .line 330
    :goto_1
    nop

    .line 333
    return-object v0
.end method

.method private parse(Lca/uhn/hl7v2/model/Group;Lorg/w3c/dom/Element;)V
    .locals 15
    .param p1, "groupObject"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "groupElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    move-object/from16 v6, p1

    .line 189
    invoke-interface/range {p1 .. p1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "childNames":[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lca/uhn/hl7v2/model/Group;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "messageName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 193
    .local v9, "allChildNodes":Lorg/w3c/dom/NodeList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 194
    .local v10, "unparsedElementList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 194
    .local v0, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 204
    .end local v0    # "i":I
    array-length v11, v7

    const/4 v0, 0x0

    move v12, v0

    :goto_1
    if-lt v12, v11, :cond_1

    .line 221
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 221
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 222
    .local v11, "segName":Ljava/lang/String;
    invoke-interface {v6, v11}, Lca/uhn/hl7v2/model/Group;->addNonstandardSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 223
    .local v12, "segIndexName":Ljava/lang/String;
    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    move-object v3, v8

    move-object v4, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parseReps(Lorg/w3c/dom/Element;Lca/uhn/hl7v2/model/Group;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v11    # "segName":Ljava/lang/String;
    .end local v12    # "segIndexName":Ljava/lang/String;
    goto :goto_2

    .line 204
    :cond_1
    aget-object v13, v7, v12

    .line 205
    .local v13, "nextChildName":Ljava/lang/String;
    move-object v0, v13

    .line 206
    .local v0, "childName":Ljava/lang/String;
    invoke-interface {v6, v13}, Lca/uhn/hl7v2/model/Group;->isGroup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    invoke-interface/range {p1 .. p1}, Lca/uhn/hl7v2/model/Group;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->makeGroupElementName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .end local v0    # "childName":Ljava/lang/String;
    .local v14, "childName":Ljava/lang/String;
    :cond_2
    move-object v14, v0

    invoke-interface {v10, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    sget-object v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;->log:Lorg/slf4j/Logger;

    const-string v1, "Skipping rep segment: {}"

    invoke-interface {v0, v1, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    goto :goto_3

    .line 217
    :cond_3
    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    move-object v3, v8

    move-object v4, v13

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parseReps(Lorg/w3c/dom/Element;Lca/uhn/hl7v2/model/Group;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v13    # "nextChildName":Ljava/lang/String;
    .end local v14    # "childName":Ljava/lang/String;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 195
    .local v0, "i":I
    :cond_4
    invoke-interface {v9, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 196
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 198
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    invoke-virtual {v4, v3}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->assertNamespaceURI(Ljava/lang/String;)V

    .line 199
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v1    # "node":Lorg/w3c/dom/Node;
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_4

    .line 194
    :cond_5
    move-object v4, p0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private parseRep(Lorg/w3c/dom/Element;Lca/uhn/hl7v2/model/Structure;)V
    .locals 3
    .param p1, "theElem"    # Lorg/w3c/dom/Element;
    .param p2, "theObj"    # Lca/uhn/hl7v2/model/Structure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 272
    instance-of v0, p2, Lca/uhn/hl7v2/model/Group;

    if-eqz v0, :cond_0

    .line 273
    move-object v0, p2

    check-cast v0, Lca/uhn/hl7v2/model/Group;

    invoke-direct {p0, v0, p1}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parse(Lca/uhn/hl7v2/model/Group;Lorg/w3c/dom/Element;)V

    .line 274
    goto :goto_0

    .line 275
    :cond_0
    instance-of v0, p2, Lca/uhn/hl7v2/model/Segment;

    if-eqz v0, :cond_1

    .line 276
    move-object v0, p2

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    invoke-virtual {p0, v0, p1}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parse(Lca/uhn/hl7v2/model/Segment;Lorg/w3c/dom/Element;)V

    .line 278
    :cond_1
    :goto_0
    sget-object v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;->log:Lorg/slf4j/Logger;

    const-string v1, "Parsed element: {}"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method private parseReps(Lorg/w3c/dom/Element;Lca/uhn/hl7v2/model/Group;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "groupElement"    # Lorg/w3c/dom/Element;
    .param p2, "groupObject"    # Lca/uhn/hl7v2/model/Group;
    .param p3, "messageName"    # Ljava/lang/String;
    .param p4, "childName"    # Ljava/lang/String;
    .param p5, "childIndexName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 231
    invoke-static {p3, p4}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->makeGroupElementName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "groupName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->getChildElementsByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 233
    .local v1, "reps":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    sget-object v2, Lca/uhn/hl7v2/parser/DefaultXMLParser;->log:Lorg/slf4j/Logger;

    const-string v3, "# of elements matching {}: {}"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    invoke-interface {p2, p5}, Lca/uhn/hl7v2/model/Group;->isRepeating(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    const/4 v2, 0x0

    .line 236
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 239
    .end local v2    # "i":I
    goto/16 :goto_3

    .line 237
    .restart local v2    # "i":I
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {p2, p5, v2}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parseRep(Lorg/w3c/dom/Element;Lca/uhn/hl7v2/model/Structure;)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 241
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {p2, p5, v2}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parseRep(Lorg/w3c/dom/Element;Lca/uhn/hl7v2/model/Structure;)V

    .line 250
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 252
    move v2, v3

    .line 254
    .restart local v2    # "i":I
    const/4 v2, 0x1

    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 259
    goto :goto_3

    .line 255
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "newIndexName":Ljava/lang/String;
    invoke-interface {p2, v3}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v4

    .line 257
    .local v4, "st":Lca/uhn/hl7v2/model/Structure;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5, v4}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parseRep(Lorg/w3c/dom/Element;Lca/uhn/hl7v2/model/Structure;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v4    # "st":Lca/uhn/hl7v2/model/Structure;
    add-int/lit8 v2, v2, 0x1

    .line 254
    .end local v3    # "newIndexName":Ljava/lang/String;
    goto :goto_1

    .line 259
    :catch_0
    move-exception v3

    .line 260
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lca/uhn/hl7v2/parser/DefaultXMLParser;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Issue Parsing: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 261
    invoke-interface {p2, p4}, Lca/uhn/hl7v2/model/Group;->addNonstandardSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "newIndexName":Ljava/lang/String;
    move v5, v2

    .line 262
    .local v5, "j":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 262
    .end local v2    # "i":I
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "newIndexName":Ljava/lang/String;
    .end local v5    # "j":I
    goto :goto_3

    .line 263
    .restart local v2    # "i":I
    .restart local v3    # "t":Ljava/lang/Throwable;
    .restart local v4    # "newIndexName":Ljava/lang/String;
    .restart local v5    # "j":I
    :cond_4
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    sub-int v7, v5, v2

    invoke-interface {p2, v4, v7}, Lca/uhn/hl7v2/model/Group;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parseRep(Lorg/w3c/dom/Element;Lca/uhn/hl7v2/model/Structure;)V

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 269
    .end local v2    # "i":I
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "newIndexName":Ljava/lang/String;
    .end local v5    # "j":I
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public encodeDocument(Lca/uhn/hl7v2/model/Message;)Lorg/w3c/dom/Document;
    .locals 6
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "messageClassName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "messageName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lca/uhn/hl7v2/util/XMLUtils;->emptyDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 113
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->encode(Lca/uhn/hl7v2/model/Group;Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-object v2

    .line 115
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t create XML document - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "theString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 383
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parseStringIntoDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 384
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parse(Lca/uhn/hl7v2/model/Group;Lorg/w3c/dom/Element;)V

    .line 386
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->applySuperStructureName(Lca/uhn/hl7v2/model/Message;)V

    .line 387
    return-void
.end method

.method public parseDocument(Lorg/w3c/dom/Document;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "xmlMessage"    # Lorg/w3c/dom/Document;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 174
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->assertNamespaceURI(Ljava/lang/String;)V

    .line 176
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->instantiateMessage(Ljava/lang/String;Ljava/lang/String;Z)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    .line 180
    .local v0, "message":Lca/uhn/hl7v2/model/Message;
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lca/uhn/hl7v2/parser/DefaultXMLParser;->parse(Lca/uhn/hl7v2/model/Group;Lorg/w3c/dom/Element;)V

    .line 181
    return-object v0
.end method
