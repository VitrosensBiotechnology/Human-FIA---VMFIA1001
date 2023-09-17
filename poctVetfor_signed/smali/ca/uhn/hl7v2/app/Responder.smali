.class Lca/uhn/hl7v2/app/Responder;
.super Ljava/lang/Object;
.source "Responder.java"


# instance fields
.field private apps:Lca/uhn/hl7v2/protocol/ApplicationRouter;

.field private inboundSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "theInboundSocket"    # Ljava/net/Socket;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lca/uhn/hl7v2/app/Responder;->inboundSocket:Ljava/net/Socket;

    .line 72
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;

    .line 126
    const/4 v0, 0x1

    array-length v1, p0

    if-eq v1, v0, :cond_0

    .line 127
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Usage: DefaultApplication message_file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 133
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "messageFile":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v2, "in":Ljava/io/Reader;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 136
    .local v3, "fileLength":I
    new-array v4, v3, [C

    .line 137
    .local v4, "cbuf":[C
    invoke-virtual {v2, v4, v1, v3}, Ljava/io/Reader;->read([CII)I

    .line 138
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    .line 141
    .local v1, "messageString":Ljava/lang/String;
    new-instance v5, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v5}, Lca/uhn/hl7v2/parser/PipeParser;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .local v5, "parser":Lca/uhn/hl7v2/parser/Parser;
    const/4 v6, 0x0

    .line 144
    .local v6, "inMessage":Lca/uhn/hl7v2/model/Message;
    :try_start_1
    invoke-virtual {v5, v1}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v7
    :try_end_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 145
    goto :goto_0

    :catch_0
    move-exception v7

    .line 146
    .local v7, "e":Lca/uhn/hl7v2/HL7Exception;
    :try_start_2
    invoke-static {v7}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 150
    .end local v7    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    new-instance v7, Ljava/io/PipedInputStream;

    invoke-direct {v7}, Ljava/io/PipedInputStream;-><init>()V

    .line 151
    .local v7, "initInbound":Ljava/io/PipedInputStream;
    new-instance v8, Ljava/io/PipedOutputStream;

    invoke-direct {v8}, Ljava/io/PipedOutputStream;-><init>()V

    .line 152
    .local v8, "initOutbound":Ljava/io/PipedOutputStream;
    new-instance v9, Ljava/io/PipedInputStream;

    invoke-direct {v9, v8}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 153
    .local v9, "respInbound":Ljava/io/PipedInputStream;
    new-instance v10, Ljava/io/PipedOutputStream;

    invoke-direct {v10, v7}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    .end local v0    # "messageFile":Ljava/io/File;
    .end local v1    # "messageString":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/Reader;
    .end local v3    # "fileLength":I
    .end local v4    # "cbuf":[C
    .end local v5    # "parser":Lca/uhn/hl7v2/parser/Parser;
    .end local v6    # "inMessage":Lca/uhn/hl7v2/model/Message;
    .end local v7    # "initInbound":Ljava/io/PipedInputStream;
    .end local v8    # "initOutbound":Ljava/io/PipedOutputStream;
    .end local v9    # "respInbound":Ljava/io/PipedInputStream;
    goto :goto_1

    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method protected processMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "incomingMessageString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lca/uhn/hl7v2/app/Responder;->inboundSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 88
    .local v1, "remoteSocketAddress":Ljava/net/InetSocketAddress;
    const-string v2, "SENDING_IP"

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "SENDING_PORT"

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v2, p0, Lca/uhn/hl7v2/app/Responder;->apps:Lca/uhn/hl7v2/protocol/ApplicationRouter;

    new-instance v3, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;

    invoke-direct {v3, p1, v0}, Lca/uhn/hl7v2/protocol/impl/TransportableImpl;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Lca/uhn/hl7v2/protocol/ApplicationRouter;->processMessage(Lca/uhn/hl7v2/protocol/Transportable;)Lca/uhn/hl7v2/protocol/Transportable;

    move-result-object v2

    .line 92
    .local v2, "response":Lca/uhn/hl7v2/protocol/Transportable;
    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/Transportable;->getMessage()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method setApplicationRouter(Lca/uhn/hl7v2/protocol/ApplicationRouter;)V
    .locals 0
    .param p1, "router"    # Lca/uhn/hl7v2/protocol/ApplicationRouter;

    .line 118
    iput-object p1, p0, Lca/uhn/hl7v2/app/Responder;->apps:Lca/uhn/hl7v2/protocol/ApplicationRouter;

    .line 119
    return-void
.end method
