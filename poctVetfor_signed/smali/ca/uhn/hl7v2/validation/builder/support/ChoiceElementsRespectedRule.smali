.class public Lca/uhn/hl7v2/validation/builder/support/ChoiceElementsRespectedRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;
.source "ChoiceElementsRespectedRule.java"


# static fields
.field public static final CHOICE_ELEMENTS_RESPECTED:Lca/uhn/hl7v2/validation/MessageRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lca/uhn/hl7v2/validation/builder/support/ChoiceElementsRespectedRule;

    invoke-direct {v0}, Lca/uhn/hl7v2/validation/builder/support/ChoiceElementsRespectedRule;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/validation/builder/support/ChoiceElementsRespectedRule;->CHOICE_ELEMENTS_RESPECTED:Lca/uhn/hl7v2/validation/MessageRule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;-><init>()V

    return-void
.end method

.method private apply(Lca/uhn/hl7v2/model/Group;Ljava/util/List;)V
    .locals 12
    .param p1, "theStructure"    # Lca/uhn/hl7v2/model/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Group;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/validation/ValidationException;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p2, "theExceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "choicesWithContent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    move-object v4, v0

    move v0, v2

    .line 60
    .end local v0    # "choicesWithContent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "choicesWithContent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-lt v0, v3, :cond_1

    .line 81
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 82
    new-instance v0, Lca/uhn/hl7v2/validation/ValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Structure \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Group;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' must have content only in one of the following choices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void

    .line 60
    :cond_1
    aget-object v5, v1, v0

    .line 62
    .local v5, "nextName":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, v5}, Lca/uhn/hl7v2/model/Group;->isChoiceElement(Ljava/lang/String;)Z

    move-result v6

    .line 63
    .local v6, "nextIsChoiceElement":Z
    invoke-interface {p1, v5}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v7

    array-length v8, v7
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v4

    move v4, v2

    .line 63
    .end local v4    # "choicesWithContent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v9, "choicesWithContent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    if-lt v4, v8, :cond_2

    .line 76
    .end local v6    # "nextIsChoiceElement":Z
    nop

    .line 60
    .end local v5    # "nextName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object v4, v9

    goto :goto_0

    .line 63
    .restart local v5    # "nextName":Ljava/lang/String;
    .restart local v6    # "nextIsChoiceElement":Z
    :cond_2
    :try_start_1
    aget-object v10, v7, v4

    .line 65
    .local v10, "nextStruct":Lca/uhn/hl7v2/model/Structure;
    if-eqz v6, :cond_4

    invoke-interface {v10}, Lca/uhn/hl7v2/model/Structure;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 66
    if-nez v9, :cond_3

    .line 67
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    move-object v9, v11

    .line 69
    :cond_3
    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_4
    instance-of v11, v10, Lca/uhn/hl7v2/model/Group;

    if-eqz v11, :cond_5

    .line 73
    move-object v11, v10

    check-cast v11, Lca/uhn/hl7v2/model/Group;

    invoke-direct {p0, v11, p2}, Lca/uhn/hl7v2/validation/builder/support/ChoiceElementsRespectedRule;->apply(Lca/uhn/hl7v2/model/Group;Ljava/util/List;)V
    :try_end_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .end local v10    # "nextStruct":Lca/uhn/hl7v2/model/Structure;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 76
    .end local v6    # "nextIsChoiceElement":Z
    :catch_0
    move-exception v0

    goto :goto_2

    .line 76
    .end local v9    # "choicesWithContent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "choicesWithContent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move-object v9, v4

    .line 77
    .end local v4    # "choicesWithContent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    .restart local v9    # "choicesWithContent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in structure. This is probably a HAPI bug."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 2
    .param p1, "theValue"    # Lca/uhn/hl7v2/model/Message;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "exceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/validation/builder/support/ChoiceElementsRespectedRule;->apply(Lca/uhn/hl7v2/model/Group;Ljava/util/List;)V

    .line 54
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

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/builder/support/ChoiceElementsRespectedRule;->apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method
