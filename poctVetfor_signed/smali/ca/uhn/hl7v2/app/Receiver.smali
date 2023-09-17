.class public Lca/uhn/hl7v2/app/Receiver;
.super Lca/uhn/hl7v2/concurrent/Service;
.source "Receiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/app/Receiver$Grunt;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private conn:Lca/uhn/hl7v2/app/ActiveConnection;

.field private in:Lca/uhn/hl7v2/llp/HL7Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lca/uhn/hl7v2/app/Receiver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/app/Receiver;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/app/ActiveConnection;Lca/uhn/hl7v2/llp/HL7Reader;)V
    .locals 2
    .param p1, "c"    # Lca/uhn/hl7v2/app/ActiveConnection;
    .param p2, "in"    # Lca/uhn/hl7v2/llp/HL7Reader;

    .line 54
    const-string v0, "Receiver"

    invoke-virtual {p1}, Lca/uhn/hl7v2/app/ActiveConnection;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lca/uhn/hl7v2/concurrent/Service;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 55
    iput-object p1, p0, Lca/uhn/hl7v2/app/Receiver;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    .line 56
    iput-object p2, p0, Lca/uhn/hl7v2/app/Receiver;->in:Lca/uhn/hl7v2/llp/HL7Reader;

    .line 57
    return-void
.end method

.method static synthetic access$0()Lorg/slf4j/Logger;
    .locals 1

    .line 47
    sget-object v0, Lca/uhn/hl7v2/app/Receiver;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private describeRemoteConnection()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/app/Receiver;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ActiveConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lca/uhn/hl7v2/app/Receiver;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ActiveConnection;->getRemotePort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected handle()V
    .locals 4

    .line 63
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/Receiver;->in:Lca/uhn/hl7v2/llp/HL7Reader;

    invoke-interface {v0}, Lca/uhn/hl7v2/llp/HL7Reader;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 65
    sget-object v1, Lca/uhn/hl7v2/app/Receiver;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to read a message"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/app/Receiver;->processMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lca/uhn/hl7v2/app/Receiver;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ActiveConnection;->close()V

    .line 78
    sget-object v1, Lca/uhn/hl7v2/app/Receiver;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error, closing connection from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lca/uhn/hl7v2/app/Receiver;->describeRemoteConnection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lca/uhn/hl7v2/app/Receiver;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ActiveConnection;->close()V

    .line 75
    sget-object v1, Lca/uhn/hl7v2/app/Receiver;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: closing Connection from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lca/uhn/hl7v2/app/Receiver;->describeRemoteConnection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", will no longer read messages with this Receiver. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 69
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/net/SocketException;
    iget-object v1, p0, Lca/uhn/hl7v2/app/Receiver;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ActiveConnection;->close()V

    .line 72
    sget-object v1, Lca/uhn/hl7v2/app/Receiver;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SocketException: closing Connection from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lca/uhn/hl7v2/app/Receiver;->describeRemoteConnection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", will no longer read messages with this Receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 81
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_0
    return-void
.end method

.method protected processMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lca/uhn/hl7v2/app/Receiver;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ActiveConnection;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/Parser;->getAckID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "ackID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    sget-object v1, Lca/uhn/hl7v2/app/Receiver;->log:Lorg/slf4j/Logger;

    const-string v2, "Unsolicited Message Received: {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/Receiver;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lca/uhn/hl7v2/app/Receiver$Grunt;

    iget-object v3, p0, Lca/uhn/hl7v2/app/Receiver;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-direct {v2, v3, p1}, Lca/uhn/hl7v2/app/Receiver$Grunt;-><init>(Lca/uhn/hl7v2/app/ActiveConnection;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/app/Receiver;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v1, v0, p1}, Lca/uhn/hl7v2/app/ActiveConnection;->isRecipientWaiting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    sget-object v1, Lca/uhn/hl7v2/app/Receiver;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected Message Received. This message appears to be an acknowledgement (MSA-2 has a value) so it will be ignored: {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    sget-object v1, Lca/uhn/hl7v2/app/Receiver;->log:Lorg/slf4j/Logger;

    const-string v2, "Response Message Received: {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-void
.end method
