.class public Lca/uhn/hl7v2/protocol/ApplicationWrapper;
.super Ljava/lang/Object;
.source "ApplicationWrapper.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/ReceivingApplication;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private final application:Lca/uhn/hl7v2/app/Application;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/app/Application;)V
    .locals 0
    .param p1, "theApplication"    # Lca/uhn/hl7v2/app/Application;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/ApplicationWrapper;->application:Lca/uhn/hl7v2/app/Application;

    .line 25
    return-void
.end method


# virtual methods
.method public canProcess(Lca/uhn/hl7v2/model/Message;)Z
    .locals 1
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;

    .line 42
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/ApplicationWrapper;->application:Lca/uhn/hl7v2/app/Application;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/app/Application;->canProcess(Lca/uhn/hl7v2/model/Message;)Z

    move-result v0

    return v0
.end method

.method public processMessage(Lca/uhn/hl7v2/model/Message;Ljava/util/Map;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Message;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lca/uhn/hl7v2/model/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/protocol/ReceivingApplicationException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 32
    .local p2, "theMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/ApplicationWrapper;->application:Lca/uhn/hl7v2/app/Application;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/app/Application;->processMessage(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/app/ApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lca/uhn/hl7v2/app/ApplicationException;
    new-instance v1, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
