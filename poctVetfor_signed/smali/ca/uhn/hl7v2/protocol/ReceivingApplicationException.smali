.class public Lca/uhn/hl7v2/protocol/ReceivingApplicationException;
.super Ljava/lang/Exception;
.source "ReceivingApplicationException.java"


# instance fields
.field private incomingMessage:Ljava/lang/String;

.field private incomingMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private outgoingMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "incomingMessage"    # Ljava/lang/String;
    .param p3, "outgoingMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p4, "incomingMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 75
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;->incomingMessage:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;->outgoingMessage:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;->incomingMetadata:Ljava/util/Map;

    .line 78
    return-void
.end method


# virtual methods
.method public getIncomingMessage()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;->incomingMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomingMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;->incomingMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getOutgoingMessage()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/ReceivingApplicationException;->outgoingMessage:Ljava/lang/String;

    return-object v0
.end method
