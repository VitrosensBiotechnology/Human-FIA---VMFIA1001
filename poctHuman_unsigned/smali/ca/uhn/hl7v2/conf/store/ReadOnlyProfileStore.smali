.class public abstract Lca/uhn/hl7v2/conf/store/ReadOnlyProfileStore;
.super Ljava/lang/Object;
.source "ReadOnlyProfileStore.java"

# interfaces
.implements Lca/uhn/hl7v2/conf/store/ProfileStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public persistProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t persist profile -- this profile store is read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
