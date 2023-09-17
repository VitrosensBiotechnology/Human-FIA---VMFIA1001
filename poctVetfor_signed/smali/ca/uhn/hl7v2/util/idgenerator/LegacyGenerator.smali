.class public Lca/uhn/hl7v2/util/idgenerator/LegacyGenerator;
.super Ljava/lang/Object;
.source "LegacyGenerator.java"

# interfaces
.implements Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lca/uhn/hl7v2/util/MessageIDGenerator;->getInstance()Lca/uhn/hl7v2/util/MessageIDGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/util/MessageIDGenerator;->getNewID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncrement()I
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 49
    return-void
.end method
