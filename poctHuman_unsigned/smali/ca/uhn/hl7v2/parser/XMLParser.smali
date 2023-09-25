.class public abstract Lca/uhn/hl7v2/parser/XMLParser;
.super Lca/uhn/hl7v2/parser/Parser;
.source "XMLParser.java"


# static fields
.field private static final ESCAPE_ATTRNAME:Ljava/lang/String; = "V"

.field private static final ESCAPE_NODENAME:Ljava/lang/String; = "escape"

.field protected static final NS:Ljava/lang/String; = "urn:hl7-org:v2xml"

.field private static final NS_PATTERN:Ljava/util/regex/Pattern;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private textEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-class v0, Lca/uhn/hl7v2/parser/XMLParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/XMLParser;->log:Lorg/slf4j/Logger;

    .line 80
    const-string v0, "xmlns(.*)=\"urn:hl7-org:v2xml\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/XMLParser;->NS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/Parser;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 97
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/Parser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "theFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 106
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/Parser;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 108
    return-void
.end method

.method private encode(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)Z
    .locals 2
    .param p1, "datatypeObject"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "datatypeElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "hasData":Z
    instance-of v1, p1, Lca/uhn/hl7v2/model/Varies;

    if-eqz v1, :cond_0

    .line 567
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/model/Varies;

    invoke-direct {p0, v1, p2}, Lca/uhn/hl7v2/parser/XMLParser;->encodeVaries(Lca/uhn/hl7v2/model/Varies;Lorg/w3c/dom/Element;)Z

    move-result v0

    .line 568
    goto :goto_0

    :cond_0
    instance-of v1, p1, Lca/uhn/hl7v2/model/Primitive;

    if-eqz v1, :cond_1

    .line 569
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/model/Primitive;

    invoke-direct {p0, v1, p2}, Lca/uhn/hl7v2/parser/XMLParser;->encodePrimitive(Lca/uhn/hl7v2/model/Primitive;Lorg/w3c/dom/Element;)Z

    move-result v0

    .line 570
    goto :goto_0

    :cond_1
    instance-of v1, p1, Lca/uhn/hl7v2/model/Composite;

    if-eqz v1, :cond_2

    .line 571
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/model/Composite;

    invoke-direct {p0, v1, p2}, Lca/uhn/hl7v2/parser/XMLParser;->encodeComposite(Lca/uhn/hl7v2/model/Composite;Lorg/w3c/dom/Element;)Z

    move-result v0

    .line 573
    :cond_2
    :goto_0
    return v0
.end method

