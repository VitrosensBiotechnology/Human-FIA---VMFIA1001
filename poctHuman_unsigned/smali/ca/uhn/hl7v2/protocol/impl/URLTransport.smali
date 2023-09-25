.class public Lca/uhn/hl7v2/protocol/impl/URLTransport;
.super Lca/uhn/hl7v2/protocol/impl/AbstractTransport;
.source "URLTransport.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/TransportLayer;


# static fields
.field public static final URL_KEY:Ljava/lang/String; = "URL"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected myBufferSize:I

.field private final myConnectOnConnect:Z

.field private final myConnectOnReceive:Z

.field private final myConnectOnSend:Z

.field private myConnection:Ljava/net/URLConnection;

.field private myContentType:Ljava/lang/String;

.field private myURL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lca/uhn/hl7v2/protocol/impl/URLTransport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->log:Lorg/slf4j/Logger;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;ZZZ)V
    .locals 2
    .param p1, "theURL"    # Ljava/net/URL;
    .param p2, "connectOnSend"    # Z
    .param p3, "connectOnReceive"    # Z
    .param p4, "connectOnConnect"    # Z

    .line 84
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/AbstractTransport;-><init>()V

    .line 63
    const-string v0, "application/hl7+doc+xml"

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myContentType:Ljava/lang/String;

    .line 66
    const/16 v0, 0xbb8

    iput v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myBufferSize:I

    .line 85
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myURL:Ljava/net/URL;

    .line 86
    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/URLTransport;->getCommonMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "URL"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iput-boolean p2, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnectOnSend:Z

    .line 89
    iput-boolean p3, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnectOnReceive:Z

    .line 90
    iput-boolean p4, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnectOnConnect:Z

    .line 91
    return-void
.end method

.method private makeConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 185
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnection:Ljava/net/URLConnection;

    .line 186
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnection:Ljava/net/URLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 187
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 188
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnection:Ljava/net/URLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {p0}, Lca/uhn/hl7v2/protocol/impl/URLTransport;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    nop

    .line 193
    sget-object v0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->log:Lorg/slf4j/Logger;

    const-string v1, "Made connection to {}"

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public doConnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnectOnConnect:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/URLTransport;->makeConnection()V

    .line 180
    :cond_0
    return-void
.end method

.method public doDisconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnection:Ljava/net/URLConnection;

    .line 217
    return-void
.end method

.method public doReceive()Lca/uhn/hl7v2/protocol/Transportable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnectOnReceive:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/URLTransport;->makeConnection()V

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, "response":Ljava/lang/StringBuffer;
    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/protocol/impl/URLTransport;->log:Lorg/slf4j/Logger;

    const-string v2, "Getting InputStream from URLConnection"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnection:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 127
    .local v1, "in":Ljava/io/Reader;
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/URLTransport;->log:Lorg/slf4j/Logger;

    const-string v3, "Got InputStream from URLConnection"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 129
    iget v2, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myBufferSize:I

    new-array v2, v2, [C

    .line 130
    .local v2, "buf":[C
    const/4 v3, 0x0

    .line 132
    .local v3, "bytesRead":I
    new-instance v4, Lca/uhn/hl7v2/protocol/impl/IntRef;

    invoke-direct {v4}, Lca/uhn/hl7v2/protocol/impl/IntRef;-><init>()V

    .line 134
    .local v4, "bytesReadRef":Lca/uhn/hl7v2/protocol/impl/IntRef;
    :cond_1
    :goto_0
    if-gez v3, :cond_2

    .line 156
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v1    # "in":Ljava/io/Reader;
    .end local v2    # "buf":[C
    .end local v3    # "bytesRead":I
    .end local v4    # "bytesReadRef":Lca/uhn/hl7v2/protocol/impl/IntRef;
    goto :goto_1

    .line 137
    .restart local v1    # "in":Ljava/io/Reader;
    .restart local v2    # "buf":[C
    .restart local v3    # "bytesRead":I
    .restart local v4    # "bytesReadRef":Lca/uhn/hl7v2/protocol/impl/IntRef;
    :cond_2
    :try_start_1
    new-instance v5, Lca/uhn/hl7v2/protocol/impl/ReaderThread;

    invoke-direct {v5, v1, v2, v4}, Lca/uhn/hl7v2/protocol/impl/ReaderThread;-><init>(Ljava/io/Reader;[CLca/uhn/hl7v2/protocol/impl/IntRef;)V

    .line 138
    .local v5, "readerThread":Lca/uhn/hl7v2/protocol/impl/ReaderThread;
    invoke-virtual {v5}, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->start()V

    .line 139
    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Lca/uhn/hl7v2/protocol/impl/ReaderThread;->join(J)V

    .line 141
    invoke-virtual {v4}, Lca/uhn/hl7v2/protocol/impl/IntRef;->getValue()I

    move-result v6

    move v3, v6

    .line 143
    if-nez v3, :cond_3

    .line 144
    new-instance v6, Lca/uhn/hl7v2/protocol/TransportException;

    const-string v7, "Timeout waiting for response"

    invoke-direct {v6, v7}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v5    # "readerThread":Lca/uhn/hl7v2/protocol/impl/ReaderThread;
    :catch_0
    move-exception v5

    .line 150
    :cond_3
    if-lez v3, :cond_1

    .line 151
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v2, v5, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 157
    .end local v1    # "in":Ljava/io/Reader;
    .end local v2    # "buf":[C
    .end local v3    # "bytesRead":I
    .end local v4    # "bytesReadRef":Lca/uhn/hl7v2/protocol/impl/IntRef;
    :catch_1
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lca/uhn/hl7v2/protocol/impl/URLTransport;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 162
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    const-string v2, "Timeout waiting for response"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_4
    new-instance v1, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public doSend(Lca/uhn/hl7v2/protocol/Transportable;)V
    .locals 3
    .param p1, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/TransportException;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnectOnSend:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lca/uhn/hl7v2/protocol/impl/URLTransport;->makeConnection()V

    .line 105
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .local v0, "out":Ljava/io/Writer;
    invoke-interface {p1}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "out":Ljava/io/Writer;
    nop

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/protocol/TransportException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myContentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "theContentType"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/URLTransport;->myContentType:Ljava/lang/String;

    .line 210
    return-void
.end method
