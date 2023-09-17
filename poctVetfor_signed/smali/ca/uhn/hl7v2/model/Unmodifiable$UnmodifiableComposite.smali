.class Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableComposite;
.super Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Composite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableComposite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType<",
        "Lca/uhn/hl7v2/model/Composite;",
        ">;",
        "Lca/uhn/hl7v2/model/Composite;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Composite;)V
    .locals 0
    .param p1, "delegate"    # Lca/uhn/hl7v2/model/Composite;

    .line 447
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableType;-><init>(Lca/uhn/hl7v2/model/Type;)V

    .line 448
    return-void
.end method


# virtual methods
.method public getComponent(I)Lca/uhn/hl7v2/model/Type;
    .locals 2
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableComposite;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Composite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 463
    .local v0, "type":Lca/uhn/hl7v2/model/Type;
    invoke-static {v0}, Lca/uhn/hl7v2/model/Unmodifiable;->access$2(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    return-object v1
.end method

.method public getComponents()[Lca/uhn/hl7v2/model/Type;
    .locals 4

    .line 451
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableComposite;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Composite;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 452
    .local v0, "types":[Lca/uhn/hl7v2/model/Type;
    array-length v1, v0

    new-array v1, v1, [Lca/uhn/hl7v2/model/Type;

    .line 453
    .local v1, "unmodifiableTypes":[Lca/uhn/hl7v2/model/Type;
    array-length v2, v0

    if-lez v2, :cond_1

    .line 454
    const/4 v2, 0x0

    .line 454
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 454
    .end local v2    # "i":I
    goto :goto_1

    .line 455
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, v0, v2

    invoke-static {v3}, Lca/uhn/hl7v2/model/Unmodifiable;->access$2(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;

    move-result-object v3

    aput-object v3, v1, v2

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v1
.end method
