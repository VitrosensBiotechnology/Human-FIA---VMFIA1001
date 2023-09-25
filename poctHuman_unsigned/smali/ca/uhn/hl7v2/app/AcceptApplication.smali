.class public Lca/uhn/hl7v2/app/AcceptApplication;
.super Lca/uhn/hl7v2/app/DefaultApplication;
.source "AcceptApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lca/uhn/hl7v2/app/DefaultApplication;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public fillDetails(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "ack"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/app/ApplicationException;
        }
    .end annotation

    .line 23
    return-void
.end method
