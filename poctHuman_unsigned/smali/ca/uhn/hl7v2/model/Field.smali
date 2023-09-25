.class public Lca/uhn/hl7v2/model/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Visitable;


# instance fields
.field private maxCardinality:I

.field private reps:[Lca/uhn/hl7v2/model/Type;


# direct methods
.method public constructor <init>([Lca/uhn/hl7v2/model/Type;I)V
    .locals 0
    .param p1, "reps"    # [Lca/uhn/hl7v2/model/Type;
    .param p2, "maxCardinality"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lca/uhn/hl7v2/model/Field;->reps:[Lca/uhn/hl7v2/model/Type;

    .line 45
    iput p2, p0, Lca/uhn/hl7v2/model/Field;->maxCardinality:I

    .line 46
    return-void
.end method


# virtual methods
.method public accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z
    .locals 3
    .param p1, "visitor"    # Lca/uhn/hl7v2/model/MessageVisitor;
    .param p2, "currentLocation"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 49
    invoke-interface {p1, p0, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const/4 v0, 0x0

    .line 50
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lca/uhn/hl7v2/model/Field;->reps:[Lca/uhn/hl7v2/model/Type;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 50
    .end local v0    # "i":I
    goto :goto_1

    .line 51
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/model/Field;->reps:[Lca/uhn/hl7v2/model/Type;

    aget-object v1, v1, v0

    .line 52
    .local v1, "t":Lca/uhn/hl7v2/model/Type;
    invoke-interface {v1, p1, p2}, Lca/uhn/hl7v2/model/Type;->accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    goto :goto_1

    .line 50
    .end local v1    # "t":Lca/uhn/hl7v2/model/Type;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    :cond_2
    :goto_1
    invoke-interface {p1, p0, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Field;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lca/uhn/hl7v2/model/Field;->reps:[Lca/uhn/hl7v2/model/Type;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;
    .locals 1
    .param p1, "parentLocation"    # Lca/uhn/hl7v2/Location;
    .param p2, "index"    # I
    .param p3, "repetition"    # I

    .line 60
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/Location;-><init>(Lca/uhn/hl7v2/Location;)V

    invoke-virtual {v0, p2}, Lca/uhn/hl7v2/Location;->withField(I)Lca/uhn/hl7v2/Location;

    move-result-object v0

    return-object v0
.end method
