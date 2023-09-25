.class public interface abstract Lca/uhn/hl7v2/util/idgenerator/IDGenerator;
.super Ljava/lang/Object;
.source "IDGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;,
        Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;
    }
.end annotation


# virtual methods
.method public abstract getID()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
