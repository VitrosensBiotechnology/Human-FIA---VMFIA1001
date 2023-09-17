.class public Lca/uhn/hl7v2/protocol/impl/MLLPTransport;
.super Lca/uhn/hl7v2/protocol/impl/AbstractTransport;
.source "MLLPTransport.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/TransportLayer;


# instance fields
.field private myCharsetMappings:Ljava/util/Properties;

.field private myReader:Lca/uhn/hl7v2/llp/MinLLPReader;

.field private myStreamSource:Lca/uhn/hl7v2/protocol/StreamSource;

.field private myWriter:Lca/uhn/hl7v2/llp/MinLLPWriter;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/protocol/StreamSource;)V
    .locals 1
    .param p1, "theStreamSource"    # Lca/uhn/hl7v2/protocol/StreamSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;-><init>()V

    .line 62
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myStreamSource:Lca/uhn/hl7v2/protocol/StreamSource;

    .line 63
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->loadCharsetMappings()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myCharsetMappings:Ljava/util/Properties;

    .line 64
    return-void
.end method

.method private static loadCharsetMappings()Ljava/util/Properties;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 68
    .local v0, "mappings":Ljava/util/Properties;
    const-string v1, "ca/uhn/hl7v2/protocol/impl/charset_map.properties"

    .line 69
    .local v1, "resource":Ljava/lang/String;
    const-class v2, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 71
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    nop

    .line 75
    return-object v0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lca/uhn/hl7v2/protocol/TransportException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t load character set mappings from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public doConnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myStreamSource:Lca/uhn/hl7v2/protocol/StreamSource;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/StreamSource;->connect()V

    .line 121
    :try_start_0
    new-instance v0, Lca/uhn/hl7v2/llp/MinLLPReader;

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myStreamSource:Lca/uhn/hl7v2/protocol/StreamSource;

    invoke-interface {v1}, Lca/uhn/hl7v2/protocol/StreamSource;->getInboundStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/llp/MinLLPReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myReader:Lca/uhn/hl7v2/llp/MinLLPReader;

    .line 122
    new-instance v0, Lca/uhn/hl7v2/llp/MinLLPWriter;

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myStreamSource:Lca/uhn/hl7v2/protocol/StreamSource;

    invoke-interface {v1}, Lca/uhn/hl7v2/protocol/StreamSource;->getOutboundStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/llp/MinLLPWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myWriter:Lca/uhn/hl7v2/llp/MinLLPWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    nop

    .line 126
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public doDisconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myReader:Lca/uhn/hl7v2/llp/MinLLPReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myReader:Lca/uhn/hl7v2/llp/MinLLPReader;

    invoke-virtual {v1}, Lca/uhn/hl7v2/llp/MinLLPReader;->close()V

    .line 134
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myWriter:Lca/uhn/hl7v2/llp/MinLLPWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myWriter:Lca/uhn/hl7v2/llp/MinLLPWriter;

    invoke-virtual {v1}, Lca/uhn/hl7v2/llp/MinLLPWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    nop

    .line 138
    :cond_1
    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myReader:Lca/uhn/hl7v2/llp/MinLLPReader;

    .line 139
    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myWriter:Lca/uhn/hl7v2/llp/MinLLPWriter;

    .line 141
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myStreamSource:Lca/uhn/hl7v2/protocol/StreamSource;

    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/StreamSource;->disconnect()V

    .line 142
    return-void

    .line 137
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 138
    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myReader:Lca/uhn/hl7v2/llp/MinLLPReader;

    .line 139
    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myWriter:Lca/uhn/hl7v2/llp/MinLLPWriter;

    .line 140
    throw v1
.end method

.method public doReceive()Lca/uhn/hl7v2/protocol/Transportable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "result":Lca/uhn/hl7v2/protocol/Transportable;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myReader:Lca/uhn/hl7v2/llp/MinLLPReader;

    invoke-virtual {v1}, Lca/uhn/hl7v2/llp/MinLLPReader;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 105
    new-instance v2, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/llp/LLPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 107
    .end local v1    # "message":Ljava/lang/String;
    nop

    .line 112
    :cond_0
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Lca/uhn/hl7v2/llp/LLPException;
    new-instance v2, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public doSend(Lca/uhn/hl7v2/protocol/Transportable;)V
    .locals 3
    .param p1, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 83
    :try_start_0
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "MSH-18"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myCharsetMappings:Ljava/util/Properties;

    invoke-virtual {v1, v0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 86
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myWriter:Lca/uhn/hl7v2/llp/MinLLPWriter;

    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lca/uhn/hl7v2/llp/MinLLPWriter;->writeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/MLLPTransport;->myWriter:Lca/uhn/hl7v2/llp/MinLLPWriter;

    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/llp/MinLLPWriter;->writeMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/llp/LLPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "charset":Ljava/lang/String;
    nop

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Lca/uhn/hl7v2/llp/LLPException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
