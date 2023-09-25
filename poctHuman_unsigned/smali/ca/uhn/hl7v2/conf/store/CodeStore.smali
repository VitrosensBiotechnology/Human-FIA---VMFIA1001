.class public interface abstract Lca/uhn/hl7v2/conf/store/CodeStore;
.super Ljava/lang/Object;
.source "CodeStore.java"


# virtual methods
.method public abstract getValidCodes(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation
.end method

.method public abstract isValidCode(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract knowsCodes(Ljava/lang/String;)Z
.end method
