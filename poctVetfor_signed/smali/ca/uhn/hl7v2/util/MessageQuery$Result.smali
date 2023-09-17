.class public interface abstract Lca/uhn/hl7v2/util/MessageQuery$Result;
.super Ljava/lang/Object;
.source "MessageQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/util/MessageQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Result"
.end annotation


# virtual methods
.method public abstract get(I)Ljava/lang/String;
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNamedFields()[Ljava/lang/String;
.end method

.method public abstract next()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method
