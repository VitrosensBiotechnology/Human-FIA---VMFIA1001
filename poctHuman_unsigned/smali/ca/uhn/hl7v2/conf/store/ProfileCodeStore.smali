.class public Lca/uhn/hl7v2/conf/store/ProfileCodeStore;
.super Lca/uhn/hl7v2/conf/store/AbstractCodeStore;
.source "ProfileCodeStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;
    }
.end annotation


# instance fields
.field private codes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lca/uhn/hl7v2/conf/store/AbstractCodeStore;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/store/ProfileCodeStore;->codes:Ljava/util/Map;

    .line 48
    if-nez p1, :cond_0

    .line 49
    :try_start_0
    new-instance v0, Lca/uhn/hl7v2/conf/ProfileException;

    const-string v1, "The input url parameter cannot be null"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    goto :goto_1

    .line 51
    :cond_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 52
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    new-instance v1, Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;-><init>(Lca/uhn/hl7v2/conf/store/ProfileCodeStore;Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 53
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    nop

    .line 59
    return-void

    .line 56
    :goto_0
    nop

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/conf/ProfileException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 55
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/conf/store/ProfileCodeStore;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lca/uhn/hl7v2/conf/store/ProfileCodeStore;)Ljava/util/Map;
    .locals 0

    .line 33
    iget-object p0, p0, Lca/uhn/hl7v2/conf/store/ProfileCodeStore;->codes:Ljava/util/Map;

    return-object p0
.end method

.method private getCodeTable(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "codeSystem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Lca/uhn/hl7v2/conf/ProfileException;

    const-string v1, "The input codeSystem parameter cannot be null"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 122
    new-instance v0, Lca/uhn/hl7v2/conf/ProfileException;

    const-string v1, "The input codeSystem parameter cannot be less than 4 characters long"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "tableId":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/store/ProfileCodeStore;->codes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public getValidCodes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "codeSystem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/conf/store/ProfileCodeStore;->getCodeTable(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 82
    new-instance v1, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown code system: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public knowsCodes(Ljava/lang/String;)Z
    .locals 2
    .param p1, "codeSystem"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/conf/store/ProfileCodeStore;->getCodeTable(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lca/uhn/hl7v2/conf/ProfileException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Lca/uhn/hl7v2/conf/ProfileException;
    return v0
.end method
