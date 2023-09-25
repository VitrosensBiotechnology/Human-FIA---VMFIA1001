.class public interface abstract Lca/uhn/hl7v2/model/Primitive;
.super Ljava/lang/Object;
.source "Primitive.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Type;


# virtual methods
.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract setValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation
.end method
