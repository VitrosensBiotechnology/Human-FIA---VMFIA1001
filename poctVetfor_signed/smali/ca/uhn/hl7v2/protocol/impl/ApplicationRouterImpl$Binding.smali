.class Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;
.super Ljava/lang/Object;
.source "ApplicationRouterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Binding"
.end annotation


# instance fields
.field public active:Z

.field public application:Lca/uhn/hl7v2/protocol/ReceivingApplication;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field public routingData:Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;ZLca/uhn/hl7v2/protocol/ReceivingApplication;)V
    .locals 0
    .param p1, "theRoutingData"    # Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    .param p2, "isActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;",
            "Z",
            "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)V"
        }
    .end annotation

    .line 394
    .local p3, "theApplication":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->routingData:Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;

    .line 396
    iput-boolean p2, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->active:Z

    .line 397
    iput-object p3, p0, Lca/uhn/hl7v2/protocol/impl/ApplicationRouterImpl$Binding;->application:Lca/uhn/hl7v2/protocol/ReceivingApplication;

    .line 398
    return-void
.end method
