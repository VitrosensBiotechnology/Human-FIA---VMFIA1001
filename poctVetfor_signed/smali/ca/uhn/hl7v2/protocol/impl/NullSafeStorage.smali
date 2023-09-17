.class public Lca/uhn/hl7v2/protocol/impl/NullSafeStorage;
.super Ljava/lang/Object;
.source "NullSafeStorage.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/SafeStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public discard(Lca/uhn/hl7v2/protocol/Transportable;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public restore()[Lca/uhn/hl7v2/protocol/Transportable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lca/uhn/hl7v2/protocol/Transportable;

    return-object v0
.end method

.method public store(Lca/uhn/hl7v2/protocol/Transportable;)V
    .locals 0
    .param p1, "theMessage"    # Lca/uhn/hl7v2/protocol/Transportable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 24
    return-void
.end method
