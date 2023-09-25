.class public Lca/uhn/hl7v2/util/XMLUtils;
.super Ljava/lang/Object;
.source "XMLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/util/XMLUtils$ClasspathResourceResolver;
    }
.end annotation


# static fields
.field private static IMPL:Lorg/w3c/dom/DOMImplementation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;

    .line 127
    invoke-static {}, Lca/uhn/hl7v2/util/XMLUtils;->getDOMImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/DOMImplementation;

    .line 128
    .local v0, "impl":Lorg/w3c/dom/DOMImplementation;
    const-string v1, "urn:hl7-org:v2xml"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 129
    .local v1, "doc":Lorg/w3c/dom/Document;
    return-object v1
.end method

.method public static declared-synchronized getDOMImpl()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const-class v0, Lca/uhn/hl7v2/util/XMLUtils;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/util/XMLUtils;->IMPL:Lorg/w3c/dom/DOMImplementation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 52
    :try_start_1
    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->newInstance()Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;

    move-result-object v1

    .line 53
    .local v1, "registry":Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    const-string v2, "LS 3.0"

    invoke-virtual {v1, v2}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    sput-object v2, Lca/uhn/hl7v2/util/XMLUtils;->IMPL:Lorg/w3c/dom/DOMImplementation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v1    # "registry":Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Lca/uhn/hl7v2/util/XMLUtils;->IMPL:Lorg/w3c/dom/DOMImplementation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getDOMImplUncached()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 64
    :try_start_0
    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->newInstance()Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;

    move-result-object v0

    .line 65
    .local v0, "registry":Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    const-string v1, "LS 3.0"

    invoke-virtual {v0, v1}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 66
    .end local v0    # "registry":Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parse(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .locals 3
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "validateIfSchema"    # Z

    .line 83
    invoke-static {}, Lca/uhn/hl7v2/util/XMLUtils;->getDOMImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ls/DOMImplementationLS;

    .line 84
    .local v0, "impl":Lorg/w3c/dom/ls/DOMImplementationLS;
    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSInput()Lorg/w3c/dom/ls/LSInput;

    move-result-object v1

    .line 85
    .local v1, "input":Lorg/w3c/dom/ls/LSInput;
    invoke-interface {v1, p0}, Lorg/w3c/dom/ls/LSInput;->setByteStream(Ljava/io/InputStream;)V

    .line 86
    invoke-static {v1, p1}, Lca/uhn/hl7v2/util/XMLUtils;->parse(Lorg/w3c/dom/ls/LSInput;Z)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lca/uhn/hl7v2/util/XMLUtils;->parse(Ljava/lang/String;Z)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Lorg/w3c/dom/Document;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "validateIfSchema"    # Z

    .line 76
    invoke-static {}, Lca/uhn/hl7v2/util/XMLUtils;->getDOMImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ls/DOMImplementationLS;

    .line 77
    .local v0, "impl":Lorg/w3c/dom/ls/DOMImplementationLS;
    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSInput()Lorg/w3c/dom/ls/LSInput;

    move-result-object v1

    .line 78
    .local v1, "input":Lorg/w3c/dom/ls/LSInput;
    invoke-interface {v1, p0}, Lorg/w3c/dom/ls/LSInput;->setStringData(Ljava/lang/String;)V

    .line 79
    invoke-static {v1, p1}, Lca/uhn/hl7v2/util/XMLUtils;->parse(Lorg/w3c/dom/ls/LSInput;Z)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2
.end method

.method private static parse(Lorg/w3c/dom/ls/LSInput;Z)Lorg/w3c/dom/Document;
    .locals 6
    .param p0, "input"    # Lorg/w3c/dom/ls/LSInput;
    .param p1, "validateIfSchema"    # Z

    .line 90
    invoke-static {}, Lca/uhn/hl7v2/util/XMLUtils;->getDOMImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ls/DOMImplementationLS;

    .line 91
    .local v0, "impl":Lorg/w3c/dom/ls/DOMImplementationLS;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSParser(SLjava/lang/String;)Lorg/w3c/dom/ls/LSParser;

    move-result-object v2

    .line 92
    .local v2, "parser":Lorg/w3c/dom/ls/LSParser;
    invoke-interface {v2}, Lorg/w3c/dom/ls/LSParser;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object v3

    .line 93
    .local v3, "config":Lorg/w3c/dom/DOMConfiguration;
    const-string v4, "element-content-whitespace"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v4, "namespaces"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v1, "validate-if-schema"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    invoke-interface {v2, p0}, Lorg/w3c/dom/ls/LSParser;->parse(Lorg/w3c/dom/ls/LSInput;)Lorg/w3c/dom/Document;

    move-result-object v1

    return-object v1
.end method

.method public static serialize(Lorg/w3c/dom/Document;Z)Ljava/lang/String;
    .locals 6
    .param p0, "document"    # Lorg/w3c/dom/Document;
    .param p1, "prettyPrint"    # Z

    .line 110
    invoke-static {}, Lca/uhn/hl7v2/util/XMLUtils;->getDOMImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ls/DOMImplementationLS;

    .line 111
    .local v0, "impl":Lorg/w3c/dom/ls/DOMImplementationLS;
    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;

    move-result-object v1

    .line 113
    .local v1, "serializer":Lorg/w3c/dom/ls/LSSerializer;
    invoke-interface {v1}, Lorg/w3c/dom/ls/LSSerializer;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object v2

    .line 114
    .local v2, "config":Lorg/w3c/dom/DOMConfiguration;
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string v4, "format-pretty-print"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v5}, Lorg/w3c/dom/DOMConfiguration;->canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    const-string v4, "format-pretty-print"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_0
    const-string v4, "xml-declaration"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSOutput()Lorg/w3c/dom/ls/LSOutput;

    move-result-object v3

    .line 119
    .local v3, "output":Lorg/w3c/dom/ls/LSOutput;
    const-string v4, "UTF-8"

    invoke-interface {v3, v4}, Lorg/w3c/dom/ls/LSOutput;->setEncoding(Ljava/lang/String;)V

    .line 120
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 121
    .local v4, "writer":Ljava/io/Writer;
    invoke-interface {v3, v4}, Lorg/w3c/dom/ls/LSOutput;->setCharacterStream(Ljava/io/Writer;)V

    .line 122
    invoke-interface {v1, p0, v3}, Lorg/w3c/dom/ls/LSSerializer;->write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z

    .line 123
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static validate(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/DOMErrorHandler;)V
    .locals 3
    .param p0, "d"    # Lorg/w3c/dom/Document;
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/w3c/dom/DOMErrorHandler;

    .line 100
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object v0

    .line 101
    .local v0, "config":Lorg/w3c/dom/DOMConfiguration;
    const-string v1, "schema-type"

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v1, "validate"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v1, "schema-location"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v1, "resource-resolver"

    new-instance v2, Lca/uhn/hl7v2/util/XMLUtils$ClasspathResourceResolver;

    invoke-direct {v2}, Lca/uhn/hl7v2/util/XMLUtils$ClasspathResourceResolver;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v1, "error-handler"

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    invoke-interface {p0}, Lorg/w3c/dom/Document;->normalizeDocument()V

    .line 107
    return-void
.end method
