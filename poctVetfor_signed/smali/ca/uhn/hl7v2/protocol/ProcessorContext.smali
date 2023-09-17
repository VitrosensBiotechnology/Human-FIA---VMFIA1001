.class public interface abstract Lca/uhn/hl7v2/protocol/ProcessorContext;
.super Ljava/lang/Object;
.source "ProcessorContext.java"


# virtual methods
.method public abstract addValidator(Lca/uhn/hl7v2/protocol/AcceptValidator;)V
.end method

.method public abstract getLocallyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;
.end method

.method public abstract getMetadataFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemotelyDrivenTransportLayer()Lca/uhn/hl7v2/protocol/TransportLayer;
.end method

.method public abstract getRouter()Lca/uhn/hl7v2/protocol/ApplicationRouter;
.end method

.method public abstract getSafeStorage()Lca/uhn/hl7v2/protocol/SafeStorage;
.end method

.method public abstract getValidators()[Lca/uhn/hl7v2/protocol/AcceptValidator;
.end method
