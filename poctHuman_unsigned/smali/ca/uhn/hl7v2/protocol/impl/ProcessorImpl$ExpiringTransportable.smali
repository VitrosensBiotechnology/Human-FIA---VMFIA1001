.class Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;
.super Ljava/lang/Object;
.source "ProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpiringTransportable"
.end annotation


# instance fields
.field public expiryTime:J

.field final synthetic this$0:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;

.field public transportable:Lca/uhn/hl7v2/protocol/Transportable;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;Lca/uhn/hl7v2/protocol/Transportable;J)V
    .locals 0
    .param p2, "theTransportable"    # Lca/uhn/hl7v2/protocol/Transportable;
    .param p3, "theExpiryTime"    # J

    .line 486
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;->this$0:Lca/uhn/hl7v2/protocol/impl/ProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;->transportable:Lca/uhn/hl7v2/protocol/Transportable;

    .line 488
    iput-wide p3, p0, Lca/uhn/hl7v2/protocol/impl/ProcessorImpl$ExpiringTransportable;->expiryTime:J

    .line 489
    return-void
.end method
