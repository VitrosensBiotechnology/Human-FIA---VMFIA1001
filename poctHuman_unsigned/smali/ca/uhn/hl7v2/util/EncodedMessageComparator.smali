.class public Lca/uhn/hl7v2/util/EncodedMessageComparator;
.super Ljava/lang/Object;
.source "EncodedMessageComparator.java"


# static fields
.field static final parser:Lca/uhn/hl7v2/parser/GenericParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lca/uhn/hl7v2/parser/GenericParser;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/GenericParser;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/util/EncodedMessageComparator;->parser:Lca/uhn/hl7v2/parser/GenericParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clean(Lorg/w3c/dom/Element;)V
    .locals 5
    .param p0, "elem"    # Lorg/w3c/dom/Element;

    .line 110
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 111
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 111
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 122
    .end local v1    # "i":I
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 124
    .local v2, "attributes":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 125
    .local v3, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 125
    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 129
    .end local v1    # "i":I
    const/4 v1, 0x0

    .line 129
    .restart local v1    # "i":I
    :goto_2
    array-length v4, v3

    if-lt v1, v4, :cond_0

    .line 133
    .end local v1    # "i":I
    return-void

    .line 130
    .restart local v1    # "i":I
    :cond_0
    aget-object v4, v3, v1

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    :cond_1
    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    .end local v2    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "names":[Ljava/lang/String;
    :cond_2
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 113
    .local v2, "child":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_4

    .line 114
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 117
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 118
    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-static {v3}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->clean(Lorg/w3c/dom/Element;)V

    .line 118
    .end local v2    # "child":Lorg/w3c/dom/Node;
    goto :goto_4

    .line 116
    .restart local v2    # "child":Lorg/w3c/dom/Node;
    :cond_4
    :goto_3
    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 117
    nop

    .line 111
    .end local v2    # "child":Lorg/w3c/dom/Node;
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static equivalent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "message1"    # Ljava/lang/String;
    .param p1, "message2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 150
    invoke-static {p0, p1}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->standardize(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/util/Pair;

    move-result-object v0

    .line 151
    .local v0, "messages":Lca/uhn/hl7v2/util/Pair;, "Lca/uhn/hl7v2/util/Pair<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lca/uhn/hl7v2/util/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lca/uhn/hl7v2/util/Pair;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static safeER7Conversion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "xmlMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 182
    sget-object v0, Lca/uhn/hl7v2/util/EncodedMessageComparator;->parser:Lca/uhn/hl7v2/parser/GenericParser;

    invoke-virtual {v0, p0}, Lca/uhn/hl7v2/parser/GenericParser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    .line 184
    .local v0, "m":Lca/uhn/hl7v2/model/Message;
    sget-object v1, Lca/uhn/hl7v2/util/EncodedMessageComparator;->parser:Lca/uhn/hl7v2/parser/GenericParser;

    const-string v2, "XML"

    invoke-virtual {v1, v0, v2}, Lca/uhn/hl7v2/parser/GenericParser;->encode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "check":Ljava/lang/String;
    invoke-static {p0, v1}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->equivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    const-string v3, "Parsed and encoded message not equivalent to original (possibilities: invalid message, bug in parser)"

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_0
    sget-object v2, Lca/uhn/hl7v2/util/EncodedMessageComparator;->parser:Lca/uhn/hl7v2/parser/GenericParser;

    const-string v3, "VB"

    invoke-virtual {v2, v0, v3}, Lca/uhn/hl7v2/parser/GenericParser;->encode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static standardize(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/util/Pair;
    .locals 6
    .param p0, "message1"    # Ljava/lang/String;
    .param p1, "message2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lca/uhn/hl7v2/util/Pair<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 155
    sget-object v0, Lca/uhn/hl7v2/util/EncodedMessageComparator;->parser:Lca/uhn/hl7v2/parser/GenericParser;

    invoke-virtual {v0, p0}, Lca/uhn/hl7v2/parser/GenericParser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "encoding1":Ljava/lang/String;
    sget-object v1, Lca/uhn/hl7v2/util/EncodedMessageComparator;->parser:Lca/uhn/hl7v2/parser/GenericParser;

    invoke-virtual {v1, p1}, Lca/uhn/hl7v2/parser/GenericParser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "encoding2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    const-string v2, "XML"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-static {p0}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->safeER7Conversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    goto :goto_0

    .line 162
    :cond_0
    invoke-static {p1}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->safeER7Conversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->standardize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "std1":Ljava/lang/String;
    invoke-static {p1}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->standardize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v3, "std2":Ljava/lang/String;
    nop

    .line 171
    nop

    .line 174
    new-instance v4, Lca/uhn/hl7v2/util/Pair;

    invoke-direct {v4, v2, v3}, Lca/uhn/hl7v2/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 170
    .end local v2    # "std1":Ljava/lang/String;
    .end local v3    # "std2":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Equivalence check failed due to SAXException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static standardize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lca/uhn/hl7v2/util/EncodedMessageComparator;->parser:Lca/uhn/hl7v2/parser/GenericParser;

    invoke-virtual {v1, p0}, Lca/uhn/hl7v2/parser/GenericParser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "encoding":Ljava/lang/String;
    const-string v2, "XML"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-static {p0}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->standardizeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p0}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->standardizeER7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0
.end method

.method public static standardizeER7(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "message"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 52
    .local v0, "fieldDelimChar":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "fieldDelim":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 56
    .local v2, "compSepChar":C
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "compSep":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\\"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    :cond_1
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 60
    .local v4, "repSepChar":C
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "repSep":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\\"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    :cond_2
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 64
    .local v7, "subSepChar":C
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "subSep":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\\"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 74
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]*[\n\r]+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 75
    .local v9, "endSegment":Ljava/util/regex/Pattern;
    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, "\r"

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 78
    .local v10, "endField":Ljava/util/regex/Pattern;
    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 81
    .local v11, "endComp":Ljava/util/regex/Pattern;
    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {p0, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    return-object p0
.end method

.method public static standardizeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-static {p0}, Lca/uhn/hl7v2/util/XMLUtils;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 100
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/util/EncodedMessageComparator;->clean(Lorg/w3c/dom/Element;)V

    .line 101
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lca/uhn/hl7v2/util/XMLUtils;->serialize(Lorg/w3c/dom/Document;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 102
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while standardizing XML "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
