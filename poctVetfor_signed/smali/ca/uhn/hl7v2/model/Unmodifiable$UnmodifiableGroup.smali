.class Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;
.super Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;
.source "Unmodifiable.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Group;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/Unmodifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lca/uhn/hl7v2/model/Group;",
        ">",
        "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure<",
        "TS;>;",
        "Lca/uhn/hl7v2/model/Group;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 270
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    .local p1, "delegate":Lca/uhn/hl7v2/model/Group;, "TS;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;-><init>(Lca/uhn/hl7v2/model/Structure;Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableStructure;)V

    .line 271
    return-void
.end method


# virtual methods
.method public addNonstandardSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 326
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This group is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNonstandardSegment(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "theIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 330
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This group is unmodifiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lca/uhn/hl7v2/model/Structure;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 285
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;->get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)Lca/uhn/hl7v2/model/Structure;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 298
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 274
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v0

    .line 275
    .local v0, "structures":[Lca/uhn/hl7v2/model/Structure;
    array-length v1, v0

    new-array v1, v1, [Lca/uhn/hl7v2/model/Structure;

    .line 276
    .local v1, "unmodifiableStructures":[Lca/uhn/hl7v2/model/Structure;
    array-length v2, v0

    if-lez v2, :cond_1

    .line 277
    const/4 v2, 0x0

    .line 277
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 277
    .end local v2    # "i":I
    goto :goto_1

    .line 278
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, v0, v2

    invoke-static {v3}, Lca/uhn/hl7v2/model/Unmodifiable;->access$1(Lca/uhn/hl7v2/model/Structure;)Lca/uhn/hl7v2/model/Structure;

    move-result-object v3

    aput-object v3, v1, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v1
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Structure;",
            ">;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Group;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .line 318
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChoiceElement(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 310
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Group;->isChoiceElement(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 314
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Group;->isGroup(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRepeating(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 306
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Group;->isRepeating(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRequired(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 302
    .local p0, "this":Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;, "Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup<TS;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/Unmodifiable$UnmodifiableGroup;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Group;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Group;->isRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
