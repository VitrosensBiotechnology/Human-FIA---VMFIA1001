.class Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;
.super Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lca/uhn/hl7v2/model/Segment;",
        ">",
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure<",
        "TS;>;",
        "Lca/uhn/hl7v2/model/Segment;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Segment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    .local p1, "delegate":Lca/uhn/hl7v2/model/Segment;, "TS;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;-><init>(Lca/uhn/hl7v2/model/Structure;Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;)V

    .line 213
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 216
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Segment;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField(II)Lca/uhn/hl7v2/model/Type;
    .locals 6
    .param p1, "number"    # I
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 235
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 236
    .local v0, "types":[Lca/uhn/hl7v2/model/Type;
    array-length v1, v0

    if-lt p2, v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot add repetition with index %d to unmodifiable field %d  - there are currently only %d fields."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 237
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    aget-object v1, v0, p2

    return-object v1
.end method

.method public getField(I)[Lca/uhn/hl7v2/model/Type;
    .locals 6
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 220
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->numFields()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_2

    .line 224
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Segment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 225
    .local v0, "types":[Lca/uhn/hl7v2/model/Type;
    array-length v1, v0

    new-array v1, v1, [Lca/uhn/hl7v2/model/Type;

    .line 226
    .local v1, "unmodifiableTypes":[Lca/uhn/hl7v2/model/Type;
    array-length v2, v0

    if-lez v2, :cond_2

    .line 227
    const/4 v2, 0x0

    .line 227
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 227
    .end local v2    # "i":I
    goto :goto_1

    .line 228
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, v0, v2

    invoke-static {v3}, Lca/uhn/hl7v2/model/Unmodifiable;->access$2(Lca/uhn/hl7v2/model/Type;)Lca/uhn/hl7v2/model/Type;

    move-result-object v3

    aput-object v3, v1, v2

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-object v1

    .line 221
    .end local v0    # "types":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "unmodifiableTypes":[Lca/uhn/hl7v2/model/Type;
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot add field with index %d to unmodifiable segment %s  - there are currently only %d fields."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->numFields()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 221
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLength(I)I
    .locals 1
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 244
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Segment;->getLength(I)I

    move-result v0

    return v0
.end method

.method public getMaxCardinality(I)I
    .locals 1
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 248
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Segment;->getMaxCardinality(I)I

    move-result v0

    return v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .line 252
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Segment;->getNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRequired(I)Z
    .locals 1
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 256
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Segment;->isRequired(I)Z

    move-result v0

    return v0
.end method

.method public numFields()I
    .locals 1

    .line 260
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Segment;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Segment;->numFields()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 264
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableSegment<TS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This segment is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
