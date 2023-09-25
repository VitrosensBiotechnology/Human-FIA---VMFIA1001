.class public Lca/uhn/hl7v2/conf/classes/abs/FiniteList;
.super Ljava/lang/Object;
.source "FiniteList.java"


# instance fields
.field private maxReps:I

.field private repType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/conf/classes/abs/Repeatable;",
            ">;"
        }
    .end annotation
.end field

.field private reps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lca/uhn/hl7v2/conf/classes/abs/Repeatable;",
            ">;"
        }
    .end annotation
.end field

.field private underlyingObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p2, "underlyingObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/conf/classes/abs/Repeatable;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 56
    .local p1, "repType":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/conf/classes/abs/Repeatable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->repType:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->underlyingObject:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->createRep(I)Lca/uhn/hl7v2/conf/classes/abs/Repeatable;

    move-result-object v0

    .line 61
    .local v0, "firstRep":Lca/uhn/hl7v2/conf/classes/abs/Repeatable;
    invoke-interface {v0}, Lca/uhn/hl7v2/conf/classes/abs/Repeatable;->getMaxReps()S

    move-result v1

    iput v1, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->maxReps:I

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->reps:Ljava/util/ArrayList;

    .line 65
    iget-object v1, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->reps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget v1, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->maxReps:I

    invoke-direct {p0, v1}, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->createNewReps(I)V

    .line 67
    return-void
.end method

.method private createNewReps(I)V
    .locals 2
    .param p1, "rep"    # I

    .line 73
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->reps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 75
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->reps:Ljava/util/ArrayList;

    iget-object v1, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->reps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->createRep(I)Lca/uhn/hl7v2/conf/classes/abs/Repeatable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createRep(I)Lca/uhn/hl7v2/conf/classes/abs/Repeatable;
    .locals 4
    .param p1, "rep"    # I

    .line 82
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->repType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 83
    .local v0, "theCon":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->underlyingObject:Ljava/lang/Object;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/conf/classes/abs/Repeatable;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v1, "thisRep":Lca/uhn/hl7v2/conf/classes/abs/Repeatable;
    return-object v1

    .line 87
    .end local v0    # "theCon":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "thisRep":Lca/uhn/hl7v2/conf/classes/abs/Repeatable;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/conf/classes/exceptions/ConformanceError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error creating underlying repetition. This is a bug. Error is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/classes/exceptions/ConformanceError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lca/uhn/hl7v2/conf/classes/exceptions/ConformanceError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error creating underlying repetition. This is a bug.\nError is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/classes/exceptions/ConformanceError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getRep(I)Lca/uhn/hl7v2/conf/classes/abs/Repeatable;
    .locals 2
    .param p1, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/classes/exceptions/ConfRepException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget v0, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->maxReps:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->maxReps:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    add-int/2addr p1, v1

    .line 103
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->createNewReps(I)V

    .line 105
    iget-object v0, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->reps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/classes/abs/Repeatable;

    return-object v0

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Lca/uhn/hl7v2/conf/classes/exceptions/ConfRepException;

    iget v1, p0, Lca/uhn/hl7v2/conf/classes/abs/FiniteList;->maxReps:I

    invoke-direct {v0, v1, p1}, Lca/uhn/hl7v2/conf/classes/exceptions/ConfRepException;-><init>(II)V

    throw v0
.end method
