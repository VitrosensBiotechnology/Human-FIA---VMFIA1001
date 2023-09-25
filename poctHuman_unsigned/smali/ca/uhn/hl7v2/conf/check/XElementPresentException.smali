.class public Lca/uhn/hl7v2/conf/check/XElementPresentException;
.super Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;
.source "XElementPresentException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
