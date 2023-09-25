.class public Lca/uhn/hl7v2/util/idgenerator/DelegatingHiLoGenerator;
.super Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;
.source "DelegatingHiLoGenerator.java"


# instance fields
.field private delegate:Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;

    .line 56
    invoke-direct {p0}, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;-><init>()V

    .line 57
    iput-object p1, p0, Lca/uhn/hl7v2/util/idgenerator/DelegatingHiLoGenerator;->delegate:Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;

    .line 58
    return-void
.end method


# virtual methods
.method public getMaxLo()I
    .locals 1

    .line 83
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/DelegatingHiLoGenerator;->delegate:Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;

    invoke-interface {v0}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;->getIncrement()I

    move-result v0

    return v0
.end method

.method protected getNextHiId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/DelegatingHiLoGenerator;->delegate:Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    .line 64
    const-string v1, "Must initialize delegate IDGenerator"

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/DelegatingHiLoGenerator;->delegate:Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;

    invoke-interface {v0}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected resetHiId()V
    .locals 1

    .line 74
    iget-object v0, p0, Lca/uhn/hl7v2/util/idgenerator/DelegatingHiLoGenerator;->delegate:Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;

    invoke-interface {v0}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;->reset()V

    .line 75
    return-void
.end method

.method public setDelegate(Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;

    .line 69
    iput-object p1, p0, Lca/uhn/hl7v2/util/idgenerator/DelegatingHiLoGenerator;->delegate:Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;

    .line 70
    return-void
.end method
