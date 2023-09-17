.class public Lca/uhn/hl7v2/app/ActiveInitiator;
.super Ljava/lang/Object;
.source "ActiveInitiator.java"

# interfaces
.implements Lca/uhn/hl7v2/app/Initiator;


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field private static final rawInbound:Lorg/slf4j/Logger;

.field private static final rawOutbound:Lorg/slf4j/Logger;


# instance fields
.field private conn:Lca/uhn/hl7v2/app/ActiveConnection;

.field private timeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lca/uhn/hl7v2/app/ActiveInitiator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/app/ActiveInitiator;->log:Lorg/slf4j/Logger;

    .line 76
    const-string v0, "ca.uhn.hl7v2.raw.outbound"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 75
    sput-object v0, Lca/uhn/hl7v2/app/ActiveInitiator;->rawOutbound:Lorg/slf4j/Logger;

    .line 78
    const-string v0, "ca.uhn.hl7v2.raw.inbound"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 77
    sput-object v0, Lca/uhn/hl7v2/app/ActiveInitiator;->rawInbound:Lorg/slf4j/Logger;

    .line 78
    return-void
.end method

.method constructor <init>(Lca/uhn/hl7v2/app/ActiveConnection;)V
    .locals 5
    .param p1, "conn"    # Lca/uhn/hl7v2/app/ActiveConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/llp/LLPException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->timeoutMillis:J

    .line 89
    iput-object p1, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    .line 93
    const-string v0, "ca.uhn.hl7v2.app.initiator.timeout"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    nop

    .line 94
    .local v0, "timeout":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->timeoutMillis:J

    .line 97
    sget-object v1, Lca/uhn/hl7v2/app/ActiveInitiator;->log:Lorg/slf4j/Logger;

    const-string v2, "Setting Initiator timeout to {} ms"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lca/uhn/hl7v2/app/ActiveInitiator;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v4, " is not a valid long - Initiator is using default timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 103
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;

    .line 181
    const/4 v0, 0x2

    array-length v1, p0

    if-eq v1, v0, :cond_0

    .line 182
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: ca.uhn.hl7v2.app.ActiveInitiator host port"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    .line 189
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, "port":I
    new-instance v2, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v2}, Lca/uhn/hl7v2/parser/PipeParser;-><init>()V

    .line 192
    .local v2, "parser":Lca/uhn/hl7v2/parser/Parser;
    new-instance v3, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;

    invoke-direct {v3}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>()V

    .line 193
    .local v3, "llp":Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    new-instance v4, Lca/uhn/hl7v2/app/ActiveConnection;

    new-instance v5, Ljava/net/Socket;

    .line 194
    invoke-direct {v5, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 193
    invoke-direct {v4, v2, v3, v5}, Lca/uhn/hl7v2/app/ActiveConnection;-><init>(Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Ljava/net/Socket;)V

    .line 195
    .local v4, "connection":Lca/uhn/hl7v2/app/Connection;
    invoke-interface {v4}, Lca/uhn/hl7v2/app/Connection;->getInitiator()Lca/uhn/hl7v2/app/Initiator;

    move-result-object v5

    .line 196
    .local v5, "initiator":Lca/uhn/hl7v2/app/Initiator;
    invoke-interface {v4}, Lca/uhn/hl7v2/app/Connection;->activate()V

    .line 197
    const-string v6, "MSH|^~\\&|||||||ACK^^ACK|||R|2.4|\rMSA|AA"

    .line 198
    .local v6, "outText":Ljava/lang/String;
    new-instance v7, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;

    invoke-direct {v7}, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;-><init>()V

    .line 201
    .local v7, "generator":Lca/uhn/hl7v2/util/idgenerator/IDGenerator;
    const/4 v8, 0x0

    .line 201
    .local v8, "i":I
    :goto_0
    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_1

    .line 233
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "port":I
    .end local v2    # "parser":Lca/uhn/hl7v2/parser/Parser;
    .end local v3    # "llp":Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .end local v4    # "connection":Lca/uhn/hl7v2/app/Connection;
    .end local v5    # "initiator":Lca/uhn/hl7v2/app/Initiator;
    .end local v6    # "outText":Ljava/lang/String;
    .end local v7    # "generator":Lca/uhn/hl7v2/util/idgenerator/IDGenerator;
    .end local v8    # "i":I
    goto :goto_1

    .line 202
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v1    # "port":I
    .restart local v2    # "parser":Lca/uhn/hl7v2/parser/Parser;
    .restart local v3    # "llp":Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .restart local v4    # "connection":Lca/uhn/hl7v2/app/Connection;
    .restart local v5    # "initiator":Lca/uhn/hl7v2/app/Initiator;
    .restart local v6    # "outText":Ljava/lang/String;
    .restart local v7    # "generator":Lca/uhn/hl7v2/util/idgenerator/IDGenerator;
    .restart local v8    # "i":I
    :cond_1
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lca/uhn/hl7v2/app/ActiveInitiator$1;

    invoke-direct {v10, v7, v2, v5}, Lca/uhn/hl7v2/app/ActiveInitiator$1;-><init>(Lca/uhn/hl7v2/util/idgenerator/IDGenerator;Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/app/Initiator;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 230
    .local v9, "sender":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v9    # "sender":Ljava/lang/Thread;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "port":I
    .end local v2    # "parser":Lca/uhn/hl7v2/parser/Parser;
    .end local v3    # "llp":Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .end local v4    # "connection":Lca/uhn/hl7v2/app/Connection;
    .end local v5    # "initiator":Lca/uhn/hl7v2/app/Initiator;
    .end local v6    # "outText":Ljava/lang/String;
    .end local v7    # "generator":Lca/uhn/hl7v2/util/idgenerator/IDGenerator;
    .end local v8    # "i":I
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public sendAndReceive(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;
    .locals 8
    .param p1, "out"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    const-string v1, "Can\'t encode null message"

    .line 115
    sget-object v2, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    .line 114
    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v0

    .line 119
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 120
    .local v0, "t":Lca/uhn/hl7v2/util/Terser;
    const-string v1, "/MSH-10"

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "messID":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 129
    :cond_1
    iget-object v2, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v2}, Lca/uhn/hl7v2/app/ActiveConnection;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v2

    invoke-virtual {v2, p1}, Lca/uhn/hl7v2/parser/Parser;->encode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "outbound":Ljava/lang/String;
    sget-object v3, Lca/uhn/hl7v2/app/ActiveInitiator;->rawOutbound:Lorg/slf4j/Logger;

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 131
    const/4 v3, 0x0

    .line 134
    .local v3, "inbound":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    iget-wide v5, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->timeoutMillis:J

    invoke-virtual {v4, v1, v5, v6}, Lca/uhn/hl7v2/app/ActiveConnection;->waitForResponse(Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v4

    move-object v3, v4

    .line 135
    iget-object v4, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v4}, Lca/uhn/hl7v2/app/ActiveConnection;->getSendWriter()Lca/uhn/hl7v2/llp/HL7Writer;

    move-result-object v4

    invoke-interface {v4, v2}, Lca/uhn/hl7v2/llp/HL7Writer;->writeMessage(Ljava/lang/String;)V

    .line 136
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v5, v4

    .line 136
    .local v5, "message":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 138
    sget-object v4, Lca/uhn/hl7v2/app/ActiveInitiator;->log:Lorg/slf4j/Logger;

    const-string v6, "Initiator received message: {}"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    sget-object v4, Lca/uhn/hl7v2/app/ActiveInitiator;->rawInbound:Lorg/slf4j/Logger;

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v4}, Lca/uhn/hl7v2/app/ActiveConnection;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v4

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    .line 141
    .local v4, "response":Lca/uhn/hl7v2/model/Message;
    sget-object v6, Lca/uhn/hl7v2/app/ActiveInitiator;->log:Lorg/slf4j/Logger;

    const-string v7, "response parsed"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-object v4

    .line 150
    .end local v4    # "response":Lca/uhn/hl7v2/model/Message;
    .end local v5    # "message":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 149
    :catch_1
    move-exception v4

    .line 153
    :cond_2
    :goto_0
    new-instance v4, Lca/uhn/hl7v2/app/TimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Timeout waiting for response to message with control ID "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->timeoutMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-direct {v4, v5}, Lca/uhn/hl7v2/app/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    :catch_2
    move-exception v4

    .line 145
    .local v4, "e":Ljava/io/IOException;
    if-eqz v3, :cond_3

    .line 146
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 147
    :cond_3
    iget-object v5, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v5}, Lca/uhn/hl7v2/app/ActiveConnection;->close()V

    .line 148
    throw v4

    .line 123
    .end local v2    # "outbound":Ljava/lang/String;
    .end local v3    # "inbound":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_1
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    .line 124
    const-string v3, "MSH segment missing required field Control ID (MSH-10)"

    .line 125
    sget-object v4, Lca/uhn/hl7v2/ErrorCode;->REQUIRED_FIELD_MISSING:Lca/uhn/hl7v2/ErrorCode;

    .line 123
    invoke-direct {v2, v3, v4}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v2
.end method

.method public setTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 174
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lca/uhn/hl7v2/app/ActiveInitiator;->timeoutMillis:J

    .line 175
    return-void
.end method

.method public setTimeoutMillis(I)V
    .locals 3
    .param p1, "timeout"    # I

    .line 163
    int-to-long v0, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/app/ActiveInitiator;->setTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 164
    return-void
.end method
