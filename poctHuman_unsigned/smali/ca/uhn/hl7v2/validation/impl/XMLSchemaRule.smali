.class public Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractEncodingRule;
.source "XMLSchemaRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/validation/impl/XMLSchemaRule$ErrorHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_NS:Ljava/lang/String; = "urn:hl7-org:v2xml"

.field private static final DESCRIPTION:Ljava/lang/String; = "Checks that an encoded XML message validates against a declared or default schema (it is recommended to use the standard HL7 schema, but this is not enforced here)."

.field private static final SECTION_REFERENCE:Ljava/lang/String; = "http://www.hl7.org/Special/committees/xml/drafts/v2xml.html"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private locations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractEncodingRule;-><init>()V

    return-void
.end method

.method private extractSchemaLocation(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 8
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "schemaFileName":Ljava/lang/String;
    sget-object v1, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v2, "Trying to retrieve the schema defined in the xml document"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 163
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 164
    .local v1, "element":Lorg/w3c/dom/Element;
    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    .line 165
    const-string v3, "schemaLocation"

    .line 164
    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "schemaLocation":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 167
    sget-object v3, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v4, "Schema defined in document: {}"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "schemaItems":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 170
    new-instance v4, Ljava/io/File;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    aget-object v0, v3, v5

    .line 173
    sget-object v5, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v6, "Schema defined in document points to a valid file"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 174
    goto :goto_0

    .line 175
    :cond_0
    sget-object v6, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v7, "Schema file defined in xml document not found on disk: {}"

    .line 176
    aget-object v5, v3, v5

    .line 175
    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    .end local v3    # "schemaItems":[Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    goto :goto_0

    .line 180
    :cond_1
    sget-object v3, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v4, "No schema location defined in the xml document"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 183
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getSchemaLocation(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 3
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->extractSchemaLocation(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "schemaFilename":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->staticSchema(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Ljava/io/IOException;

    .line 153
    const-string v2, "Unable to retrieve a valid schema to use for message validation"

    .line 152
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    return-object v0
.end method

.method private hasCorrectNamespace(Lorg/w3c/dom/Document;Ljava/util/List;)Z
    .locals 5
    .param p1, "domDocumentToValidate"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/ValidationException;",
            ">;)Z"
        }
    .end annotation

    .line 215
    .local p2, "validationErrors":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "nsUri":Ljava/lang/String;
    const-string v1, "urn:hl7-org:v2xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 217
    .local v1, "ok":Z
    if-nez v1, :cond_0

    .line 218
    new-instance v2, Lca/uhn/hl7v2/validation/ValidationException;

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The default namespace of the XML document is incorrect - should be urn:hl7-org:v2xml but was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-direct {v2, v3}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;)V

    .line 221
    .local v2, "e":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v3, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lca/uhn/hl7v2/validation/ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 224
    .end local v2    # "e":Lca/uhn/hl7v2/validation/ValidationException;
    :cond_0
    return v1
.end method

.method private staticSchema(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 8
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "schemaFilename":Ljava/lang/String;
    sget-object v1, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v2, "Lookup HL7 version in MSH-12 to know which default schema to use"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 189
    const-string v1, "urn:hl7-org:v2xml"

    const-string v2, "VID.1"

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 190
    .local v1, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 191
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 192
    .local v2, "versionNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v3

    .line 193
    .local v3, "version":Lca/uhn/hl7v2/Version;
    iget-object v4, p0, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->locations:Ljava/util/Map;

    invoke-virtual {v3}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 196
    .local v4, "schemaLocation":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xsd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v5, "myFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    sget-object v6, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v7, "Valid schema file present: {}"

    invoke-interface {v6, v7, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    goto :goto_0

    .line 201
    :cond_0
    sget-object v6, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v7, "Schema file not found on disk: {}"

    invoke-interface {v6, v7, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const/4 v0, 0x0

    .line 204
    .end local v2    # "versionNode":Lorg/w3c/dom/Node;
    .end local v3    # "version":Lca/uhn/hl7v2/Version;
    .end local v4    # "schemaLocation":Ljava/lang/String;
    .end local v5    # "myFile":Ljava/io/File;
    goto :goto_0

    .line 205
    :cond_1
    sget-object v2, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v3, "HL7 version node MSH-12 not present - unable to determine default schema"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "validationErrors":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    :try_start_0
    invoke-static {p1}, Lca/uhn/hl7v2/util/XMLUtils;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 125
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-direct {p0, v1, v0}, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->hasCorrectNamespace(Lorg/w3c/dom/Document;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-direct {p0, v1}, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->getSchemaLocation(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule$ErrorHandler;

    invoke-direct {v3, v0}, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule$ErrorHandler;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2, v3}, Lca/uhn/hl7v2/util/XMLUtils;->validate(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/DOMErrorHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->log:Lorg/slf4j/Logger;

    const-string v3, "Unable to validate message: {}"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    new-instance v2, Lca/uhn/hl7v2/validation/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to validate message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/validation/ValidationException;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lca/uhn/hl7v2/validation/ValidationException;

    return-object v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 239
    const-string v0, "Checks that an encoded XML message validates against a declared or default schema (it is recommended to use the standard HL7 schema, but this is not enforced here)."

    return-object v0
.end method

.method getSchemaLocations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->locations:Ljava/util/Map;

    return-object v0
.end method

.method public getSectionReference()Ljava/lang/String;
    .locals 1

    .line 246
    const-string v0, "http://www.hl7.org/Special/committees/xml/drafts/v2xml.html"

    return-object v0
.end method

.method public setSchemaLocations(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p1, "locations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/validation/impl/XMLSchemaRule;->locations:Ljava/util/Map;

    .line 229
    return-void
.end method
