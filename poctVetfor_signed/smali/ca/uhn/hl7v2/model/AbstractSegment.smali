.class public abstract Lca/uhn/hl7v2/model/AbstractSegment;
.super Lca/uhn/hl7v2/model/AbstractStructure;
.source "AbstractSegment.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Segment;


# static fields
.field static final ERROR_MSH_1_OR_2_NOT_SET:Ljava/lang/String; = "Can not invoke parse(String) on a segment if the encoding characters (MSH-1 and MSH-2) are not already correctly set on the message"

.field private static final serialVersionUID:J = -0x5cca9da2143d4c44L


# instance fields
.field private args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field private length:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private maxReps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private required:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Type;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 1
    .param p1, "parent"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 88
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractStructure;-><init>(Lca/uhn/hl7v2/model/Group;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->types:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->required:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->length:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->args:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->maxReps:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->names:Ljava/util/List;

    .line 96
    return-void
.end method

.method private createNewType(I)Lca/uhn/hl7v2/model/Type;
    .locals 7
    .param p1, "field"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 281
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/AbstractSegment;->createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 282
    .local v0, "retVal":Lca/uhn/hl7v2/model/Type;
    if-eqz v0, :cond_0

    .line 283
    return-object v0

    .line 286
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 287
    .local v1, "number":I
    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractSegment;->types:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 291
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    :try_start_0
    invoke-direct {p0, v1}, Lca/uhn/hl7v2/model/AbstractSegment;->getArgs(I)[Ljava/lang/Object;

    move-result-object v3

    .line 292
    .local v3, "args":[Ljava/lang/Object;
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/Class;

    .line 293
    .local v4, "argClasses":[Ljava/lang/Class;
    const/4 v5, 0x0

    .line 293
    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-lt v5, v6, :cond_1

    .line 300
    .end local v5    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lca/uhn/hl7v2/model/Type;

    .line 300
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "argClasses":[Ljava/lang/Class;
    move-object v3, v5

    .line 301
    .local v3, "newType":Lca/uhn/hl7v2/model/Type;
    nop

    .line 312
    nop

    .line 316
    return-object v3

    .line 294
    .local v3, "args":[Ljava/lang/Object;
    .restart local v4    # "argClasses":[Ljava/lang/Class;
    .restart local v5    # "i":I
    :cond_1
    aget-object v6, v3, v5

    instance-of v6, v6, Lca/uhn/hl7v2/model/Message;

    if-eqz v6, :cond_2

    .line 295
    const-class v6, Lca/uhn/hl7v2/model/Message;

    aput-object v6, v4, v5

    .line 296
    goto :goto_1

    .line 297
    :cond_2
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 311
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "argClasses":[Ljava/lang/Class;
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 312
    .local v3, "nme":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t instantiate class "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 312
    invoke-direct {v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 307
    .end local v3    # "nme":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 308
    .local v3, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t instantiate class "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-direct {v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    .end local v3    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 305
    .local v3, "ie":Ljava/lang/InstantiationException;
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t instantiate class "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-direct {v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 301
    .end local v3    # "ie":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v3

    .line 302
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t access class "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-direct {v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private ensureEnoughFields(I)V
    .locals 8
    .param p1, "fieldRequested"    # I

    .line 461
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->numFields()I

    move-result v0

    sub-int v0, p1, v0

    .line 462
    .local v0, "fieldsToAdd":I
    if-gez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 467
    :cond_0
    const/4 v1, 0x0

    .line 467
    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 473
    .end local v1    # "i":I
    goto :goto_1

    .line 468
    .restart local v1    # "i":I
    :cond_1
    :try_start_0
    const-class v3, Lca/uhn/hl7v2/model/Varies;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x10000

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lca/uhn/hl7v2/model/AbstractSegment;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    sget-object v2, Lca/uhn/hl7v2/model/AbstractSegment;->log:Lorg/slf4j/Logger;

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t create additional generic fields to handle request for field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 476
    nop

    .line 474
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_1
    return-void
.end method

.method private getArgs(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "fieldNum"    # I

    .line 323
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->args:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 325
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 326
    .local v1, "result":[Ljava/lang/Object;
    goto :goto_0

    .line 327
    .end local v1    # "result":[Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    aput-object v3, v1, v2

    .line 330
    .restart local v1    # "result":[Ljava/lang/Object;
    :goto_0
    return-object v1
.end method

.method private getFieldAsList(I)Ljava/util/List;
    .locals 3
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/model/Type;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->ensureEnoughFields(I)V

    .line 183
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 184
    :cond_1
    :goto_0
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t retrieve field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v2, " from segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v2, " - there are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fields."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .line 517
    return-void
.end method


# virtual methods
.method public accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z
    .locals 5
    .param p1, "visitor"    # Lca/uhn/hl7v2/model/MessageVisitor;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 108
    invoke-interface {p1, p0, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 110
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-le v1, v2, :cond_0

    .line 110
    .end local v0    # "names":[Ljava/lang/String;
    .end local v1    # "i":I
    goto :goto_1

    .line 111
    .restart local v0    # "names":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Lca/uhn/hl7v2/model/Field;

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/model/AbstractSegment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v3

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/model/AbstractSegment;->getMaxCardinality(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lca/uhn/hl7v2/model/Field;-><init>([Lca/uhn/hl7v2/model/Type;I)V

    .line 112
    .local v2, "f":Lca/uhn/hl7v2/model/Field;
    const/4 v3, -0x1

    invoke-virtual {v2, p2, v1, v3}, Lca/uhn/hl7v2/model/Field;->provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;

    move-result-object v3

    .line 113
    .local v3, "nextLocation":Lca/uhn/hl7v2/Location;
    invoke-virtual {v2, p1, v3}, Lca/uhn/hl7v2/model/Field;->accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 114
    goto :goto_1

    .line 110
    .end local v2    # "f":Lca/uhn/hl7v2/model/Field;
    .end local v3    # "nextLocation":Lca/uhn/hl7v2/Location;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "names":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-interface {p1, p0, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method protected add(Ljava/lang/Class;ZII[Ljava/lang/Object;)V
    .locals 7
    .param p2, "required"    # Z
    .param p3, "maxReps"    # I
    .param p4, "length"    # I
    .param p5, "constructorArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Type;",
            ">;ZII[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 404
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lca/uhn/hl7v2/model/AbstractSegment;->add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method protected add(Ljava/lang/Class;ZII[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p2, "required"    # Z
    .param p3, "maxReps"    # I
    .param p4, "length"    # I
    .param p5, "constructorArgs"    # [Ljava/lang/Object;
    .param p6, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Type;",
            ">;ZII[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 445
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Type;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v0, "arr":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->types:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->required:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->length:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->args:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->maxReps:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->names:Ljava/util/List;

    invoke-interface {v1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public clear()V
    .locals 2

    .line 644
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    return-void

    .line 644
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 645
    .local v1, "next":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 645
    .end local v1    # "next":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    goto :goto_0
.end method

.method protected createNewTypeWithoutReflection(I)Lca/uhn/hl7v2/model/Type;
    .locals 1
    .param p1, "field"    # I

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-static {v1}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v1

    .line 580
    invoke-virtual {v0, p0, v1}, Lca/uhn/hl7v2/parser/Parser;->doEncode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField(II)Lca/uhn/hl7v2/model/Type;
    .locals 4
    .param p1, "number"    # I
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->ensureEnoughFields(I)V

    .line 215
    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 224
    .local v0, "arr":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 225
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t get repetition "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    const-string v3, " from field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - there are currently only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reps."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 231
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->createNewType(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    .line 232
    .local v1, "newType":Lca/uhn/hl7v2/model/Type;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v1    # "newType":Lca/uhn/hl7v2/model/Type;
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/uhn/hl7v2/model/Type;

    return-object v1

    .line 216
    .end local v0    # "arr":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    :cond_3
    :goto_0
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t get field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - there are currently only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reps."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getField(I)[Lca/uhn/hl7v2/model/Type;
    .locals 2
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->getFieldAsList(I)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lca/uhn/hl7v2/model/Type;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lca/uhn/hl7v2/model/Type;

    return-object v1
.end method

.method public getLength(I)I
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 363
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->length:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->length:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t retrieve max length of field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t retrieve max length of field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v2, " - there are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fields."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxCardinality(I)I
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 385
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->length:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->maxReps:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t retrieve max repetitions of field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t retrieve cardinality of field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v2, " - there are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fields."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 533
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "fullName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 535
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 534
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNames()[Ljava/lang/String;
    .locals 2

    .line 549
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->names:Ljava/util/List;

    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getReps(I)I
    .locals 3
    .param p1, "number"    # I

    .line 173
    :try_start_0
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->getFieldAsList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "he":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/AbstractSegment;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected problem obtaining field value.  This is a bug."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getTypedField(II)Lca/uhn/hl7v2/model/Type;
    .locals 3
    .param p1, "number"    # I
    .param p2, "rep"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Type;",
            ">(II)TT;"
        }
    .end annotation

    .line 243
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/model/AbstractSegment;->getField(II)Lca/uhn/hl7v2/model/Type;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .local v0, "retVal":Lca/uhn/hl7v2/model/Type;, "TT;"
    return-object v0

    .line 248
    .end local v0    # "retVal":Lca/uhn/hl7v2/model/Type;, "TT;"
    :catch_0
    move-exception v0

    .line 249
    .local v0, "he":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/AbstractSegment;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected problem obtaining field value.  This is a bug."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 245
    .end local v0    # "he":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "cce":Ljava/lang/ClassCastException;
    sget-object v1, Lca/uhn/hl7v2/model/AbstractSegment;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected problem obtaining field value.  This is a bug."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getTypedField(I[Lca/uhn/hl7v2/model/Type;)[Lca/uhn/hl7v2/model/Type;
    .locals 3
    .param p1, "number"    # I
    .param p2, "array"    # [Lca/uhn/hl7v2/model/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Type;",
            ">(I[TT;)[TT;"
        }
    .end annotation

    .line 157
    :try_start_0
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->getFieldAsList(I)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    move-object v1, v0

    .line 160
    .local v1, "cast":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lca/uhn/hl7v2/model/Type;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 164
    .end local v0    # "retVal":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    .end local v1    # "cast":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_0
    move-exception v0

    .line 165
    .local v0, "he":Lca/uhn/hl7v2/HL7Exception;
    sget-object v1, Lca/uhn/hl7v2/model/AbstractSegment;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected problem obtaining field value.  This is a bug."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 161
    .end local v0    # "he":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "cce":Ljava/lang/ClassCastException;
    sget-object v1, Lca/uhn/hl7v2/model/AbstractSegment;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected problem obtaining field value.  This is a bug."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public insertRepetition(II)Lca/uhn/hl7v2/model/Type;
    .locals 3
    .param p1, "fieldNum"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 626
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 633
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractSegment;->createNewType(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    .line 635
    .local v1, "newType":Lca/uhn/hl7v2/model/Type;
    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 637
    return-object v1

    .line 627
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    .end local v1    # "newType":Lca/uhn/hl7v2/model/Type;
    :cond_1
    :goto_0
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    const-string v2, " does not exist in the segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 143
    const/4 v0, 0x1

    .line 143
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->numFields()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 149
    .end local v0    # "i":I
    const/4 v0, 0x1

    return v0

    .line 144
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/model/AbstractSegment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    .line 145
    .local v1, "types":[Lca/uhn/hl7v2/model/Type;
    const/4 v2, 0x0

    array-length v3, v1

    move v4, v2

    :goto_1
    if-lt v4, v3, :cond_1

    .line 143
    .end local v1    # "types":[Lca/uhn/hl7v2/model/Type;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .restart local v1    # "types":[Lca/uhn/hl7v2/model/Type;
    :cond_1
    aget-object v5, v1, v4

    .line 146
    .local v5, "type":Lca/uhn/hl7v2/model/Type;
    invoke-interface {v5}, Lca/uhn/hl7v2/model/Type;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    return v2

    .line 145
    .end local v5    # "type":Lca/uhn/hl7v2/model/Type;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public isRequired(I)Z
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 341
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->required:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->required:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t retrieve optionality of field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t retrieve optionality of field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v2, " - there are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fields."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public numFields()I
    .locals 1

    .line 524
    iget-object v0, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 562
    if-nez p1, :cond_0

    .line 563
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getInstance(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/parser/EncodingCharacters;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .local v0, "encodingCharacters":Lca/uhn/hl7v2/parser/EncodingCharacters;
    nop

    .line 570
    nop

    .line 572
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->clear()V

    .line 573
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->getMessage()Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lca/uhn/hl7v2/parser/Parser;->parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V

    .line 574
    return-void

    .line 569
    .end local v0    # "encodingCharacters":Lca/uhn/hl7v2/parser/EncodingCharacters;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Can not invoke parse(String) on a segment if the encoding characters (MSH-1 and MSH-2) are not already correctly set on the message"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;
    .locals 2
    .param p1, "location"    # Lca/uhn/hl7v2/Location;
    .param p2, "index"    # I
    .param p3, "repetition"    # I

    .line 121
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/Location;-><init>(Lca/uhn/hl7v2/Location;)V

    .line 122
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/Location;->withSegmentName(Ljava/lang/String;)Lca/uhn/hl7v2/Location;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p3}, Lca/uhn/hl7v2/Location;->withSegmentRepetition(I)Lca/uhn/hl7v2/Location;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method public removeRepetition(II)Lca/uhn/hl7v2/model/Type;
    .locals 6
    .param p1, "fieldNum"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 596
    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractSegment;->names:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 603
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lca/uhn/hl7v2/model/AbstractSegment;->fields:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 604
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 605
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", structure "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has no repetitions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    invoke-direct {v0, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, p2, :cond_2

    .line 609
    new-instance v3, Lca/uhn/hl7v2/HL7Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", structure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must be between 0 and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-direct {v3, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 613
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/model/Type;

    return-object v0

    .line 597
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    :cond_3
    :goto_0
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    const-string v2, " does not exist in the segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
