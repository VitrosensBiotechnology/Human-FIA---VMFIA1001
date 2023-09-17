.class Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;
.super Lca/uhn/hl7v2/model/ExtraComponents;
.source "Unmodifiable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableExtraComponents"
.end annotation


# instance fields
.field private delegate:Lca/uhn/hl7v2/model/ExtraComponents;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/ExtraComponents;)V
    .locals 1
    .param p1, "delegate"    # Lca/uhn/hl7v2/model/ExtraComponents;

    .line 489
    invoke-virtual {p1}, Lca/uhn/hl7v2/model/ExtraComponents;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/model/ExtraComponents;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 490
    iput-object p1, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;->delegate:Lca/uhn/hl7v2/model/ExtraComponents;

    .line 491
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This ExtraComponents is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComponent(I)Lca/uhn/hl7v2/model/Variable;
    .locals 5
    .param p1, "comp"    # I

    .line 515
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;->numComponents()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 517
    const-string v1, "Extra Component with index %d is not available and cannot be added to unmodifiable type"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 516
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;->delegate:Lca/uhn/hl7v2/model/ExtraComponents;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/model/ExtraComponents;->getComponent(I)Lca/uhn/hl7v2/model/Variable;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/model/Unmodifiable;->access$2(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Variable;

    return-object v0
.end method

.method public getMessage()Lca/uhn/hl7v2/model/Message;
    .locals 1

    .line 505
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;->delegate:Lca/uhn/hl7v2/model/ExtraComponents;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/ExtraComponents;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/model/Unmodifiable;->unmodifiableMessage(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;->delegate:Lca/uhn/hl7v2/model/ExtraComponents;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/ExtraComponents;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public numComponents()I
    .locals 1

    .line 495
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;->delegate:Lca/uhn/hl7v2/model/ExtraComponents;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/ExtraComponents;->numComponents()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableExtraComponents;->delegate:Lca/uhn/hl7v2/model/ExtraComponents;

    invoke-virtual {v0}, Lca/uhn/hl7v2/model/ExtraComponents;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
