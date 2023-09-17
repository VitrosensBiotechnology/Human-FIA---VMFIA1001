.class public abstract Lca/uhn/hl7v2/model/AbstractComposite;
.super Lca/uhn/hl7v2/model/AbstractType;
.source "AbstractComposite.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Composite;


# static fields
.field private static final serialVersionUID:J = -0x24dfed5c29d4eab3L


# instance fields
.field protected log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 1
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 43
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractType;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/model/AbstractComposite;->log:Lorg/slf4j/Logger;

    .line 45
    return-void
.end method


# virtual methods
.method public accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z
    .locals 6
    .param p1, "visitor"    # Lca/uhn/hl7v2/model/MessageVisitor;
    .param p2, "location"    # Lca/uhn/hl7v2/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 74
    invoke-interface {p1, p0, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->start(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractComposite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    .line 76
    .local v0, "types":[Lca/uhn/hl7v2/model/Type;
    const/4 v1, 0x0

    .line 76
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 76
    .end local v1    # "i":I
    goto :goto_1

    .line 77
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/model/AbstractComposite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    .line 78
    .local v2, "t":Lca/uhn/hl7v2/model/Type;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2}, Lca/uhn/hl7v2/Location;->getFieldRepetition()I

    move-result v4

    invoke-interface {v2, p2, v3, v4}, Lca/uhn/hl7v2/model/Type;->provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;

    move-result-object v3

    .line 79
    .local v3, "nextLocation":Lca/uhn/hl7v2/Location;
    invoke-interface {v2, p1, v3}, Lca/uhn/hl7v2/model/Type;->accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 81
    .end local v1    # "i":I
    .end local v2    # "t":Lca/uhn/hl7v2/model/Type;
    .end local v3    # "nextLocation":Lca/uhn/hl7v2/Location;
    :goto_1
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractComposite;->getExtraComponents()Lca/uhn/hl7v2/model/ExtraComponents;

    move-result-object v2

    .line 82
    .local v2, "ec":Lca/uhn/hl7v2/model/ExtraComponents;
    const/4 v1, 0x0

    .line 82
    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v2}, Lca/uhn/hl7v2/model/ExtraComponents;->numComponents()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 82
    .end local v0    # "types":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "i":I
    .end local v2    # "ec":Lca/uhn/hl7v2/model/ExtraComponents;
    goto :goto_3

    .line 83
    .restart local v0    # "types":[Lca/uhn/hl7v2/model/Type;
    .restart local v1    # "i":I
    .restart local v2    # "ec":Lca/uhn/hl7v2/model/ExtraComponents;
    :cond_1
    invoke-virtual {v2, v1}, Lca/uhn/hl7v2/model/ExtraComponents;->getComponent(I)Lca/uhn/hl7v2/model/Variable;

    move-result-object v3

    .line 84
    .local v3, "v":Lca/uhn/hl7v2/model/Variable;
    array-length v4, v0

    add-int/2addr v4, v1

    const/4 v5, -0x1

    invoke-interface {v3, p2, v4, v5}, Lca/uhn/hl7v2/model/Variable;->provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;

    move-result-object v4

    .line 85
    .local v4, "nextLocation":Lca/uhn/hl7v2/Location;
    invoke-interface {v3, p1, v4}, Lca/uhn/hl7v2/model/Variable;->accept(Lca/uhn/hl7v2/model/MessageVisitor;Lca/uhn/hl7v2/Location;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 85
    .end local v0    # "types":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "i":I
    .end local v2    # "ec":Lca/uhn/hl7v2/model/ExtraComponents;
    goto :goto_3

    .line 82
    .end local v3    # "v":Lca/uhn/hl7v2/model/Variable;
    .end local v4    # "nextLocation":Lca/uhn/hl7v2/Location;
    .restart local v0    # "types":[Lca/uhn/hl7v2/model/Type;
    .restart local v1    # "i":I
    .restart local v2    # "ec":Lca/uhn/hl7v2/model/ExtraComponents;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    .end local v2    # "ec":Lca/uhn/hl7v2/model/ExtraComponents;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "types":[Lca/uhn/hl7v2/model/Type;
    .end local v1    # "i":I
    :cond_4
    :goto_3
    invoke-interface {p1, p0, p2}, Lca/uhn/hl7v2/model/MessageVisitor;->end(Lca/uhn/hl7v2/model/Composite;Lca/uhn/hl7v2/Location;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    .line 49
    invoke-super {p0}, Lca/uhn/hl7v2/model/AbstractType;->clear()V

    .line 50
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractComposite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    aget-object v3, v0, v1

    .line 51
    .local v3, "component":Lca/uhn/hl7v2/model/Type;
    invoke-interface {v3}, Lca/uhn/hl7v2/model/Type;->clear()V

    .line 50
    .end local v3    # "component":Lca/uhn/hl7v2/model/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getTyped(ILjava/lang/Class;)Lca/uhn/hl7v2/model/Type;
    .locals 3
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Type;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 57
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/model/AbstractComposite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v0, "ret":Lca/uhn/hl7v2/model/Type;, "TT;"
    return-object v0

    .line 59
    .end local v0    # "ret":Lca/uhn/hl7v2/model/Type;, "TT;"
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    iget-object v1, p0, Lca/uhn/hl7v2/model/AbstractComposite;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected problem accessing known data type component - this is a bug."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isEmpty()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lca/uhn/hl7v2/model/AbstractComposite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    .line 70
    invoke-super {p0}, Lca/uhn/hl7v2/model/AbstractType;->isEmpty()Z

    move-result v0

    return v0

    .line 67
    :cond_0
    aget-object v4, v0, v3

    .line 68
    .local v4, "type":Lca/uhn/hl7v2/model/Type;
    invoke-interface {v4}, Lca/uhn/hl7v2/model/Type;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    return v1

    .line 67
    .end local v4    # "type":Lca/uhn/hl7v2/model/Type;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;
    .locals 2
    .param p1, "location"    # Lca/uhn/hl7v2/Location;
    .param p2, "index"    # I
    .param p3, "repetition"    # I

    .line 93
    invoke-super {p0, p1, p2, p3}, Lca/uhn/hl7v2/model/AbstractType;->provideLocation(Lca/uhn/hl7v2/Location;II)Lca/uhn/hl7v2/Location;

    move-result-object v0

    invoke-virtual {p1}, Lca/uhn/hl7v2/Location;->isComponentLevel()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/Location;->atComponentLevel(Z)Lca/uhn/hl7v2/Location;

    move-result-object v0

    return-object v0
.end method
