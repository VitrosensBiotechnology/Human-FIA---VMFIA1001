.class public Lca/uhn/hl7v2/validation/ValidationException;
.super Lca/uhn/hl7v2/AbstractHL7Exception;
.source "ValidationException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 65
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/Severity;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lca/uhn/hl7v2/Severity;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "severity"    # Lca/uhn/hl7v2/Severity;

    .line 69
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/validation/ValidationException;->setSeverity(Lca/uhn/hl7v2/Severity;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 47
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    invoke-direct {p0, p1, p2, v0}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lca/uhn/hl7v2/Severity;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lca/uhn/hl7v2/Severity;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "severity"    # Lca/uhn/hl7v2/Severity;

    .line 51
    invoke-direct {p0, p1, p2}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p0, p3}, Lca/uhn/hl7v2/validation/ValidationException;->setSeverity(Lca/uhn/hl7v2/Severity;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 56
    sget-object v0, Lca/uhn/hl7v2/Severity;->ERROR:Lca/uhn/hl7v2/Severity;

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/Throwable;Lca/uhn/hl7v2/Severity;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lca/uhn/hl7v2/Severity;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "severity"    # Lca/uhn/hl7v2/Severity;

    .line 60
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/AbstractHL7Exception;-><init>(Ljava/lang/Throwable;)V

    .line 61
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/validation/ValidationException;->setSeverity(Lca/uhn/hl7v2/Severity;)V

    .line 62
    return-void
.end method

.method public static fromHL7Exception(Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/validation/ValidationException;
    .locals 2
    .param p0, "e"    # Lca/uhn/hl7v2/HL7Exception;

    .line 74
    new-instance v0, Lca/uhn/hl7v2/validation/ValidationException;

    invoke-virtual {p0}, Lca/uhn/hl7v2/HL7Exception;->getMessageWithoutLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .local v0, "ve":Lca/uhn/hl7v2/validation/ValidationException;
    invoke-virtual {p0}, Lca/uhn/hl7v2/HL7Exception;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/ValidationException;->setErrorCode(I)V

    .line 76
    invoke-virtual {p0}, Lca/uhn/hl7v2/HL7Exception;->getLocation()Lca/uhn/hl7v2/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/ValidationException;->setLocation(Lca/uhn/hl7v2/Location;)V

    .line 77
    invoke-virtual {p0}, Lca/uhn/hl7v2/HL7Exception;->getSeverity()Lca/uhn/hl7v2/Severity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/validation/ValidationException;->setSeverity(Lca/uhn/hl7v2/Severity;)V

    .line 78
    return-object v0
.end method
