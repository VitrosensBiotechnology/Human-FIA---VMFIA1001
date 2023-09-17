.class public Lca/uhn/hl7v2/app/TimeoutException;
.super Lca/uhn/hl7v2/HL7Exception;
.source "TimeoutException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
