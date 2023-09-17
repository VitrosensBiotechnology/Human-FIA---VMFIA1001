.class Lca/uhn/hl7v2/protocol/impl/HL7Server$1;
.super Ljava/lang/Thread;
.source "HL7Server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/protocol/impl/HL7Server;->initProcessorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/protocol/impl/HL7Server;

.field private final synthetic val$processors:Ljava/util/List;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/protocol/impl/HL7Server;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$1;->this$0:Lca/uhn/hl7v2/protocol/impl/HL7Server;

    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$1;->val$processors:Ljava/util/List;

    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 108
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$1;->val$processors:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_1
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$1;->val$processors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/protocol/Processor;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/protocol/Processor;>;"
    monitor-exit v0

    .line 121
    return-void

    .line 114
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/protocol/Processor;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/protocol/Processor;

    .line 115
    .local v2, "proc":Lca/uhn/hl7v2/protocol/Processor;
    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/Processor;->getContext()Lca/uhn/hl7v2/protocol/ProcessorContext;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getLocallyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/protocol/TransportLayer;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-interface {v2}, Lca/uhn/hl7v2/protocol/Processor;->getContext()Lca/uhn/hl7v2/protocol/ProcessorContext;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/protocol/ProcessorContext;->getRemotelyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/protocol/TransportLayer;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 117
    .end local v2    # "proc":Lca/uhn/hl7v2/protocol/Processor;
    goto :goto_1

    .line 111
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lca/uhn/hl7v2/protocol/Processor;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
