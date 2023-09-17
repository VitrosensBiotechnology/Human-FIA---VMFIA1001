.class public Lca/uhn/hl7v2/validation/builder/support/OnlyAllowableSegmentsInSuperstructureRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;
.source "OnlyAllowableSegmentsInSuperstructureRule.java"


# static fields
.field public static final ONLY_ALLOWABLE_SEGMENTS:Lca/uhn/hl7v2/validation/MessageRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/OnlyAllowableSegmentsInSuperstructureRule;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/builder/support/OnlyAllowableSegmentsInSuperstructureRule;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/validation/builder/support/OnlyAllowableSegmentsInSuperstructureRule;->ONLY_ALLOWABLE_SEGMENTS:Lca/uhn/hl7v2/validation/MessageRule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;-><init>()V

    return-void
.end method

.method private checkStructure(Lca/uhn/hl7v2/model/SuperStructure;Ljava/util/List;)V
    .locals 12
    .param p1, "theMsg"    # Lca/uhn/hl7v2/model/SuperStructure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/SuperStructure;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/ValidationException;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p2, "theExceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    invoke-interface {p1}, Lca/uhn/hl7v2/model/SuperStructure;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "messageStructure":Ljava/lang/String;
    invoke-interface {p1}, Lca/uhn/hl7v2/model/SuperStructure;->getNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_0

    .line 86
    return-void

    .line 65
    :cond_0
    aget-object v5, v1, v4

    .line 68
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, v5}, Lca/uhn/hl7v2/model/SuperStructure;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_1
    if-lt v8, v7, :cond_1

    .line 80
    goto :goto_2

    .line 68
    :cond_1
    aget-object v9, v6, v8

    .line 70
    .local v9, "rep":Lca/uhn/hl7v2/model/Structure;
    invoke-interface {v9}, Lca/uhn/hl7v2/model/Structure;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 71
    invoke-interface {p1, v5}, Lca/uhn/hl7v2/model/SuperStructure;->getStructuresWhichChildAppliesTo(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 72
    .local v6, "structuresWhichChildAppliesTo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 73
    invoke-interface {p1}, Lca/uhn/hl7v2/model/SuperStructure;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "msgSimpleName":Ljava/lang/String;
    new-instance v8, Lca/uhn/hl7v2/validation/ValidationException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Message (superstructure "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " must not have content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v7    # "msgSimpleName":Ljava/lang/String;
    nop

    .line 65
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "structuresWhichChildAppliesTo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "rep":Lca/uhn/hl7v2/model/Structure;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    .restart local v5    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t get rep of structure "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". This is probably a HAPI bug"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 2
    .param p1, "msg"    # Lca/uhn/hl7v2/model/Message;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "exceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    instance-of v1, p1, Lca/uhn/hl7v2/model/SuperStructure;

    if-eqz v1, :cond_0

    .line 55
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/model/SuperStructure;

    invoke-direct {p0, v1, v0}, Lca/uhn/hl7v2/validation/builder/support/OnlyAllowableSegmentsInSuperstructureRule;->checkStructure(Lca/uhn/hl7v2/model/SuperStructure;Ljava/util/List;)V

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/validation/ValidationException;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lca/uhn/hl7v2/validation/ValidationException;

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/support/OnlyAllowableSegmentsInSuperstructureRule;->apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method
