.class public Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;
.super Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;
.source "InMemoryIDGenerator.java"


# instance fields
.field private al:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;->al:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "increment"    # I

    .line 47
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;-><init>(I)V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;->al:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;->al:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;->getIncrement()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 55
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected set(J)V
    .locals 1
    .param p1, "l"    # J

    .line 59
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/InMemoryIDGenerator;->al:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 60
    return-void
.end method
