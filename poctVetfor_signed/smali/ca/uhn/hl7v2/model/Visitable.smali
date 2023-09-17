.class public interface abstract Lca/uhn/hl7v2/model/Visitable;
.super Ljava/lang/Object;
.source "Visitable.java"


# virtual methods
.method public abstract accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;
.end method
