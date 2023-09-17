.class public Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
.super Lca/uhn/hl7v2/HL7Exception;
.source "EncodingNotSupportedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
