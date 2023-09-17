.class public Lca/uhn/hl7v2/util/DeepCopy;
.super Ljava/lang/Object;
.source "DeepCopy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/model/Segment;)V
    .locals 6
    .param p0, "from"    # Lca/uhn/hl7v2/model/Segment;
    .param p1, "to"    # Lca/uhn/hl7v2/model/Segment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Lca/uhn/hl7v2/model/Segment;->numFields()I

    move-result v0

    .line 51
    .local v0, "n":I
    const/4 v1, 0x1

    .line 51
    .local v1, "i":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 57
    .end local v1    # "i":I
    return-void

    .line 52
    .restart local v1    # "i":I
    :cond_0
    invoke-interface {p0, v1}, Lca/uhn/hl7v2/model/Segment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    .line 53
    .local v2, "reps":[Lca/uhn/hl7v2/model/Type;
    const/4 v3, 0x0

    .line 53
    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_1

    .line 51
    .end local v2    # "reps":[Lca/uhn/hl7v2/model/Type;
    .end local v3    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .restart local v2    # "reps":[Lca/uhn/hl7v2/model/Type;
    .restart local v3    # "j":I
    :cond_1
    aget-object v4, v2, v3

    invoke-interface {p1, v1, v3}, Lca/uhn/hl7v2/model/Segment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v5

    invoke-static {v4, v5}, Lca/uhn/hl7v2/util/DeepCopy;->copy(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/model/Type;)V

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static copy(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/model/Type;)V
    .locals 4
    .param p0, "from"    # Lca/uhn/hl7v2/model/Type;
    .param p1, "to"    # Lca/uhn/hl7v2/model/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/model/DataTypeException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x1

    .line 29
    .local v0, "i":I
    :goto_0
    invoke-static {p0}, Lca/uhn/hl7v2/util/Terser;->numComponents(Lca/uhn/hl7v2/model/Type;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 35
    .end local v0    # "i":I
    return-void

    .line 30
    .restart local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    .line 30
    .local v1, "j":I
    :goto_1
    invoke-static {p0, v0}, Lca/uhn/hl7v2/util/Terser;->numSubComponents(Lca/uhn/hl7v2/model/Type;I)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 29
    .end local v1    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .restart local v1    # "j":I
    :cond_1
    invoke-static {p0, v0, v1}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v2

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "val":Ljava/lang/String;
    invoke-static {p1, v0, v1}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v3

    invoke-interface {v3, v2}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V

    .line 30
    .end local v2    # "val":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
