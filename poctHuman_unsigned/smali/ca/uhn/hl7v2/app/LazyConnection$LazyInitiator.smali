.class Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;
.super Ljava/lang/Object;
.source "LazyConnection.java"

# interfaces
.implements Lca/uhn/hl7v2/app/Initiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/app/LazyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyInitiator"
.end annotation


# instance fields
.field private connection:Lca/uhn/hl7v2/app/LazyConnection;

.field private timeoutMillis:J


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/app/LazyConnection;)V
    .locals 2
    .param p1, "connection"    # Lca/uhn/hl7v2/app/LazyConnection;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->timeoutMillis:J

    .line 114
    iput-object p1, p0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->connection:Lca/uhn/hl7v2/app/LazyConnection;

    .line 115
    return-void
.end method


# virtual methods
.method public declared-synchronized sendAndReceive(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;
    .locals 3
    .param p1, "out"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/llp/LLPException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->connection:Lca/uhn/hl7v2/app/LazyConnection;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/LazyConnection;->isEstablished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->connection:Lca/uhn/hl7v2/app/LazyConnection;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/LazyConnection;->establishConnection()V

    .line 120
    iget-wide v0, p0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->timeoutMillis:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->setTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->connection:Lca/uhn/hl7v2/app/LazyConnection;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/LazyConnection;->getInitiator()Lca/uhn/hl7v2/app/Initiator;

    move-result-object v0

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/app/Initiator;->sendAndReceive(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 117
    .end local p1    # "out":Lca/uhn/hl7v2/model/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeunit"    # Ljava/util/concurrent/TimeUnit;

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->connection:Lca/uhn/hl7v2/app/LazyConnection;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/LazyConnection;->isEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->connection:Lca/uhn/hl7v2/app/LazyConnection;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/LazyConnection;->getInitiator()Lca/uhn/hl7v2/app/Initiator;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lca/uhn/hl7v2/app/Initiator;->setTimeout(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->timeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    .end local p1    # "timeout":J
    .end local p3    # "timeunit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTimeoutMillis(I)V
    .locals 3
    .param p1, "timeout"    # I

    .line 133
    int-to-long v0, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lca/uhn/hl7v2/app/LazyConnection$LazyInitiator;->setTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 134
    return-void
.end method
