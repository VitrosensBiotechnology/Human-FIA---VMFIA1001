.class Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;
.super Ljava/lang/Object;
.source "ProcessorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cycler"
.end annotation


# instance fields
.field private isRunning:Z

.field private myExpectingAck:Z

.field private myProcessor:Lca/uhn/hl7v2/protocol/Processor;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/protocol/Processor;Z)V
    .locals 1
    .param p1, "theProcessor"    # Lca/uhn/hl7v2/protocol/Processor;
    .param p2, "isExpectingAck"    # Z

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;->myProcessor:Lca/uhn/hl7v2/protocol/Processor;

    .line 510
    iput-boolean p2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;->myExpectingAck:Z

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;->isRunning:Z

    .line 512
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 528
    :goto_0
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;->isRunning:Z

    if-nez v0, :cond_0

    .line 535
    return-void

    .line 530
    :cond_0
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;->myProcessor:Lca/uhn/hl7v2/protocol/Processor;

    iget-boolean v1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;->myExpectingAck:Z

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/protocol/Processor;->cycle(Z)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    goto :goto_0

    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->access$0()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Error processing message"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$Cycler;->isRunning:Z

    .line 519
    return-void
.end method
