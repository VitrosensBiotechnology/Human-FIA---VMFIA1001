.class public interface abstract Lca/uhn/hl7v2/conf/store/ProfileStore;
.super Ljava/lang/Object;
.source "ProfileStore.java"


# virtual methods
.method public abstract getProfile(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract persistProfile(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
