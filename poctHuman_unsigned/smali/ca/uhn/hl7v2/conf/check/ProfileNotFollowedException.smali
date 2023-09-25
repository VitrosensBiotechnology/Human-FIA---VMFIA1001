.class public Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;
.super Lca/uhn/hl7v2/HL7Exception;
.source "ProfileNotFollowedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
