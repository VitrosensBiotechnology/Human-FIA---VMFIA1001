.class Lca/uhn/hl7v2/protocol/impl/HL7Server$2;
.super Ljava/lang/Object;
.source "HL7Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/protocol/impl/HL7Server;->start(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/protocol/impl/HL7Server;

.field private final synthetic val$server:Lca/uhn/hl7v2/protocol/impl/HL7Server;

.field private final synthetic val$theAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/protocol/impl/HL7Server;Lca/uhn/hl7v2/protocol/impl/HL7Server;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;->this$0:Lca/uhn/hl7v2/protocol/impl/HL7Server;

    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;->val$server:Lca/uhn/hl7v2/protocol/impl/HL7Server;

    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;->val$theAddress:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 171
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;->val$server:Lca/uhn/hl7v2/protocol/impl/HL7Server;

    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 173
    :cond_0
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;->val$server:Lca/uhn/hl7v2/protocol/impl/HL7Server;

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;->val$theAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->accept(Ljava/lang/String;)Lca/uhn/hl7v2/protocol/Processor;

    move-result-object v0

    .line 174
    .local v0, "p":Lca/uhn/hl7v2/protocol/Processor;
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;->this$0:Lca/uhn/hl7v2/protocol/impl/HL7Server;

    invoke-static {v1}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->access$0(Lca/uhn/hl7v2/protocol/impl/HL7Server;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-interface {v0}, Lca/uhn/hl7v2/protocol/Processor;->stop()V

    .line 176
    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/HL7Server$2;->val$server:Lca/uhn/hl7v2/protocol/impl/HL7Server;

    invoke-static {v1, v0}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->access$1(Lca/uhn/hl7v2/protocol/impl/HL7Server;Lca/uhn/hl7v2/protocol/Processor;)V

    .line 178
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Lca/uhn/hl7v2/protocol/TransportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "p":Lca/uhn/hl7v2/protocol/Processor;
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Lca/uhn/hl7v2/protocol/TransportException;
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/HL7Server;->access$2()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lca/uhn/hl7v2/protocol/TransportException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .end local v0    # "e":Lca/uhn/hl7v2/protocol/TransportException;
    goto :goto_0
.end method
