.class public interface abstract Lca/uhn/hl7v2/model/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lca/uhn/hl7v2/model/Visitable;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract encode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;
.end method

.method public abstract getMessage()Lca/uhn/hl7v2/model/Message;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract parse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
