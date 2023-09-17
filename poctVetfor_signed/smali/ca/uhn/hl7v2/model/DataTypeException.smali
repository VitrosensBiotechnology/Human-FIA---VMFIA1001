.class public Lca/uhn/hl7v2/model/DataTypeException;
.super Lca/uhn/hl7v2/HL7Exception;
.source "DataTypeException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCondition"    # I

    .line 63
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCondition"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Lca/uhn/hl7v2/ErrorCode;

    .line 67
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Lca/uhn/hl7v2/ErrorCode;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 71
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 75
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method
