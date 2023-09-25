.class public interface abstract Lca/uhn/hl7v2/protocol/SafeStorage;
.super Ljava/lang/Object;
.source "SafeStorage.java"


# virtual methods
.method public abstract discard(Lca/uhn/hl7v2/protocol/Transportable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract restore()[Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract store(Lca/uhn/hl7v2/protocol/Transportable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
