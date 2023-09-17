.class Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$1;
.super Ljava/lang/Object;
.source "ProcessorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->sendAppResponse(Lca/uhn/hl7v2/protocol/Transportable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;

.field private final synthetic val$processor:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;

.field private final synthetic val$theResponse:Lca/uhn/hl7v2/protocol/Transportable;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;Lca/uhn/hl7v2/protocol/Transportable;Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$1;->this$0:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;

    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$1;->val$theResponse:Lca/uhn/hl7v2/protocol/Transportable;

    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$1;->val$processor:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 360
    :try_start_0
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->access$0()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Sending response: {}"

    iget-object v2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$1;->val$theResponse:Lca/uhn/hl7v2/protocol/Transportable;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$1;->val$processor:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$1;->val$theResponse:Lca/uhn/hl7v2/protocol/Transportable;

    const/4 v2, 0x2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3, v4}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->send(Lca/uhn/hl7v2/protocol/Transportable;IJ)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_0

    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {}, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;->access$0()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Error trying to send response from Application"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method
