.class public interface abstract Lca/uhn/hl7v2/model/Composite;
.super Ljava/lang/Object;
.source "Composite.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Type;


# virtual methods
.method public abstract getComponent(I)Lca/uhn/hl7v2/model/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation
.end method

.method public abstract getComponents()[Lca/uhn/hl7v2/model/Type;
.end method
