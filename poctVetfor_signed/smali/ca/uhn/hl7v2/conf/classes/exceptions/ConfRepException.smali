.class public Lca/uhn/hl7v2/conf/classes/exceptions/ConfRepException;
.super Lca/uhn/hl7v2/conf/classes/exceptions/ConformanceException;
.source "ConfRepException.java"


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "maxReps"    # I
    .param p2, "desiredRep"    # I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal repetition requested. Note that repetition indexes start at 1. Desired repetition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Maximum allowable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/conf/classes/exceptions/ConformanceException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
