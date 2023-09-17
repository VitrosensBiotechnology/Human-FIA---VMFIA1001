.class public Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;
.super Ljava/lang/Object;
.source "AcceptAcknowledger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcceptACK"
.end annotation


# instance fields
.field private myAck:Lca/uhn/hl7v2/protocol/Transportable;

.field private myIsAcceptable:Z


# direct methods
.method public constructor <init>(ZLca/uhn/hl7v2/protocol/Transportable;)V
    .locals 0
    .param p1, "isAcceptable"    # Z
    .param p2, "theAck"    # Lca/uhn/hl7v2/protocol/Transportable;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean p1, p0, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;->myIsAcceptable:Z

    .line 107
    iput-object p2, p0, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;->myAck:Lca/uhn/hl7v2/protocol/Transportable;

    .line 108
    return-void
.end method


# virtual methods
.method public getMessage()Lca/uhn/hl7v2/protocol/Transportable;
    .locals 1

    .line 115
    iget-object v0, p0, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;->myAck:Lca/uhn/hl7v2/protocol/Transportable;

    return-object v0
.end method

.method public isAcceptable()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lca/uhn/hl7v2/protocol/impl/AcceptAcknowledger$AcceptACK;->myIsAcceptable:Z

    return v0
.end method