.method private encodeComposite(Lca/uhn/hl7v2/model/Composite;Lorg/w3c/dom/Element;)Z
    .locals 9
    .param p1, "datatypeObject"    # Lca/uhn/hl7v2/model/Composite;
    .param p2, "datatypeElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 662
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 663
    .local v0, "components":[Lca/uhn/hl7v2/model/Type;
    const/4 v1, 0x0

    .line 664
    .local v1, "hasValue":Z
    const/4 v2, 0x0

    .line 664
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 677
    .end local v2    # "i":I
    return v1

    .line 665
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, p1, v3}, Lca/uhn/hl7v2/parser/XMLParser;->makeElementName(Lca/uhn/hl7v2/model/Composite;I)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 667
    .local v4, "newNode":Lorg/w3c/dom/Element;
    aget-object v5, v0, v2

    invoke-direct {p0, v5, v4}, Lca/uhn/hl7v2/parser/XMLParser;->encode(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)Z

    move-result v5

    .line 668
    .local v5, "componentHasValue":Z
    if-eqz v5, :cond_1

    .line 670
    :try_start_0
    invoke-interface {p2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    nop

    .line 674
    const/4 v1, 0x1

    .line 674
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newNode":Lorg/w3c/dom/Element;
    .end local v5    # "componentHasValue":Z
    goto :goto_1

    .line 671
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "newNode":Lorg/w3c/dom/Element;
    .restart local v5    # "componentHasValue":Z
    :catch_0
    move-exception v6

    .line 672
    .local v6, "e":Lorg/w3c/dom/DOMException;
    new-instance v7, Lca/uhn/hl7v2/model/DataTypeException;

    const-string v8, "DOMException encoding Composite: "

    invoke-direct {v7, v8, v6}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 664
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newNode":Lorg/w3c/dom/Element;
    .end local v5    # "componentHasValue":Z
    .end local v6    # "e":Lorg/w3c/dom/DOMException;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private encodePrimitive(Lca/uhn/hl7v2/model/Primitive;Lorg/w3c/dom/Element;)Z
    .locals 11
    .param p1, "datatypeObject"    # Lca/uhn/hl7v2/model/Primitive;
    .param p2, "datatypeElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 596
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 598
    .local v1, "hasValue":Z
    :goto_0
    if-eqz v1, :cond_7

    .line 600
    :try_start_0
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Primitive;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-static {v2}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v2

    .line 601
    .local v2, "ec":Lca/uhn/hl7v2/parser/EncodingCharacters;
    invoke-virtual {v2}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v3

    .line 603
    .local v3, "esc":C
    const/4 v4, 0x0

    .line 604
    .local v4, "oldpos":I
    const/4 v5, 0x0

    .line 607
    .local v5, "escaping":Z
    :goto_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v7, v6

    .line 607
    .local v7, "pos":I
    if-gez v6, :cond_2

    .line 634
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v4, v6, :cond_7

    .line 636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-eqz v5, :cond_1

    .line 640
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 644
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 643
    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 647
    .end local v2    # "ec":Lca/uhn/hl7v2/parser/EncodingCharacters;
    .end local v3    # "esc":C
    .end local v4    # "oldpos":I
    .end local v5    # "escaping":Z
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "pos":I
    goto :goto_4

    .line 607
    .restart local v2    # "ec":Lca/uhn/hl7v2/parser/EncodingCharacters;
    .restart local v3    # "esc":C
    .restart local v4    # "oldpos":I
    .restart local v5    # "escaping":Z
    .restart local v7    # "pos":I
    :cond_2
    nop

    .line 610
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 611
    .local v6, "v":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 613
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 614
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 615
    invoke-interface {v8, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    .line 614
    invoke-interface {p2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 616
    :cond_3
    const/4 v5, 0x1

    .line 617
    goto :goto_3

    .line 618
    :cond_4
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "H"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "N"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    .line 627
    :cond_5
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 628
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    .line 627
    invoke-interface {p2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 620
    :cond_6
    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 621
    const-string v9, "escape"

    .line 620
    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 622
    .local v8, "escape":Lorg/w3c/dom/Element;
    const-string v9, "V"

    invoke-interface {v8, v9, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-interface {p2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    const/4 v5, 0x0

    .line 625
    .end local v8    # "escape":Lorg/w3c/dom/Element;
    nop

    .line 631
    :goto_3
    add-int/lit8 v4, v7, 0x1

    .line 631
    .end local v6    # "v":Ljava/lang/String;
    .end local v7    # "pos":I
    goto/16 :goto_1

    .line 647
    .end local v2    # "ec":Lca/uhn/hl7v2/parser/EncodingCharacters;
    .end local v3    # "esc":C
    .end local v4    # "oldpos":I
    .end local v5    # "escaping":Z
    :catch_0
    move-exception v2

    .line 648
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lca/uhn/hl7v2/model/DataTypeException;

    const-string v4, "Exception encoding Primitive: "

    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/model/DataTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 652
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    return v1
.end method

.method private encodeVaries(Lca/uhn/hl7v2/model/Varies;Lorg/w3c/dom/Element;)Z
    .locals 2
    .param p1, "datatypeObject"    # Lca/uhn/hl7v2/model/Varies;
    .param p2, "datatypeElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "hasData":Z
    invoke-virtual {p1}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 584
    invoke-virtual {p1}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lca/uhn/hl7v2/parser/XMLParser;->encode(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)Z

    move-result v0

    .line 586
    :cond_0
    return v0
.end method

.method private hasChildElement(Lorg/w3c/dom/Element;)Z
    .locals 5
    .param p1, "e"    # Lorg/w3c/dom/Element;

    .line 398
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 399
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 400
    .local v1, "hasElement":Z
    const/4 v2, 0x0

    .line 401
    .local v2, "c":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v1, :cond_0

    goto :goto_1

    .line 402
    :cond_0
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 403
    const-string v3, "escape"

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 404
    const/4 v1, 0x1

    .line 406
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_2
    :goto_1
    return v1
.end method

.method private makeElementName(Lca/uhn/hl7v2/model/Composite;I)Ljava/lang/String;
    .locals 2
    .param p1, "composite"    # Lca/uhn/hl7v2/model/Composite;
    .param p2, "child"    # I

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Composite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeElementName(Lca/uhn/hl7v2/model/Segment;I)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "child"    # I

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseComposite(Lca/uhn/hl7v2/model/Composite;Lorg/w3c/dom/Element;)V
    .locals 11
    .param p1, "datatypeObject"    # Lca/uhn/hl7v2/model/Composite;
    .param p2, "datatypeElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 500
    instance-of v0, p1, Lca/uhn/hl7v2/model/GenericComposite;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 502
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 503
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .line 504
    .local v2, "compNum":I
    const/4 v3, 0x0

    .line 504
    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 522
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "compNum":I
    .end local v3    # "i":I
    goto/16 :goto_3

    .line 505
    .restart local v0    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "compNum":I
    .restart local v3    # "i":I
    :cond_0
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v1, :cond_2

    .line 506
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 507
    .local v4, "nextElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lca/uhn/hl7v2/parser/XMLParser;->assertNamespaceURI(Ljava/lang/String;)V

    .line 508
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "localName":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 510
    .local v6, "dotIndex":I
    const/4 v7, -0x1

    if-le v6, v7, :cond_1

    .line 511
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 512
    goto :goto_1

    .line 513
    :cond_1
    sget-object v7, Lca/uhn/hl7v2/parser/XMLParser;->log:Lorg/slf4j/Logger;

    .line 514
    const-string v8, "Datatype element {} doesn\'t have a valid numbered name, usgin default index of {}"

    .line 515
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 513
    invoke-interface {v7, v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    :goto_1
    invoke-interface {p1, v2}, Lca/uhn/hl7v2/model/Composite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v7

    .line 518
    .local v7, "nextComponent":Lca/uhn/hl7v2/model/Type;
    invoke-virtual {p0, v7, v4}, Lca/uhn/hl7v2/parser/XMLParser;->parse(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)V

    .line 519
    add-int/2addr v2, v1

    .line 504
    .end local v4    # "nextElement":Lorg/w3c/dom/Element;
    .end local v5    # "localName":Ljava/lang/String;
    .end local v6    # "dotIndex":I
    .end local v7    # "nextComponent":Lca/uhn/hl7v2/model/Type;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "compNum":I
    .end local v3    # "i":I
    :cond_3
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 524
    .local v0, "children":[Lca/uhn/hl7v2/model/Type;
    const/4 v2, 0x0

    .line 524
    .local v2, "i":I
    :goto_2
    const/4 v3, 0x0

    array-length v4, v0

    if-lt v2, v4, :cond_6

    .line 532
    .end local v2    # "i":I
    move v2, v3

    .line 535
    .local v2, "nextExtraCmpIndex":I
    :cond_4
    const/4 v4, 0x0

    .line 536
    .local v4, "foundExtraComponent":Z
    const-string v5, "urn:hl7-org:v2xml"

    array-length v6, v0

    add-int/2addr v6, v2

    add-int/2addr v6, v1

    invoke-direct {p0, p1, v6}, Lca/uhn/hl7v2/parser/XMLParser;->makeElementName(Lca/uhn/hl7v2/model/Composite;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 537
    .local v5, "matchingElements":Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_5

    .line 538
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Composite;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v6

    invoke-virtual {v6, v2}, Lca/uhn/hl7v2/model/ExtraComponents;->getComponent(I)Lca/uhn/hl7v2/model/Variable;

    move-result-object v6

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v6, v7}, Lca/uhn/hl7v2/parser/XMLParser;->parse(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)V

    .line 539
    const/4 v4, 0x1

    .line 541
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 542
    .end local v5    # "matchingElements":Lorg/w3c/dom/NodeList;
    if-nez v4, :cond_4

    .line 546
    .end local v0    # "children":[Lca/uhn/hl7v2/model/Type;
    .end local v2    # "nextExtraCmpIndex":I
    .end local v4    # "foundExtraComponent":Z
    :goto_3
    return-void

    .line 525
    .restart local v0    # "children":[Lca/uhn/hl7v2/model/Type;
    .local v2, "i":I
    :cond_6
    const-string v4, "urn:hl7-org:v2xml"

    .line 526
    add-int/lit8 v5, v2, 0x1

    .line 525
    invoke-direct {p0, p1, v5}, Lca/uhn/hl7v2/parser/XMLParser;->makeElementName(Lca/uhn/hl7v2/model/Composite;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 527
    .local v4, "matchingElements":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_7

    .line 528
    aget-object v5, v0, v2

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v5, v3}, Lca/uhn/hl7v2/parser/XMLParser;->parse(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)V

    .line 524
    .end local v4    # "matchingElements":Lorg/w3c/dom/NodeList;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected static parseLeaf(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "startAt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 755
    const-string v0, ""

    .line 756
    .local v0, "prefix":Ljava/lang/String;
    sget-object v1, Lca/uhn/hl7v2/parser/XMLParser;->NS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 757
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 758
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "ns":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    .end local v2    # "ns":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 765
    .local v2, "tagStart":I
    if-gez v2, :cond_1

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 767
    :cond_1
    const-string v4, ">"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, v3

    .line 768
    .local v4, "valStart":I
    const-string v3, "<"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 771
    .local v3, "valEnd":I
    if-ltz v2, :cond_2

    if-lt v3, v4, :cond_2

    .line 772
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 773
    .local v5, "value":Ljava/lang/String;
    nop

    .line 774
    nop

    .line 780
    const-string v6, "&quot;"

    const-string v7, "\""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 781
    const-string v6, "&apos;"

    const-string v7, "\'"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 782
    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 783
    const-string v6, "&lt;"

    const-string v7, "<"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 784
    const-string v6, "&gt;"

    const-string v7, ">"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 786
    return-object v5

    .line 774
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    new-instance v5, Lca/uhn/hl7v2/HL7Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t find "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in message beginning: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const/4 v7, 0x0

    const/16 v8, 0x96

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 776
    sget-object v7, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    .line 774
    invoke-direct {v5, v6, v7}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v5
.end method

.method private parsePrimitive(Lca/uhn/hl7v2/model/Primitive;Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "datatypeObject"    # Lca/uhn/hl7v2/model/Primitive;
    .param p2, "datatypeElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 417
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 418
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 419
    .local v2, "c":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 449
    .end local v2    # "c":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 450
    return-void

    .line 420
    .restart local v2    # "c":I
    :cond_0
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 422
    .local v3, "child":Lorg/w3c/dom/Node;
    :try_start_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 423
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 425
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p0, v5}, Lca/uhn/hl7v2/parser/XMLParser;->keepAsOriginal(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 426
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    goto :goto_1

    .line 428
    :cond_1
    invoke-virtual {p0, v4}, Lca/uhn/hl7v2/parser/XMLParser;->removeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 433
    const-string v4, "escape"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 434
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lca/uhn/hl7v2/parser/XMLParser;->assertNamespaceURI(Ljava/lang/String;)V

    .line 435
    nop

    .line 436
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Primitive;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    .line 435
    invoke-static {v4}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v4

    .line 437
    .local v4, "ec":Lca/uhn/hl7v2/parser/EncodingCharacters;
    move-object v5, v3

    check-cast v5, Lorg/w3c/dom/Element;

    .line 438
    .local v5, "elem":Lorg/w3c/dom/Element;
    const-string v6, "V"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 439
    .local v6, "attr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 440
    invoke-virtual {v4}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v4}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v4    # "ec":Lca/uhn/hl7v2/parser/EncodingCharacters;
    .end local v5    # "elem":Lorg/w3c/dom/Element;
    .end local v6    # "attr":Ljava/lang/String;
    goto :goto_1

    :catch_0
    move-exception v4

    .line 445
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lca/uhn/hl7v2/parser/XMLParser;->log:Lorg/slf4j/Logger;

    const-string v6, "Error parsing primitive value from TEXT_NODE"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    .end local v3    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private parseReps(Lca/uhn/hl7v2/model/Segment;Lorg/w3c/dom/Element;Ljava/lang/String;I)V
    .locals 4
    .param p1, "segmentObject"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "segmentElement"    # Lorg/w3c/dom/Element;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "fieldNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 321
    invoke-interface {p2, p3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 322
    .local v0, "reps":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 322
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 325
    .end local v1    # "i":I
    return-void

    .line 323
    .restart local v1    # "i":I
    :cond_0
    invoke-interface {p1, p4, v1}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2, v3}, Lca/uhn/hl7v2/parser/XMLParser;->parse(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseVaries(Lca/uhn/hl7v2/model/Varies;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "datatypeObject"    # Lca/uhn/hl7v2/model/Varies;
    .param p2, "datatypeElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 385
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/parser/XMLParser;->hasChildElement(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lca/uhn/hl7v2/model/GenericPrimitive;

    invoke-virtual {p1}, Lca/uhn/hl7v2/model/Varies;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/GenericPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    invoke-virtual {p1, v0}, Lca/uhn/hl7v2/model/Varies;->setData(Lca/uhn/hl7v2/model/Type;)V

    .line 388
    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/model/GenericComposite;

    invoke-virtual {p1}, Lca/uhn/hl7v2/model/Varies;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/model/GenericComposite;-><init>(Lca/uhn/hl7v2/model/Message;)V

    invoke-virtual {p1, v0}, Lca/uhn/hl7v2/model/Varies;->setData(Lca/uhn/hl7v2/model/Type;)V

    .line 393
    :goto_0
    invoke-virtual {p1}, Lca/uhn/hl7v2/model/Varies;->getData()Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lca/uhn/hl7v2/parser/XMLParser;->parse(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)V

    .line 394
    return-void
.end method


# virtual methods
.method protected assertNamespaceURI(Ljava/lang/String;)V
    .locals 2
    .param p1, "ns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 271
    const-string v0, "urn:hl7-org:v2xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    const-string v1, "Namespace URI must be urn:hl7-org:v2xml"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    return-void
.end method

.method protected doEncode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 236
    instance-of v0, p1, Lca/uhn/hl7v2/model/GenericMessage;

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    .line 238
    const-string v1, "Can\'t XML-encode a GenericMessage.  Message must have a recognized structure."

    .line 237
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/XMLParser;->encodeDocument(Lca/uhn/hl7v2/model/Message;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 246
    .local v0, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/ParserConfiguration;->isPrettyPrintWhenEncodingXml()Z

    move-result v1

    invoke-static {v0, v1}, Lca/uhn/hl7v2/util/XMLUtils;->serialize(Lorg/w3c/dom/Document;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    const-string v3, "Exception serializing XML document to string"

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected doEncode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 222
    const-string v0, "XML"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;

    const-string v1, "XMLParser supports only XML encoding"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/XMLParser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doEncode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 2
    .param p1, "structure"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 797
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doEncode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 818
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doParse(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/XMLParser;->parseStringIntoDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 193
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v0, p2}, Lca/uhn/hl7v2/parser/XMLParser;->parseDocument(Lorg/w3c/dom/Document;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 195
    .local v1, "m":Lca/uhn/hl7v2/model/Message;
    return-object v1
.end method

.method protected doParseForSpecificPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "theMessage"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .param p3, "thePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 808
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Lca/uhn/hl7v2/model/Segment;Lorg/w3c/dom/Element;)Z
    .locals 11
    .param p1, "segmentObject"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "segmentElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "hasValue":Z
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->numFields()I

    move-result v1

    .line 340
    .local v1, "n":I
    const/4 v2, 0x1

    .line 340
    .local v2, "i":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 356
    .end local v2    # "i":I
    return v0

    .line 341
    .restart local v2    # "i":I
    :cond_0
    invoke-direct {p0, p1, v2}, Lca/uhn/hl7v2/parser/XMLParser;->makeElementName(Lca/uhn/hl7v2/model/Segment;I)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p1, v2}, Lca/uhn/hl7v2/model/Segment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v4

    .line 343
    .local v4, "reps":[Lca/uhn/hl7v2/model/Type;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_1

    .line 340
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "reps":[Lca/uhn/hl7v2/model/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "reps":[Lca/uhn/hl7v2/model/Type;
    :cond_1
    aget-object v7, v4, v6

    .line 344
    .local v7, "rep":Lca/uhn/hl7v2/model/Type;
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 345
    .local v8, "newNode":Lorg/w3c/dom/Element;
    invoke-direct {p0, v7, v8}, Lca/uhn/hl7v2/parser/XMLParser;->encode(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)Z

    move-result v9

    .line 346
    .local v9, "componentHasValue":Z
    if-eqz v9, :cond_2

    .line 348
    :try_start_0
    invoke-interface {p2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    nop

    .line 352
    const/4 v0, 0x1

    .line 352
    .end local v7    # "rep":Lca/uhn/hl7v2/model/Type;
    .end local v8    # "newNode":Lorg/w3c/dom/Element;
    .end local v9    # "componentHasValue":Z
    goto :goto_2

    .line 349
    .restart local v7    # "rep":Lca/uhn/hl7v2/model/Type;
    .restart local v8    # "newNode":Lorg/w3c/dom/Element;
    .restart local v9    # "componentHasValue":Z
    :catch_0
    move-exception v5

    .line 350
    .local v5, "e":Lorg/w3c/dom/DOMException;
    new-instance v6, Lca/uhn/hl7v2/HL7Exception;

    const-string v10, "DOMException encoding Segment: "

    invoke-direct {v6, v10, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 343
    .end local v5    # "e":Lorg/w3c/dom/DOMException;
    .end local v7    # "rep":Lca/uhn/hl7v2/model/Type;
    .end local v8    # "newNode":Lorg/w3c/dom/Element;
    .end local v9    # "componentHasValue":Z
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public abstract encodeDocument(Lca/uhn/hl7v2/model/Message;)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public getAckID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 723
    const/4 v0, 0x0

    .line 725
    .local v0, "ackID":Ljava/lang/String;
    :try_start_0
    const-string v1, "msa.2"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lca/uhn/hl7v2/parser/XMLParser;->parseLeaf(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 726
    goto :goto_0

    :catch_0
    move-exception v1

    .line 728
    :goto_0
    return-object v0
.end method

.method public getCriticalResponseData(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 697
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/XMLParser;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lca/uhn/hl7v2/parser/Parser;->makeControlMSH(Ljava/lang/String;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v1

    .line 700
    .local v1, "criticalData":Lca/uhn/hl7v2/model/Segment;
    const-string v2, "MSH.1"

    const/4 v8, 0x0

    invoke-static {p1, v2, v8}, Lca/uhn/hl7v2/parser/XMLParser;->parseLeaf(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 701
    const-string v2, "MSH.2"

    invoke-static {p1, v2, v8}, Lca/uhn/hl7v2/parser/XMLParser;->parseLeaf(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x2

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 702
    const-string v2, "MSH.10"

    invoke-static {p1, v2, v8}, Lca/uhn/hl7v2/parser/XMLParser;->parseLeaf(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0xa

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 703
    const-string v2, "MSH.11"

    invoke-static {p1, v2, v8}, Lca/uhn/hl7v2/parser/XMLParser;->parseLeaf(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, "procID":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 708
    .end local v2    # "procID":Ljava/lang/String;
    .local v8, "procID":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v8, v2

    goto :goto_2

    .line 705
    .end local v8    # "procID":Ljava/lang/String;
    .restart local v2    # "procID":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v3, "PT.1"

    const-string v4, "MSH.11"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-static {p1, v3, v4}, Lca/uhn/hl7v2/parser/XMLParser;->parseLeaf(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 708
    .end local v2    # "procID":Ljava/lang/String;
    .restart local v8    # "procID":Ljava/lang/String;
    :goto_2
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v1

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lca/uhn/hl7v2/util/Terser;->set(Lca/uhn/hl7v2/model/Segment;IIIILjava/lang/String;)V

    .line 710
    return-object v1
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "XML"

    return-object v0
.end method

.method public getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 119
    invoke-static {p1}, Lca/uhn/hl7v2/parser/EncodingDetector;->isXmlEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getKeepAsOriginalNodes()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getXmlDisableWhitespaceTrimmingOnNodeNames()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getXmlDisableWhitespaceTrimmingOnNodeNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTextEncoding()Ljava/lang/String;
    .locals 1

    .line 850
    iget-object v0, p0, Lca/uhn/hl7v2/parser/XMLParser;->textEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 732
    const-string v0, "MSH.12"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lca/uhn/hl7v2/parser/XMLParser;->parseLeaf(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "version":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 734
    :cond_0
    const-string v1, "VID.1"

    const-string v2, "MSH.12"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lca/uhn/hl7v2/parser/XMLParser;->parseLeaf(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 736
    :cond_1
    return-object v0
.end method

.method protected keepAsOriginal(Lorg/w3c/dom/Node;)Z
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 461
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;->isXmlDisableWhitespaceTrimmingOnAllNodes()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 462
    return v1

    .line 464
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;->getXmlDisableWhitespaceTrimmingOnNodeNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .locals 2
    .param p1, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 840
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lca/uhn/hl7v2/model/Segment;Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "segmentObject"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "segmentElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 287
    .local v0, "done":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 288
    .local v1, "all":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .line 288
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 308
    .end local v2    # "i":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OBX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/HapiContext;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lca/uhn/hl7v2/parser/FixFieldDataType;->fixOBX5(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 312
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MFE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Message;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v2

    sget-object v3, Lca/uhn/hl7v2/Version;->V23:Lca/uhn/hl7v2/Version;

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/Version;->isGreaterThan(Lca/uhn/hl7v2/Version;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v2

    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/HapiContext;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lca/uhn/hl7v2/parser/FixFieldDataType;->fixMFE3(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/ModelClassFactory;Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 316
    :cond_1
    return-void

    .line 289
    .restart local v2    # "i":I
    :cond_2
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "elementName":Ljava/lang/String;
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 292
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lca/uhn/hl7v2/parser/XMLParser;->assertNamespaceURI(Ljava/lang/String;)V

    .line 293
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 296
    .local v4, "index":I
    if-ltz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 297
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "fieldNumString":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 299
    .local v6, "fieldNum":I
    invoke-direct {p0, p1, p2, v3, v6}, Lca/uhn/hl7v2/parser/XMLParser;->parseReps(Lca/uhn/hl7v2/model/Segment;Lorg/w3c/dom/Element;Ljava/lang/String;I)V

    .line 300
    .end local v5    # "fieldNumString":Ljava/lang/String;
    .end local v6    # "fieldNum":I
    goto :goto_1

    .line 301
    :cond_3
    sget-object v5, Lca/uhn/hl7v2/parser/XMLParser;->log:Lorg/slf4j/Logger;

    const-string v6, "Child of segment {} doesn\'t look like a field {}"

    .line 302
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-interface {v5, v6, v7, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .end local v3    # "elementName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public parse(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .locals 2
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 829
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lca/uhn/hl7v2/model/Type;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "datatypeObject"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "datatypeElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 367
    instance-of v0, p1, Lca/uhn/hl7v2/model/Varies;

    if-eqz v0, :cond_0

    .line 368
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Varies;

    invoke-direct {p0, v0, p2}, Lca/uhn/hl7v2/parser/XMLParser;->parseVaries(Lca/uhn/hl7v2/model/Varies;Lorg/w3c/dom/Element;)V

    .line 369
    goto :goto_0

    :cond_0
    instance-of v0, p1, Lca/uhn/hl7v2/model/Primitive;

    if-eqz v0, :cond_1

    .line 370
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Primitive;

    invoke-direct {p0, v0, p2}, Lca/uhn/hl7v2/parser/XMLParser;->parsePrimitive(Lca/uhn/hl7v2/model/Primitive;Lorg/w3c/dom/Element;)V

    .line 371
    goto :goto_0

    :cond_1
    instance-of v0, p1, Lca/uhn/hl7v2/model/Composite;

    if-eqz v0, :cond_2

    .line 372
    move-object v0, p1

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    invoke-direct {p0, v0, p2}, Lca/uhn/hl7v2/parser/XMLParser;->parseComposite(Lca/uhn/hl7v2/model/Composite;Lorg/w3c/dom/Element;)V

    .line 374
    :cond_2
    :goto_0
    return-void
.end method

.method public abstract parseDocument(Lorg/w3c/dom/Document;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method protected declared-synchronized parseStringIntoDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_0
    invoke-static {p1}, Lca/uhn/hl7v2/util/XMLUtils;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 206
    .end local p1    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 208
    .restart local p1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Exception parsing XML"

    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method protected removeWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 474
    const/16 v0, 0x20

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 475
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 476
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 478
    const/4 v0, 0x1

    .line 479
    .local v0, "repeatedSpacesExist":Z
    :goto_0
    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 480
    :cond_0
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 481
    .local v1, "loc":I
    if-gez v1, :cond_1

    .line 482
    const/4 v0, 0x0

    .line 483
    goto :goto_0

    .line 484
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .local v2, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 488
    .end local v1    # "loc":I
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    goto :goto_0
.end method

.method public setKeepAsOriginalNodes([Ljava/lang/String;)V
    .locals 1
    .param p1, "keepAsOriginalNodes"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/XMLParser;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/ParserConfiguration;->setXmlDisableWhitespaceTrimmingOnNodeNames([Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setTextEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "textEncoding"    # Ljava/lang/String;

    .line 860
    iput-object p1, p0, Lca/uhn/hl7v2/parser/XMLParser;->textEncoding:Ljava/lang/String;

    .line 861
    return-void
.end method
