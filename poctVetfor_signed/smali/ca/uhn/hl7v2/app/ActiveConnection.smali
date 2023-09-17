.class public Lca/uhn/hl7v2/app/ActiveConnection;
.super Ljava/lang/Object;
.source "ActiveConnection.java"

# interfaces
.implements Lca/uhn/hl7v2/app/Connection;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private ackWriter:Lca/uhn/hl7v2/llp/HL7Writer;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private initiator:Lca/uhn/hl7v2/app/Initiator;

.field private open:Z

.field private parser:Lca/uhn/hl7v2/parser/Parser;

.field private receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/app/Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private responder:Lca/uhn/hl7v2/app/Responder;

.field private responses:Lca/uhn/hl7v2/concurrent/BlockingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca/uhn/hl7v2/concurrent/BlockingMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sendWriter:Lca/uhn/hl7v2/llp/HL7Writer;

.field private sockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/app/ActiveConnection;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;)V
    .locals 1
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "bidirectional"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    nop

    .line 79
    invoke-static {}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->getDefaultService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lca/uhn/hl7v2/app/ActiveConnection;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;Ljava/util/concurrent/ExecutorService;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 6
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "inbound"    # Ljava/net/Socket;
    .param p4, "outbound"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    nop

    .line 102
    invoke-static {}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->getDefaultService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lca/uhn/hl7v2/app/ActiveConnection;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;Ljava/net/Socket;Ljava/util/concurrent/ExecutorService;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;Ljava/net/Socket;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "inbound"    # Ljava/net/Socket;
    .param p4, "outbound"    # Ljava/net/Socket;
    .param p5, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->open:Z

    .line 112
    invoke-direct {p0, p1, p5, p3}, Lca/uhn/hl7v2/app/ActiveConnection;->init(Lca/uhn/hl7v2/parser/Parser;Ljava/util/concurrent/ExecutorService;Ljava/net/Socket;)V

    .line 113
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2, v0}, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->getWriter(Ljava/io/OutputStream;)Lca/uhn/hl7v2/llp/HL7Writer;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->ackWriter:Lca/uhn/hl7v2/llp/HL7Writer;

    .line 114
    invoke-virtual {p4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2, v0}, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->getWriter(Ljava/io/OutputStream;)Lca/uhn/hl7v2/llp/HL7Writer;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sendWriter:Lca/uhn/hl7v2/llp/HL7Writer;

    .line 115
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->receivers:Ljava/util/List;

    new-instance v1, Lca/uhn/hl7v2/app/Receiver;

    .line 119
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p2, v2}, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->getReader(Ljava/io/InputStream;)Lca/uhn/hl7v2/llp/HL7Reader;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lca/uhn/hl7v2/app/Receiver;-><init>(Lca/uhn/hl7v2/app/ActiveConnection;Lca/uhn/hl7v2/llp/HL7Reader;)V

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->receivers:Ljava/util/List;

    new-instance v1, Lca/uhn/hl7v2/app/Receiver;

    .line 121
    invoke-virtual {p4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 120
    invoke-virtual {p2, v2}, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->getReader(Ljava/io/InputStream;)Lca/uhn/hl7v2/llp/HL7Reader;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lca/uhn/hl7v2/app/Receiver;-><init>(Lca/uhn/hl7v2/app/ActiveConnection;Lca/uhn/hl7v2/llp/HL7Reader;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lca/uhn/hl7v2/app/ActiveInitiator;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/app/ActiveInitiator;-><init>(Lca/uhn/hl7v2/app/ActiveConnection;)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->initiator:Lca/uhn/hl7v2/app/Initiator;

    .line 123
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p3, "bidirectional"    # Ljava/net/Socket;
    .param p4, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->open:Z

    .line 85
    invoke-direct {p0, p1, p4, p3}, Lca/uhn/hl7v2/app/ActiveConnection;->init(Lca/uhn/hl7v2/parser/Parser;Ljava/util/concurrent/ExecutorService;Ljava/net/Socket;)V

    .line 86
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2, v0}, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->getWriter(Ljava/io/OutputStream;)Lca/uhn/hl7v2/llp/HL7Writer;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->ackWriter:Lca/uhn/hl7v2/llp/HL7Writer;

    .line 87
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->ackWriter:Lca/uhn/hl7v2/llp/HL7Writer;

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sendWriter:Lca/uhn/hl7v2/llp/HL7Writer;

    .line 88
    iput-object p4, p0, Lca/uhn/hl7v2/app/ActiveConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 89
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->receivers:Ljava/util/List;

    new-instance v1, Lca/uhn/hl7v2/app/Receiver;

    .line 91
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 90
    invoke-virtual {p2, v2}, Lca/uhn/hl7v2/llp/LowerLayerProtocol;->getReader(Ljava/io/InputStream;)Lca/uhn/hl7v2/llp/HL7Reader;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lca/uhn/hl7v2/app/Receiver;-><init>(Lca/uhn/hl7v2/app/ActiveConnection;Lca/uhn/hl7v2/llp/HL7Reader;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lca/uhn/hl7v2/app/ActiveInitiator;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/app/ActiveInitiator;-><init>(Lca/uhn/hl7v2/app/ActiveConnection;)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->initiator:Lca/uhn/hl7v2/app/Initiator;

    .line 93
    return-void
.end method

.method private init(Lca/uhn/hl7v2/parser/Parser;Ljava/util/concurrent/ExecutorService;Ljava/net/Socket;)V
    .locals 2
    .param p1, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "inboundSocket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lca/uhn/hl7v2/app/ActiveConnection;->parser:Lca/uhn/hl7v2/parser/Parser;

    .line 129
    iput-object p2, p0, Lca/uhn/hl7v2/app/ActiveConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    .line 131
    new-instance v0, Lca/uhn/hl7v2/concurrent/BlockingHashMap;

    invoke-direct {v0, p2}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->responses:Lca/uhn/hl7v2/concurrent/BlockingMap;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->receivers:Ljava/util/List;

    .line 133
    new-instance v0, Lca/uhn/hl7v2/app/Responder;

    invoke-direct {v0, p3}, Lca/uhn/hl7v2/app/Responder;-><init>(Ljava/net/Socket;)V

    iput-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->responder:Lca/uhn/hl7v2/app/Responder;

    .line 134
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 140
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->receivers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/app/Receiver;

    .line 142
    .local v1, "receiver":Lca/uhn/hl7v2/app/Receiver;
    invoke-virtual {v1}, Lca/uhn/hl7v2/app/Receiver;->start()V

    .line 142
    .end local v1    # "receiver":Lca/uhn/hl7v2/app/Receiver;
    goto :goto_0

    .line 145
    :cond_1
    :goto_1
    return-void
.end method

.method public close()V
    .locals 5

    .line 244
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 250
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->open:Z

    .line 260
    return-void

    .line 250
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 252
    .local v0, "socket":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_1

    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lca/uhn/hl7v2/app/ActiveConnection;->log:Lorg/slf4j/Logger;

    const-string v4, "Error while stopping threads and closing sockets"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .end local v0    # "socket":Ljava/net/Socket;
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 244
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/app/Receiver;

    .line 245
    .local v1, "receiver":Lca/uhn/hl7v2/app/Receiver;
    invoke-virtual {v1}, Lca/uhn/hl7v2/app/Receiver;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {v1}, Lca/uhn/hl7v2/app/Receiver;->stop()V

    .line 246
    .end local v1    # "receiver":Lca/uhn/hl7v2/app/Receiver;
    goto :goto_0
.end method

.method protected getAckWriter()Lca/uhn/hl7v2/llp/HL7Writer;
    .locals 1

    .line 204
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->ackWriter:Lca/uhn/hl7v2/llp/HL7Writer;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 148
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getInitiator()Lca/uhn/hl7v2/app/Initiator;
    .locals 1

    .line 174
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->initiator:Lca/uhn/hl7v2/app/Initiator;

    return-object v0
.end method

.method public getParser()Lca/uhn/hl7v2/parser/Parser;
    .locals 1

    .line 208
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->parser:Lca/uhn/hl7v2/parser/Parser;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 2

    .line 158
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 159
    .local v0, "s":Ljava/net/Socket;
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getRemotePort()Ljava/lang/Integer;
    .locals 2

    .line 168
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 169
    .local v0, "s":Ljava/net/Socket;
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getResponder()Lca/uhn/hl7v2/app/Responder;
    .locals 1

    .line 179
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->responder:Lca/uhn/hl7v2/app/Responder;

    return-object v0
.end method

.method protected getSendWriter()Lca/uhn/hl7v2/llp/HL7Writer;
    .locals 1

    .line 196
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sendWriter:Lca/uhn/hl7v2/llp/HL7Writer;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->open:Z

    return v0
.end method

.method protected isRecipientWaiting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ackID"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->responses:Lca/uhn/hl7v2/concurrent/BlockingMap;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/concurrent/BlockingMap;->give(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 2

    .line 183
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ActiveConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    return v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 187
    const-string v1, "Can\'t determine status on closed socket"

    .line 186
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ActiveConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lca/uhn/hl7v2/app/ActiveConnection;->sockets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Socket;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Socket;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 216
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Socket;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    .line 217
    .local v2, "socket":Ljava/net/Socket;
    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .end local v2    # "socket":Ljava/net/Socket;
    goto :goto_0
.end method

.method protected waitForResponse(Ljava/lang/String;J)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "messageID"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveConnection;->responses:Lca/uhn/hl7v2/concurrent/BlockingMap;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Lca/uhn/hl7v2/concurrent/BlockingMap;->asyncPoll(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
