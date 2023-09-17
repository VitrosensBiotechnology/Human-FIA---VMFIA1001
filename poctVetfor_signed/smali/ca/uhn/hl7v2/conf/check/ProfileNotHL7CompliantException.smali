.class public Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;
.super Lca/uhn/hl7v2/HL7Exception;
.source "ProfileNotHL7CompliantException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 24
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method
